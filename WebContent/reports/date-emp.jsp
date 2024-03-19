<%@page import="java.time.LocalDate"%>
<%@ include file="../menu.jsp"%>
<html>
	<body>
	<%
	LocalDate date=LocalDate.now();
	%>
	
		<div class="container my-4 card">
			<form class="card-body" action="today-emp-report.jsp">
			<div class="row">
    				<label for="currentDate" class="form-label">Current Day :</label>
    				<div class="mb-3 col-sm-11 form-group">
    				<input type="date" class="form-control" id="currentDate" name="Date" value=<%=date%> max="<%=date%>" min="<%=date %>">
    				<input type="hidden" name="eid" value="<%= request.getParameter("emp") %>">
  					</div>
  				<div class="col-sm-1"><button type="submit" class="btn btn-success">Go</button></div>
  				</div>
			</form>
		</div>
		
		<div class="container my-4 card">
			<form class="card-body" action="date-emp-report.jsp">
  				<div class="row">
    				<label for="currentDate" class="form-label">Date :</label>
    				<div class="mb-3 col-sm-11 form-group">
    				<input type="date" class="form-control" id="currentDate" name="date" max="<%=date%>" >
    				<input type="hidden" name="eid" value="<%= request.getParameter("emp") %>">
  					</div>
  				<div class="col-sm-1"><button type="submit" class="btn btn-success">Go</button></div>
  				</div>
			</form>
		</div>
		
		<div class="container my-4 card">
			<form class="card-body" action="between-emprep.jsp">
  				<div class="row">
    			<div class="col-sm-6" ><label for="dateBetween" class="form-label">From :</label></div>
  				<div class="col-sm-5" ><label for="dateBetween" class="form-label">To :</label></div>
  				</div>
  				
  				<div class="row">
  				<div class="mb-3 col-sm-6"><input type="date" class="form-control" id="dateBetween" name="date1" max="<%=date%>"></div>
  				<div class="mb-3 col-sm-5"><input type="date" class="form-control" id="dateBetween" name="date2" max="<%=date%>"></div>
  				<input type="hidden" name="eid" value="<%= request.getParameter("emp") %>">
  				<div class="col-sm-1"><button type="submit" class="btn btn-success">Go</button></div>
  				</div>
			</form>
		</div>
	</body>
</html>