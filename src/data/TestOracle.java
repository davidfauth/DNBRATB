package data;

import javax.naming.*;
import javax.sql.*;
import java.sql.*;

public class TestOracle {

   private Connection conn = null ;

   public void init() {
     try {
        Context ctx = new InitialContext();
        
        if(ctx == null) throw new Exception("No Context"); {

           DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/DNBOracle");

              if (ds != null) {
                 conn = ds.getConnection();
              }    
        }
       
     } catch (Exception e) {
       e.printStackTrace();
     }
   }
   
   public Connection getConnection(){
      return conn;
   }

}
