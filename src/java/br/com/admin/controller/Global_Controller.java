package br.com.admin.controller;

import br.com.admin.dao.CadastroDAO;
import br.com.admin.dominio.Municipios;
import br.com.admin.dominio.Registros;
import br.com.admin.dominio.Registros_contato;
import br.com.admin.dominio.Unidades_federacao;
import com.google.gson.Gson;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import jdk.nashorn.internal.ir.debug.JSONWriter;
import jdk.nashorn.internal.parser.JSONParser;
import netscape.javascript.JSObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class Global_Controller {

   @RequestMapping({"/home", "/"})
    public String iniciando() {

        return "home";

    }

    @RequestMapping("/registros")
    public String registro(ModelMap map) {

        //ModelAndView modelAndView = new ModelAndView("registros");
        //carregar os registros cadastrados
        try {

            map.addAttribute("registros", new CadastroDAO().getRegistros_cadastrados());

        } catch (SQLException ex) {

            Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);

            map.addAttribute("registros", null);

            System.out.println("error -> " + ex.getMessage());

        }

        System.out.println("Map -> " + map.get("registros"));

        return "registros";

    }

    @RequestMapping("/adicionar-registro")
    public String cadastro(ModelMap map) {

        //carregar o municipio
        map.addAttribute("uf", new CadastroDAO().get_all_uf_ibge());

        //map.put("uf", new CadastroDAO().get_all_uf_ibge());
        return "cadastro";

    }

    @RequestMapping("/alterar-registro/{id_registro}")
    public String alterar_registro(@PathVariable(value = "id_registro") String id, ModelMap model) {

        try {
            Registros registros = new CadastroDAO().getRegistro_from_id(Integer.parseInt(id));

            List<Registros_contato> list_registros = new CadastroDAO().getRegistros_contatos_cadastrados(registros.getId_registro());

            model.addAttribute("muni", new CadastroDAO().get_municipios_ibge_from_id_uf(registros.getId_uf_ibge()));
            model.addAttribute("uf", new CadastroDAO().get_all_uf_ibge());

            model.addAttribute("registro", registros);
            model.addAttribute("registros_contatos", list_registros);

        } catch (SQLException ex) {
            Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);

            System.out.println(ex.getMessage());

            //direcionar -> pois sem o item para editar nao tem como
        }

        return "cadastro";

    }

    @RequestMapping(value = "/delete_registro", method = RequestMethod.POST)
    @ResponseBody
    public String delete_registro(HttpServletRequest request) {

        try {

            new CadastroDAO().delete("registros", "id_registro", Integer.parseInt(request.getParameter("id")));

            new CadastroDAO().delete("registros_contatos", "id_registro", Integer.parseInt(request.getParameter("id")));

            return "true";

        } catch (SQLException ex) {
            Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Ex " + ex.getMessage());

            return "false";

        }

    }

    @RequestMapping(value = "/delete_contato", method = RequestMethod.POST)
    @ResponseBody
    public String delete_contato(HttpServletRequest request) {

        try {

            new CadastroDAO().delete("registros_contatos", "id_registro_contato", Integer.parseInt(request.getParameter("id")));

            return "true";

        } catch (SQLException ex) {
            Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Ex " + ex.getMessage());

            return "false";

        }

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public String save_registro(HttpServletRequest request) {
        Integer id_registro_update = null;

        if (request.getParameter("id_registro") != null) {
            id_registro_update = (request.getParameter("id_registro").length() < 1 ? null : (Integer.parseInt(request.getParameter("id_registro")) > 0 ? Integer.parseInt(request.getParameter("id_registro")) : null));
        }

        List<Registros_contato> id_contatos_ativos = null;

        if (id_registro_update != null) {

            try {
                id_contatos_ativos = new CadastroDAO().getRegistros_contatos_cadastrados(id_registro_update);

            } catch (SQLException ex) {
                Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        System.out.println("id_registro_update " + id_registro_update);

        Pattern regex = Pattern.compile("[$&+,:;=\\\\?@#|/'<>.^*()%!-]");

        String[] contatos = request.getParameterValues("telefone");

        System.out.println("telefones " + new Gson().toJson(contatos));
        System.out.println("telefone " + request.getParameter("telefone"));

        Registros registros = new Registros();

        if (id_registro_update != null) {
            registros.setId_registro(id_registro_update);
        }

        registros.setNm_completo(request.getParameter("nm_completo"));
        registros.setCpf(request.getParameter("cpf"));
        registros.setEmail(request.getParameter("email"));
        registros.setCep(request.getParameter("cep"));
        registros.setEndereco(request.getParameter("endereco"));
        registros.setBairro(request.getParameter("bairro"));

        registros.setNu_endereco((request.getParameter("nu_endereco").length() < 1 ? null : (Integer.parseInt(request.getParameter("nu_endereco")) > 0 ? Integer.parseInt(request.getParameter("nu_endereco")) : null)));

        if (request.getParameter("id_uf_ibge") != null) {
            registros.setId_uf_ibge((request.getParameter("id_uf_ibge").length() < 1 ? null : (Integer.parseInt(request.getParameter("id_uf_ibge")) > 0 ? Integer.parseInt(request.getParameter("id_uf_ibge")) : null)));

        }

        if (request.getParameter("id_muni_ibge") != null) {
            registros.setId_muni_ibge((request.getParameter("id_muni_ibge").length() < 1 ? null : (Integer.parseInt(request.getParameter("id_muni_ibge")) > 0 ? Integer.parseInt(request.getParameter("id_muni_ibge")) : null)));

        }

        registros.setComplemento(request.getParameter("complemento"));

        //verificar se foi preenchido
        if (registros.getNm_completo() != null && !registros.getNm_completo().equals("") && registros.getCpf() != null && !registros.getCpf().equals("")
                && registros.getEndereco() != null && !registros.getEndereco().equals("") && registros.getBairro() != null && !registros.getBairro().equals("")
                && registros.getNu_endereco() != null && registros.getId_muni_ibge() != null && registros.getId_uf_ibge() != null && request.getParameter("telefone") != null && request.getParameter("telefone").length() >= 14) {

            //verificar se tem caracter especial
            if (regex.matcher(registros.getNm_completo()).find()) {
                // encontrado caracteres especiais
                return "nome_invalido";

            }

            //verificadno se ele digitou o email, se sim verificamos se é valido             
            if (null != registros.getEmail()) {
                String regex_email = "^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$";
                Pattern pattern = Pattern.compile(regex_email);
                Matcher matcher = pattern.matcher(registros.getEmail());

                if (!matcher.matches()) {
                    return "email_invalido";

                }
            }

            try {
                //está tudo certo com o formulario
                //verificar se existe
                if (new CadastroDAO().verification_exists_cpf(id_registro_update, registros.getCpf())) {

                    return "existe_cpf";

                }

                boolean existe_tel = false;
                String existe_tel_string = null;

                //verificando se existe um dos telefones que ele cadastrou
                Integer position = 0;
                for (String contato : contatos) {
                    //inserir contato por contato se ele for valido
                    if (contato.length() >= 14) {
                        if (new CadastroDAO().verification_exists_tel((id_contatos_ativos != null ? (position < id_contatos_ativos.size() ? id_contatos_ativos.get(position).getId_registro_contato() : null) : null), id_registro_update, contato)) {

                            if (existe_tel_string == null) {

                                existe_tel_string = contato;

                            } else {

                                existe_tel_string = existe_tel_string + ", " + contato;

                            }

                            existe_tel = true;

                        }
                    }

                    position++;
                }

                if (existe_tel) {
                    //ja existe o tel cadastrado
                    return existe_tel_string;

                }

                //não existe -> retornar para salvar os registros de contato que ele ja preencheu pelo mnos o obrigatorio
                if (id_registro_update != null) {

                    registros = new CadastroDAO().save_registro("update", registros);

                } else {

                    registros = new CadastroDAO().save_registro("insert", registros);

                }

                //verificar se trouxe o id
                if (registros.getId_registro() > 0) {
                    //deu certo o registro -> agora salvar os registros
                    position = 0;
                    boolean deu_certo = false;

                    for (String contato : contatos) {
                        //inserir contato por contato se ele for valido

                        if (contato.length() >= 14) {
                            //é um telefone 
                            Registros_contato registros_contato = new Registros_contato();

                            registros_contato.setId_registro(registros.getId_registro());
                            registros_contato.setTelefone(contato);

                            if (id_contatos_ativos != null) {
                                if (id_contatos_ativos.size() > position && id_contatos_ativos.get(position) != null) {

                                    registros_contato.setId_registro_contato(id_contatos_ativos.get(position).getId_registro_contato());

                                    //chamar o insert
                                    if (new CadastroDAO().save_registro_contato("update", registros_contato).equals("deu certo")) {

                                        deu_certo = true;

                                    }

                                } else {
                                    //é um novo

                                    //chamar o insert
                                    if (new CadastroDAO().save_registro_contato("insert", registros_contato).equals("deu certo")) {

                                        deu_certo = true;

                                    }

                                }
                            } else {

                                //chamar o insert
                                if (new CadastroDAO().save_registro_contato("insert", registros_contato).equals("deu certo")) {

                                    deu_certo = true;

                                }

                            }

                        } else {
                            //não preencheu o campo -> verificar se tem na posição algum dados
                            Registros_contato registros_contato = new Registros_contato();

                            registros_contato.setId_registro(registros.getId_registro());

                            if (id_contatos_ativos != null) {
                                if (id_contatos_ativos.size() > position && id_contatos_ativos.get(position) != null) {

                                    registros_contato.setTelefone(id_contatos_ativos.get(position).getTelefone());

                                    registros_contato.setId_registro_contato(id_contatos_ativos.get(position).getId_registro_contato());

                                    //chamar o insert
                                    if (new CadastroDAO().save_registro_contato("update", registros_contato).equals("deu certo")) {

                                        deu_certo = true;

                                    }

                                }
                            }

                        }
                        position++;

                        //nao é um telefone ignorar
                    }

                    //verificando se pelo menos 1 contato foi cadastrado
                    if (deu_certo) {

                        return new Gson().toJson(registros);

                    }

                }

                return "error";

            } catch (SQLException ex) {
                Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);
                return "error";

            }

        } else {
            //campos obrigatorios nao preenchidos
            return "vazio";

        }

    }

    @RequestMapping(value = "/get_municipios_value_string", method = RequestMethod.POST)
    @ResponseBody
    public String get_municipios_value_string(HttpServletRequest request) {
        Integer id_uf = Integer.parseInt(request.getParameter("id_uf"));
        List<Municipios> list_municipios = null;
        String retorno = null;

        try {

            list_municipios = new CadastroDAO().get_municipios_ibge_from_id_uf(id_uf);

            //verificar se veio algo
            if (list_municipios != null && list_municipios.size() > 0) {
                //tem
                retorno = "<option selected='' value='0' disabled='disabled' >Selecione um município</option>";

                for (int i = 0; i < list_municipios.size(); i++) {
                    retorno += "<option value='" + list_municipios.get(i).getId_muni_ibge() + "' >" + list_municipios.get(i).getNm_municipio() + "</option>";
                }

            } else {
                //nao achou o muni

                retorno = "<option selected='' value='0' disabled='disabled' >Nenhum Munícipio encontrado</option>";

            }

            return retorno;

        } catch (SQLException ex) {
            System.out.println("Erro ao pegar os municipios " + ex.getMessage());
            Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);

            return "<option selected='' value='0' disabled='disabled' >Nenhum Munícipio encontrado</option>";

        }

    }

    @RequestMapping(value = "/get_uf_muni_from_cep", method = RequestMethod.POST)
    @ResponseBody
    public String get_uf_muni_from_cep(HttpServletRequest request) {
        String nm_municipio = request.getParameter("nm_municipio");

        Municipios municipios = null;

        try {

            municipios = new CadastroDAO().get_municipios_ibge_from_name(nm_municipio);

            return new Gson().toJson(municipios);

        } catch (SQLException ex) {
            Logger.getLogger(Global_Controller.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Catch (MUNICIPIO) -> " + ex.getMessage());

            return null;
        }

    }

}
