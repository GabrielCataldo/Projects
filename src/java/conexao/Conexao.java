package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexao {
    
    private Connection conn;
    
    /* mySQL
public Connection conectar(){
        System.out.println("Conectando ao banco..");
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost/admin.","root","");
            System.out.println("Conectado..");
            
            
            return conn;


                
        } catch (ClassNotFoundException e) {
            
            System.out.println("CLASSE não encontrada");
            System.out.println(e.getMessage());
            Logger.getLogger(Conexao.class.getName(),null);
            
            return null;

                
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
            
            return null;
        }
         
    }
*/
  
    //postgress
    public Connection conectar(){
        System.out.println("Conectando ao banco..");
        
        try {
            
            Class.forName("org.postgresql.Driver");

            String url = "jdbc:postgresql://localhost:5433/Admin.";
            Properties props = new Properties();
            props.setProperty("user","postgres");
            props.setProperty("password","1503Obost");

            conn = DriverManager.getConnection(url, props);
            
            System.out.println("Conectado..");
            
            
            return conn;


                
        } catch (ClassNotFoundException e) {
            
            System.out.println("CLASSE não encontrada");
            System.out.println(e.getMessage());
            Logger.getLogger(Conexao.class.getName(),null);
            
            return null;

                
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
            
            return null;
        }
         
    }
 
    
}
