<html>
<head><title>Enter to database</title></head>
<body>
<table>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
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
con = java.sql.DriverManager.getConnection(connName);

}catch(ClassNotFoundException cnfex){
cnfex.printStackTrace();

}
//String sql = "select top 10 * from GLOBAL_FILE";
try{
	CallableStatement cstmt = con.prepareCall("{call dbo.usp_apiRATBGRSCorporateTree(?,?)}");
    cstmt.setString("var_dunsNumber","12345");
    cstmt.setInt(2,100);
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
if(con!=null) con.close();
}

%>
</table>
<br>some stuff here</br>
</body>
</html>
