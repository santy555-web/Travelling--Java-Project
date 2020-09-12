<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%   int id =Integer.parseInt(request.getParameter("id"));

Connection con=null;
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","admin","str654321");
    PreparedStatement ps = con.prepareStatement("select * from blog where bid=?");
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
    	 Blob blob = rs.getBlob("image");
        byte byteArray[] = blob.getBytes(1, (int)blob.length());
        response.setContentType("image/jpg");
        OutputStream os = response.getOutputStream();
        os.write(byteArray);
        os.flush();
        os.close();  
    }
}
catch(Exception e){
    e.printStackTrace();
}   
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
%>

</body>
</html>