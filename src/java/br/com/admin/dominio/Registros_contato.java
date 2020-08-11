package br.com.admin.dominio;

public class Registros_contato {
    
    private Integer id_registro_contato;
    private Integer id_registro;
    private String telefone;

    public Integer getId_registro_contato() {
        return id_registro_contato;
    }

    public void setId_registro_contato(Integer id_registro_contato) {
        this.id_registro_contato = id_registro_contato;
    }

    public Integer getId_registro() {
        return id_registro;
    }

    public void setId_registro(Integer id_registro) {
        this.id_registro = id_registro;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
        
}
