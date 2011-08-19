package data;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;
import javax.naming.*;
import javax.sql.*;



public class DNBDB
{
       
    public static String queryDNBAPI(String dunsNbr, String companyName, String vExecName, String vSIC, String vAddress, String vCity, String vZip,  String vState, String vCountry, String vdnbActive, Integer vMaxResults, String vFormat, Integer vStartRow, Integer vEndRow) throws SQLException, IOException
    {
    	java.util.Properties property = null;
    	//For production at the Agency
    	int vSearchResults = 0;
//    	String propFile = System.getProperty("catalina.base")  + File.separator + "conf/dnbsql.properties";

    	//    	System.out.println(propFile);
    	//   	 For testing - place in tomcat/bin directory
//     	String propFile = "C:\\DNB_TOMCAT\\dnbsql.properties";
//    	Properties prop = new Properties();
//    	FileOutputStream fos = null;
    	// Setting a key=value pair
//    	prop.setProperty("yourKey", "theValue");
//    	prop.store((fos = new FileOutputStream("dnbtest.properties")), "Author: jasonX");    	
//    	fos.close();
    	
//    	FileInputStream fis = new FileInputStream(propFile) ;
//    	property =new Properties();
//    	property.load(fis);
//    	String connName = property.getProperty("connstring"); 
//    	String apikey = property.getProperty("apikey");
//    	Connection con=null;

    	
    	String sqlResult = "";
        CallableStatement cstmtCount = null;
        CallableStatement cstmt = null;
        ResultSet rs = null;
//        DataSource ds = null;
        
        // Remember to change the next line with your own environment 
        try{

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        con = java.sql.DriverManager.getConnection(connName);

        }catch(ClassNotFoundException cnfex){
        cnfex.printStackTrace();

        }
      ConnectionPool pool = ConnectionPool.getInstance();
      Connection connection = pool.getConnection();
                
        
         try
        {
        	System.out.println("Version 2.0.08092011");
        	System.out.println("calling usp_apiGRSCompanySearchCount");
//    		con=ds.getConnection();
        	cstmtCount = connection.prepareCall("{call dbo.usp_apiGRSCompanySearchCount(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
     		cstmtCount.setString("var_dunsNumber", dunsNbr);
     		cstmtCount.setString("var_dunsSICCode",vSIC);
     		cstmtCount.setString("var_dunsCompanyname",companyName);
     		cstmtCount.setString("var_dunsAddress",vAddress);
     		cstmtCount.setString("var_dunsCity",vCity);
     		cstmtCount.setString("var_dunsState",vState);
     		cstmtCount.setString("var_dunsPostalCode",vZip);
     		cstmtCount.setString("var_dunsCountry",vCountry);
     		cstmtCount.setString("var_dunsActive",vdnbActive);
     		cstmtCount.setString("var_dunsExecutive",vExecName);
     		cstmtCount.setInt(11,vStartRow);
     		cstmtCount.setInt(12,vStartRow+vMaxResults);
     		cstmtCount.registerOutParameter("rowCount", java.sql.Types.INTEGER);
     		cstmtCount.execute();
    	    vSearchResults = cstmtCount.getInt("rowCount");
    	    
        	System.out.println("calling usp_apiGRSCompanySearchPage");
        	 	cstmt = connection.prepareCall("{call dbo.usp_apiGRSCompanySearchPage(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        	    cstmt.setString("var_dunsNumber", dunsNbr);
        	    cstmt.setString("var_dunsSICCode",vSIC);
        	    cstmt.setString("var_dunsCompanyname",companyName);
        	    cstmt.setString("var_dunsAddress",vAddress);
        	    cstmt.setString("var_dunsCity",vCity);
        	    cstmt.setString("var_dunsState",vState);
        	    cstmt.setString("var_dunsPostalCode",vZip);
        	    cstmt.setString("var_dunsCountry",vCountry);
        	    cstmt.setString("var_dunsActive",vdnbActive);
        	    cstmt.setString("var_dunsExecutive",vExecName);
        	    cstmt.setInt(11,vStartRow);
        	    cstmt.setInt(12,vStartRow+vMaxResults);
        	    cstmt.registerOutParameter("rowCount", java.sql.Types.INTEGER);
        	    rs = cstmt.executeQuery();
        	    //System.out.println("MANAGER ID: " + cstmt.getInt("rowCount"));
 //       	    vSearchResults = 5;
        	    System.out.println("Record Count: " + vSearchResults);
        	    
            	System.out.println("building JSON");

        	 if (vFormat.equals("html")){
            	sqlResult = SQLUtil.getHtmlTable(rs);
            }else{
            	sqlResult = SQLUtil.getJSONOutput(rs,vSearchResults);
            }
         	System.out.println("Finished JSON");
            return sqlResult;
            
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return null;
        }
        finally
        {
//            fis.close();
            DBUtil.closeResultSet(rs);
            if (cstmtCount!=null) cstmtCount.close();
            if (cstmt!=null) cstmt.close();
            pool.freeConnection(connection);
//            con.close();
        }
    }

    public static String queryDNBAPITREE(String dunsNbr, Integer vMaxResults, String vFormat) throws SQLException, IOException
    {
//    	java.util.Properties property = null;
    	//For production at the Agency
    	int vSearchResults = 0;
//    	String propFile = "../webapps/DNB_RATB_MSSQL_UNIX/dnbsql.properties";
//    	String propFile = "/opt/palantir/apache-tomcat/webapps/DNB_RATB_MSSQL_UNIX/dnbsql.properties";
//    	String propFile = System.getProperty("catalina.base")  + File.separator + "conf/dnbsql.properties";

    	//   	 For testing - place in tomcat/bin directory
//     	String propFile = "C:\\DNB_TOMCAT\\dnbsql.properties";
//    	FileInputStream fis = new FileInputStream(propFile) ;
//    	property =new Properties();
//    	property.load(fis);
//    	String connName = property.getProperty("connstring"); 
//    	Connection con=null;
        String sqlResult = "";
        CallableStatement cstmtCount = null;
        CallableStatement cstmt = null;
        ResultSet rs = null;
        
        // Remember to change the next line with your own environment 
        try{

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        con = java.sql.DriverManager.getConnection(connName);

        }catch(ClassNotFoundException cnfex){
        cnfex.printStackTrace();

        }
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        
        
         try
        {
//         	proc = con.prepareCall("{call dnbRATBAPIPkg.dnbAPITreeSearch(?,?,?,?,?)}");
//        	proc = con.prepareCall("{call IWSDNB.dnbOracleAPIPkg.dnbAPITreeSearch(?,?,?,?)}");
//     		con=ds.getConnection();
        	System.out.println("calling usp_apiGRSCorporateTreeCount");
      	    cstmtCount = connection.prepareCall("{call dbo.usp_apiGRSCorporateTreeCount(?,?,?)}");
     		cstmtCount.setString("dunsNbr", dunsNbr);
     		cstmtCount.setInt("maxRows",vMaxResults);
     		cstmtCount.registerOutParameter("rowCount", java.sql.Types.INTEGER);
     		cstmtCount.execute();
    	    vSearchResults = cstmtCount.getInt("rowCount");
    	    
        	System.out.println("calling usp_apiGRSCorporateTree");
      		cstmt = connection.prepareCall("{call dbo.usp_apiGRSCorporateTree(?,?,?)}");
     		cstmt.setString("dunsNbr", dunsNbr);
     		cstmt.setInt("maxRows",vMaxResults);
     		cstmt.registerOutParameter("rowCount", java.sql.Types.INTEGER);
   	        rs = cstmt.executeQuery();
//   	        vSearchResults = cstmt.getInt("rowCount");
 
        	System.out.println("Building JSON");
        	
        	if (vFormat.equals("html")){
            	sqlResult = SQLUtil.getHtmlTable(rs);
            }else{
            	sqlResult = SQLUtil.getJSONOutput(rs,vSearchResults);
            }
        	System.out.println("Built JSON");

            return sqlResult;
            
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return null;
        }
        finally
        {
//            fis.close();
        	DBUtil.closeResultSet(rs);
            if (cstmtCount!=null) cstmtCount.close();
            if (cstmt!=null) cstmt.close();
            pool.freeConnection(connection);
//        	con.close();
        }
    }
    
    
}