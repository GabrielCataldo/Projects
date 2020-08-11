package br.com.admin.dao;

import br.com.admin.dominio.Municipios;
import br.com.admin.dominio.Registros;
import br.com.admin.dominio.Registros_contato;
import br.com.admin.dominio.Unidades_federacao;
import conexao.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CadastroDAO {

    public List<Registros_contato> getRegistros_contatos_cadastrados(Integer id_registro) throws SQLException {

        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM registros_contatos WHERE id_registro=" + id_registro;

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum registro de contato encontrado no registro " + id_registro);

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Registros_contato> list_registros_contatos = new ArrayList<>();

            do {
                list_registros_contatos.add(new Registros_contato());
                list_registros_contatos.get(i).setId_registro_contato(registros.getInt("id_registro_contato"));
                list_registros_contatos.get(i).setId_registro(registros.getInt("id_registro"));
                list_registros_contatos.get(i).setTelefone(registros.getString("telefone"));

                //pegar a quantidade de registros de contato cada index tem
                i++;

            } while (registros.next());

            sentenca.close();

            return list_registros_contatos;

        }

    }

    public Registros getRegistro_from_id(Integer id) throws SQLException {

        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM registros WHERE id_registro=" + id;

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum registro encontrado");

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Registros> list_registros = new ArrayList<>();

            do {
                list_registros.add(new Registros());
                list_registros.get(i).setId_registro(registros.getInt("id_registro"));
                list_registros.get(i).setNm_completo(registros.getString("nm_completo"));
                list_registros.get(i).setCpf(registros.getString("cpf"));
                list_registros.get(i).setCep(registros.getString("cep"));
                list_registros.get(i).setEndereco(registros.getString("endereco"));
                list_registros.get(i).setNu_endereco(registros.getInt("nu_endereco"));
                list_registros.get(i).setId_muni_ibge(registros.getInt("id_muni_ibge"));
                list_registros.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                list_registros.get(i).setComplemento(registros.getString("complemento"));
                list_registros.get(i).setEmail(registros.getString("email"));
                list_registros.get(i).setBairro(registros.getString("bairro"));

                i++;

            } while (registros.next());

            sentenca.close();

            return list_registros.get(list_registros.size() - 1);

        }

    }

    public List<Registros> getRegistros_cadastrados() throws SQLException {

        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM registros";

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum registro encontrado");

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Registros> list_registros = new ArrayList<>();

            do {
                list_registros.add(new Registros());
                list_registros.get(i).setId_registro(registros.getInt("id_registro"));
                list_registros.get(i).setNm_completo(registros.getString("nm_completo"));
                list_registros.get(i).setCpf(registros.getString("cpf"));
                list_registros.get(i).setCep(registros.getString("cep"));
                list_registros.get(i).setEndereco(registros.getString("endereco"));
                list_registros.get(i).setNu_endereco(registros.getInt("nu_endereco"));
                list_registros.get(i).setId_muni_ibge(registros.getInt("id_muni_ibge"));
                list_registros.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                list_registros.get(i).setComplemento(registros.getString("complemento"));
                list_registros.get(i).setEmail(registros.getString("email"));
                list_registros.get(i).setBairro(registros.getString("bairro"));

                //pegar a uf
                Unidades_federacao unidades_federacao_selecionada = get_uf_ibge_from_id(list_registros.get(i).getId_uf_ibge());

                if (unidades_federacao_selecionada != null) {
                    list_registros.get(i).setUf(unidades_federacao_selecionada.getSg_uf());

                }

                //pegar o municipio
                Municipios municipios_selecionado = get_municipios_ibge_from_id(list_registros.get(i).getId_muni_ibge());

                if (municipios_selecionado != null) {
                    list_registros.get(i).setCidade(municipios_selecionado.getNm_municipio());

                }

                //pegar a quantidade de registros de contato cada index tem
                List<Registros_contato> list_registros_contato = getRegistros_contatos_cadastrados(list_registros.get(i).getId_registro());

                if (list_registros_contato != null && list_registros_contato.size() > 0) {
                    //setando o numero de contatos que ele tem

                    list_registros.get(i).setQtd_contatos_cadastrados(list_registros_contato.size());

                } else {

                    list_registros.get(i).setQtd_contatos_cadastrados(0);

                }

                i++;

            } while (registros.next());

            sentenca.close();

            return list_registros;

        }

    }

    public Registros save_registro(String regra, Registros registros) throws SQLException {

        String sql = null;

        if (regra.equals("insert")) {

            sql = "INSERT INTO registros(nm_completo, cpf, cep, endereco, nu_endereco, id_muni_ibge, id_uf_ibge, complemento, email, bairro) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        } else {

            sql = "UPDATE registros SET nm_completo=?, cpf=?, cep=?, endereco=?, nu_endereco=?, id_muni_ibge=?, id_uf_ibge=?, complemento=?, email=?, bairro=? WHERE id_registro=?";

        }

        //Connection connection = new Conexao().conectar();
        PreparedStatement ps = new Conexao().conectar().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

        ps.setString(1, registros.getNm_completo());
        ps.setString(2, registros.getCpf());
        ps.setString(3, registros.getCep());
        ps.setString(4, registros.getEndereco());
        ps.setInt(5, registros.getNu_endereco());
        ps.setInt(6, registros.getId_muni_ibge());
        ps.setInt(7, registros.getId_uf_ibge());
        ps.setString(8, registros.getComplemento());
        ps.setString(9, registros.getEmail());
        ps.setString(10, registros.getBairro());

        if (regra.equals("insert")) {

            ps.execute();

            ResultSet rs = ps.getGeneratedKeys();

            int idValue = 0;
            if (rs.next()) {
                // Value of ID (Index 1 by table design).
                idValue = rs.getInt(1);
            }

            System.out.println("ID value: " + idValue);

            registros.setId_registro(idValue);

        } else {

            ps.setInt(11, registros.getId_registro());

            ps.executeUpdate();

            ps.close();

        }

        return registros;

    }

    public String save_registro_contato(String regra, Registros_contato registros_contato) throws SQLException {
        String sql = null;

        if (regra.equals("insert")) {

            sql = "INSERT INTO registros_contatos(id_registro, telefone) values (?, ?)";

        } else {
            //update
            sql = "UPDATE registros_contatos SET id_registro=?, telefone=? WHERE id_registro_contato=?";

        }

        //Connection connection = new Conexao().conectar();
        PreparedStatement ps = new Conexao().conectar().prepareStatement(sql);

        ps.setInt(1, registros_contato.getId_registro());
        ps.setString(2, registros_contato.getTelefone());

        if (regra.equals("insert")) {

            ps.execute();

            //deu certo
            System.out.println("Deu certo inserir o contato " + registros_contato.getTelefone());

            return "deu certo";

        } else {
            //update
            ps.setInt(3, registros_contato.getId_registro_contato());

            ps.executeUpdate();

            ps.close();

            return "deu certo";

        }

    }

    public List<Municipios> get_municipios_ibge_from_id_uf(Integer id_uf_ibge) throws SQLException {
        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM municipios WHERE id_uf_ibge=" + id_uf_ibge;

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum municipio encontrado");

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Municipios> list_municipios = new ArrayList<Municipios>();

            do {
                list_municipios.add(new Municipios());
                list_municipios.get(i).setId_muni_ibge(registros.getInt("id_muni_ibge"));
                list_municipios.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                list_municipios.get(i).setNm_municipio(registros.getString("nm_municipio"));

                i++;

            } while (registros.next());

            sentenca.close();

            return list_municipios;

        }

    }

    public Unidades_federacao get_uf_ibge_from_name(String name) throws SQLException {
        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM unidades_federacao WHERE sg_uf='" + name.toUpperCase() + "'";

        System.out.println(sql);

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhuma uf encontrado");

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Unidades_federacao> list_uf = new ArrayList<>();

            do {

                list_uf.add(new Unidades_federacao());
                list_uf.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                list_uf.get(i).setNm_uf(registros.getString("nm_uf"));
                list_uf.get(i).setSg_uf(registros.getString("sg_uf"));

                i++;

            } while (registros.next());

            sentenca.close();

            return list_uf.get(list_uf.size() - 1);

        }

    }

    public Municipios get_municipios_ibge_from_name(String name) throws SQLException {
        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM municipios WHERE nm_municipio='" + name.toString().toUpperCase() + "'";

        System.out.println(sql);

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum municipio encontrado");

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Municipios> list_municipios = new ArrayList<Municipios>();

            do {
                list_municipios.add(new Municipios());
                list_municipios.get(i).setId_muni_ibge(registros.getInt("id_muni_ibge"));
                list_municipios.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                list_municipios.get(i).setNm_municipio(registros.getString("nm_municipio"));

                i++;

            } while (registros.next());

            sentenca.close();

            return list_municipios.get(list_municipios.size() - 1);

        }

    }

    public List<Unidades_federacao> get_all_uf_ibge() {
        ResultSet registros;
        Statement sentenca;

        try {
            sentenca = new Conexao().conectar().createStatement();

            String sql = "SELECT * FROM unidades_federacao";

            registros = sentenca.executeQuery(sql);

            if (!registros.next()) {
                System.out.println("Nenhuma uf encontrado");

                sentenca.close();

                return null;

            } else {

                int i = 0;

                List<Unidades_federacao> list_uf = new ArrayList<>();

                do {

                    list_uf.add(new Unidades_federacao());
                    list_uf.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                    list_uf.get(i).setNm_uf(registros.getString("nm_uf"));
                    list_uf.get(i).setSg_uf(registros.getString("sg_uf"));

                    i++;

                } while (registros.next());

                sentenca.close();

                return list_uf;

            }

        } catch (SQLException ex) {
            Logger.getLogger(CadastroDAO.class.getName()).log(Level.SEVERE, null, ex);

            System.out.println("Nenhuma uf encontrado");

            return null;

        }

    }

    public boolean verification_exists_cpf(Integer id, String cpf) throws SQLException {
        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();
        String sql = null;

        if (id == null) {
            //verification insert
            sql = "SELECT * FROM registros WHERE cpf ='" + cpf + "'";

        } else {
            //verification update
            sql = "SELECT * FROM registros WHERE id_registro !='" + id + "' AND  cpf ='" + cpf + "'";

        }

        System.out.println(sql);

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum registro com esse cpf");

            sentenca.close();

            return false;

        } else {
            //existe ja um registro com esse cpf
            sentenca.close();

            return true;

        }

    }

    public boolean verification_exists_tel(Integer id,Integer id_registro, String telefone) throws SQLException {
        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();
        String sql = null;

        if (id == null) {
            //verification insert
            sql = "SELECT * FROM registros_contatos WHERE telefone='" + telefone + "'";

        } else {
            //verification update
            if (id_registro != null) {
                sql = "SELECT * FROM registros_contatos WHERE id_registro !="+id_registro+" AND id_registro_contato !=" + id + " AND  telefone ='" + telefone + "'";

            }else{
                
                sql = "SELECT * FROM registros_contatos WHERE id_registro_contato !='" + id + "' AND  telefone ='" + telefone + "'";
            
            }
        }

        System.out.println(sql);

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum registro com esse telefone");

            sentenca.close();

            return false;

        } else {
            //existe ja um registro com esse cpf
            sentenca.close();

            return true;

        }

    }

    public Municipios get_municipios_ibge_from_id(Integer id) throws SQLException {
        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM municipios WHERE id_muni_ibge=" + id;

        System.out.println(sql);

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhum municipio encontrado");

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Municipios> list_municipios = new ArrayList<Municipios>();

            do {
                list_municipios.add(new Municipios());
                list_municipios.get(i).setId_muni_ibge(registros.getInt("id_muni_ibge"));
                list_municipios.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                list_municipios.get(i).setNm_municipio(registros.getString("nm_municipio"));

                i++;

            } while (registros.next());

            sentenca.close();

            return list_municipios.get(list_municipios.size() - 1);

        }

    }

    public Unidades_federacao get_uf_ibge_from_id(Integer id) throws SQLException {
        ResultSet registros;
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();

        String sql = "SELECT * FROM unidades_federacao WHERE id_uf_ibge=" + id;

        System.out.println(sql);

        registros = sentenca.executeQuery(sql);

        if (!registros.next()) {
            System.out.println("Nenhuma uf encontrado");

            sentenca.close();

            return null;

        } else {

            int i = 0;

            List<Unidades_federacao> list_uf = new ArrayList<>();

            do {

                list_uf.add(new Unidades_federacao());
                list_uf.get(i).setId_uf_ibge(registros.getInt("id_uf_ibge"));
                list_uf.get(i).setNm_uf(registros.getString("nm_uf"));
                list_uf.get(i).setSg_uf(registros.getString("sg_uf"));

                i++;

            } while (registros.next());

            sentenca.close();

            return list_uf.get(list_uf.size() - 1);

        }

    }

    public void delete(String table_name,String column_where,int id) throws SQLException {
        Statement sentenca;

        sentenca = new Conexao().conectar().createStatement();
        
        String sql = "DELETE FROM "+table_name+" WHERE "+column_where+"="+id;
        
        sentenca.execute(sql);

        System.out.println("Delete "+table_name+" COLUMN "+column_where+" = "+id);
        
       
    }
}
