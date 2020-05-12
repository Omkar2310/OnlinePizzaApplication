<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<th>Mob</th>
    <th>Name</th>
    <th>Msg</th>
</tr>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","rootpasswordgiven"); 
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from Contacts");  
	while(rs.next())  {
		
%>
<tr>
<td>	
<%=rs.getString(1) %>  
</td>
<td>	
<%=rs.getString(2) %>  
</td>
<td>	
<%=rs.getString(3) %>  
</td>


</tr>	  
<%
	} 
	con.close(); 
}catch(Exception e){ System.out.println(e);}
%>
</table>

</body>
</html>