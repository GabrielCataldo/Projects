package br.com.admin.dominio;

public class Registros {

    private Integer id_registro;
    private String nm_completo;
    private String cpf;
    private String cep;
    private String endereco;
    private Integer nu_endereco;
    private Integer id_muni_ibge;
    private Integer id_uf_ibge;
    private String complemento;
    private String email;
    private String bairro;
    
    //para exibicao
    private Integer qtd_contatos_cadastrados;
    private String cidade;
    private String uf;

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }
    
    
    
    public Integer getQtd_contatos_cadastrados() {
        return qtd_contatos_cadastrados;
    }

    public void setQtd_contatos_cadastrados(Integer qtd_contatos_cadastrados) {
        this.qtd_contatos_cadastrados = qtd_contatos_cadastrados;
    }

    public Integer getId_registro() {
        return id_registro;
    }

    public void setId_registro(Integer id_registro) {
        this.id_registro = id_registro;
    }
    
    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNm_completo() {
        return nm_completo;
    }

    public void setNm_completo(String nm_completo) {
        this.nm_completo = nm_completo;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Integer getNu_endereco() {
        return nu_endereco;
    }

    public void setNu_endereco(Integer nu_endereco) {
        this.nu_endereco = nu_endereco;
    }

    public Integer getId_muni_ibge() {
        return id_muni_ibge;
    }

    public void setId_muni_ibge(Integer id_muni_ibge) {
        this.id_muni_ibge = id_muni_ibge;
    }

    public Integer getId_uf_ibge() {
        return id_uf_ibge;
    }

    public void setId_uf_ibge(Integer id_uf_ibge) {
        this.id_uf_ibge = id_uf_ibge;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    
    

}
