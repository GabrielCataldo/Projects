package br.com.admin.dominio;

import java.math.BigInteger;

public class Municipios {
    
    private Integer id_muni_ibge;
    private String nm_municipio;
    private Integer id_uf_ibge;

    public Integer getId_muni_ibge() {
        return id_muni_ibge;
    }

    public void setId_muni_ibge(Integer id_muni_ibge) {
        this.id_muni_ibge = id_muni_ibge;
    }

   
    

    public String getNm_municipio() {
        return nm_municipio;
    }

    public void setNm_municipio(String nm_municipio) {
        this.nm_municipio = nm_municipio;
    }

    public Integer getId_uf_ibge() {
        return id_uf_ibge;
    }

    public void setId_uf_ibge(Integer id_uf_ibge) {
        this.id_uf_ibge = id_uf_ibge;
    }

    
    

    
}
