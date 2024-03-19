package com.ett;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener{

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context=sce.getServletContext();
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			createDB();
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/emptimetracker","root","Faiz@293031");
			createTable(con);
			PreparedStatement insertEmp=con.prepareStatement("insert into employee values(?,?,?,?)");
			context.setAttribute("insertEmp", insertEmp);
			
			PreparedStatement selectEmp=con.prepareStatement("select eid,name from employee where status=?");
			context.setAttribute("selectEmp", selectEmp);
			
			PreparedStatement insertTimeInfo=con.prepareStatement("insert into timeinfo(eid,outtime,intime,totaltime,date) values(?,?,?,?,?)");
			context.setAttribute("insertTimeInfo", insertTimeInfo);
			
			PreparedStatement updateStatus=con.prepareStatement("update employee set status=? where eid=?");
			context.setAttribute("updateStatus", updateStatus);
			
			PreparedStatement updateTimeInfo=con.prepareStatement("update timeinfo set intime=?, totaltime=? where intime='Not in yet' and eid=?");
			context.setAttribute("updateTimeInfo", updateTimeInfo);
			
			PreparedStatement getOutTime=con.prepareStatement("select outtime from timeinfo where intime='Not in yet' and eid=?");
			context.setAttribute("getOutTime", getOutTime);
			
			PreparedStatement datewiseRep=con.prepareStatement("select *from timeinfo where date=?");
			context.setAttribute("datewiseRep", datewiseRep);
			
			PreparedStatement repBtwDates=con.prepareStatement("select *from timeinfo where date between ? and ?");
			context.setAttribute("repBtwDates", repBtwDates);
			
			PreparedStatement selectAllEmp=con.prepareStatement("select * from employee");
			context.setAttribute("selectAllEmp", selectAllEmp);
			
			PreparedStatement dateEmpRec=con.prepareStatement("select *from timeinfo where date=? and eid=?");
			context.setAttribute("dateEmpRec", dateEmpRec);
			
			PreparedStatement repBtwEmp=con.prepareStatement("select *from timeinfo where eid=? and date between ? and ?");
			context.setAttribute("repBtwEmp", repBtwEmp);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}

	private void createTable(Connection con) throws SQLException {
		Statement st=con.createStatement();
		st.execute("create table if not exists employee(eid int primary key,name varchar(30),department varchar(30),status char(3))");
		st.execute("create table if not exists timeinfo(entrynum int primary key auto_increment,eid int,outtime varchar(20),intime varchar(20),totaltime varchar(20),date date)");
		
	}

	private void createDB() throws SQLException {
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost","root","Faiz@293031");
		Statement s=con.createStatement();
		s.execute("create database if not exists emptimetracker");
	}
	
	

}
