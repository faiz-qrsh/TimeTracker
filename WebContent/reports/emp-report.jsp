<%@ include file="../menu.jsp"%>
<html>
	<body>
		<div class="container my-4">
		<form action="date-emp.jsp" method="post">
		<select class="form-select form-select-lg mb-3" name="emp">
  		<option selected value="-1">Select Employee</option>
  		<%
  		PreparedStatement ps=(PreparedStatement)application.getAttribute("selectAllEmp");
  		ResultSet rs=ps.executeQuery();
  		while(rs.next()){
  		%>
  		<option value=<%=rs.getString(1) %>><%=rs.getString(2) %> (<%= rs.getString(1) %>)</option>
  		<%} %>
		</select>
		<button type="submit" class="btn btn-success">Go</button>
			
			</form>
		</div>
	</body>
</html>