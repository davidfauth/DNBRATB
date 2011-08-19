<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>
<%@page import="oracle.jdbc.pool.*" %>

<%
	String driver = "oracle.jdbc.OracleDriver";
	Class.forName(driver).newInstance();
	

	Connection con=null;
	ResultSet rst=null;
	Statement stmt=null;
	

	try{
//		String url="jdbc:oracle:thin:DNBUSER/DNBUSER@98.141.215.37:1521:IWSDNBWORLDB";
//		con=DriverManager.getConnection(url);
//		stmt=con.createStatement();
		
		String connectionUrl = "jdbc:sqlserver://98.141.215.37:1433;" +
		   "databaseName=dnb_bridge;user=dnb_bridge_user;password=nursern1;";
		Connection conn = DriverManager.getConnection(connectionUrl);
		stmt = conn.createStatement();
		CallableStatement cs = conn.prepareCall("{call spHowMyTeamPerforms(?, ?)}");
		cs.setString(1, "1");
		cs.setInt(2, 2);
		ResultSet result2 = cs.executeQuery();
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
	
	rst=stmt.executeQuery("select count(*) as sic_code from dnbuser.sic_code");
		%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			 	<%
				int no=1;
				while(rst.next()){
				%><%=rst.getString("sic_code")
%>
<%
				no++;
	}
	rst.close();
	stmt.close();
	con.close();
%>



</body>
</html>