
package configuracion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author lainc
 */
public class Conexion {
    Connection Conectar;
    String url="jdbc:mysql://localhost:3306/sistemacontrolpago";
    String user="root";
    String pass="";
    
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Conectar =DriverManager.getConnection(url,user,pass);
        }catch(Exception e){
            
        }
        return Conectar;
    }
}
