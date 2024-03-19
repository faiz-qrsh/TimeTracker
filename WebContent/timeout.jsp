<%@ include file="menu.jsp"%>
<html>
	<body>
		<div class="container my-4">
			<form action="set-outtime.jsp" method="post">
				<select class="form-select form-select-lg mb-3" name="emp">
  		<option selected value="-1">Select Employee</option>
  		<%
  		PreparedStatement ps=(PreparedStatement)application.getAttribute("selectEmp");
  		ps.setString(1,"in");
  		ResultSet rs=ps.executeQuery();
  		while(rs.next()){
  		%>
  		<option value=<%=rs.getString(1) %>><%=rs.getString(2) %> (<%= rs.getString(1) %>)</option>
  		<%} %>
		</select>
		<button type="submit" class="btn btn-success">Record</button>
			
			</form>
		</div>
	</body>
</html>