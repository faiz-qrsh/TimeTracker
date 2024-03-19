<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ include file="../menu.jsp" %>
<html>
	<body>
		<%
		String path="C:/java-training/advjava/projects/Employee Time Tracker/WebContent/images";
		
		System.out.println(request.getParameter("eid"));
		PreparedStatement ps=(PreparedStatement)application.getAttribute("insertEmp");
		ps.setString(1,request.getParameter("eid"));
		ps.setString(2,request.getParameter("ename"));
		ps.setString(3,request.getParameter("department"));
		ps.setString(4,"in");
		ps.executeUpdate();
		%>
		
		<h1>Employee has been added successfully</h1>
	</body>
</html>
