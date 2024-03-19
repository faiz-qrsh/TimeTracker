<%@page import="java.sql.*"%>
<html>
	<head>
		<link href="css/style.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	</head>
	<body>
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/Employee_Time_Tracker/index.jsp">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/Employee_Time_Tracker/employee/add-employee.jsp">Add Employee</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/Employee_Time_Tracker/timeout.jsp">Time Out</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/Employee_Time_Tracker/timein.jsp">Time In</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/Employee_Time_Tracker/reports/datewise.jsp">Date wise report</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/Employee_Time_Tracker/reports/emp-report.jsp">Employee wise report</a>
        </li>

      </ul>
    </div>
  </div>
</nav>
		