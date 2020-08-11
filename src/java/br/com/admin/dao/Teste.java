package br.com.admin.dao;

import br.com.admin.dominio.Registros;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Teste {

    public static void main(String[] args) {
        Connection connection = new Conexao().conectar();
         
        Registros registros = new Registros();

        registros.setNm_completo("Gabriel Cataldo");
        registros.setCpf("021.049.966-43");
        registros.setCep("89035-510");
        registros.setEndereco("Rua Gabriel Zimmer");
        registros.setNu_endereco(85);
        registros.setId_muni_ibge(1);
        registros.setId_uf_ibge(2);
        registros.setComplemento("complemento");
        registros.setEmail("gabriel@outlook.com");
        registros.setBairro("Villa Nova");

        CadastroDAO cadastroDAO = new CadastroDAO();

        try {
            
            cadastroDAO.save_registro("insert",registros);
            
        } catch (SQLException ex) {
            
            System.out.println("Error -> "+ex.getMessage());
            Logger.getLogger(Teste.class.getName()).log(Level.SEVERE, null, ex);
        
        }

    }

}
