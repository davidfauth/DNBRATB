<html>
<head><title>Enter to database</title></head>
<body>
<table>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@page import="javax.naming.*" %>
<%@ page import="java.io.*" %>

<% 

java.sql.Connection con;
java.sql.Statement s;
java.sql.ResultSet rs;
java.sql.PreparedStatement pst;
java.util.Properties property = null;

con=null;
s=null;
pst=null;
rs=null;
CallableStatement cstmt = null;
// Remember to change the next line with your own environment 
String propFile = "C:\\DNB_TOMCAT\\dnbsql.properties";
//String propFile = "../webapps/DNB_RATB_MSSQL_UNIX/dnbsql.properties";
FileInputStream fis = new FileInputStream(propFile) ;
property =new Properties();
property.load(fis);
String connName = property.getProperty("connstring"); 

//String url = "jdbc:sqlserver://98.141.215.37:1433;" +
//		   "databaseName=dnb_bridge;user=dnb_bridge_user;password=nursern1;";
//String id= "dnb_bridge";
//String pass = "nursern1";
try{

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//con = java.sql.DriverManager.getConnection(connName);

Context ctx = new InitialContext(); 
DataSource ds = (DataSource)ctx.lookup("java:/comp/env/jdbc/DNBRATB"); 
con = ds.getConnection();

}catch(ClassNotFoundException cnfex){
cnfex.printStackTrace();

}
Context ctx = new InitialContext(); 
DataSource ds = (DataSource)ctx.lookup("java:/comp/env/jdbc/DNBRATB"); 


ArrayList list = new ArrayList() ;
Connection conn=null;
out.println(" Opening connections <br>");
for (int i =0 ; i < 15 ; i ++ )
{ conn = ds.getConnection();
if ( conn != null ) list.add( conn );
out.println(conn+"<br>");
// don’t release here
}


String sql = "select duns, [business name] as business_name from GLOBAL_FILE";

Statement stmt = conn.createStatement();
      ResultSet rs2 = stmt.executeQuery(sql);

      while (rs2.next()) {
         System.out.println(rs2.getString("duns") + ", " + rs2.getString("business_name"));
      }
      rs2.close();
      stmt.close();
      
try{
	cstmt = conn.prepareCall("{call dbo.usp_apiRATBGRSCompanySearchPage(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    cstmt.setString("var_dunsNumber", "970466975");
    cstmt.setString("var_dunsSICCode",null);
    cstmt.setString("var_dunsCompanyname",null);
    cstmt.setString("var_dunsAddress",null);
    cstmt.setString("var_dunsCity",null);
    cstmt.setString("var_dunsState",null);
    cstmt.setString("var_dunsPostalCode",null);
    cstmt.setString("var_dunsCountry",null);
    cstmt.setString("var_dunsActive",null);
    cstmt.setString("var_dunsExecutive",null);
    cstmt.setInt(11,1);
    cstmt.setInt(12,100);
	cstmt.registerOutParameter("rowCount", java.sql.Types.INTEGER);
    rs = cstmt.executeQuery();
%>

<%
while( rs.next() ){
%><tr>
<td><%= rs.getString("duns_nbr") %></td>
<td><%= rs.getString("business_name") %></td>
<td><%= rs.getString("line_of_business") %></td>
<td><%= rs.getString("ceo_full_name") %></td>
</tr>
<%
}
%>

<%

}
catch(Exception e){e.printStackTrace();}
finally{
if(rs!=null) rs.close();
if(s!=null) s.close();
if (cstmt!=null) cstmt.close();
if(con!=null) con.close();

}

//release all now
out.println(" Closing connections <br>");
while ( list.size() !=0 )
{ conn = (Connection )list.remove(0);
out.println(conn+"<br>");
conn.close();
}

%>
</table>
<br>some stuff here</br>
</body>
</html>
