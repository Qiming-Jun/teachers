package student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import mySql.DBConnection;

public class UserLogin {
    ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
	
	
	private String username;
	private String password;
    private String usertype;
    
    public void setUsername(String username) {
    	this.username = username;
    }
    public void setPassword(String password) {
    	this.password = password;
    }
    public void setUsertype(String usertype) {
    	this.usertype = usertype;
    }
    
    public String getUsername() {
    	return username;
    }
    public String getPassword() {
    	return password;
    }
    public String getUsertype() {
    	return usertype;
    }
    
	public String execute() throws Exception {
		DBConnection connect = new DBConnection();
		List<String> StuInf = new LinkedList<String>();
		List<String> TecInf = new LinkedList<String>();
		
		
	    if(usertype.equals("student")){
	    	String sql = "select * from Student where StuID=\"" + username + "\"";
	    	System.out.println(sql);
		//    Statement stmt = connect.createStatement();
	    	StuInf = connect.select(sql);
	    	
	    	if(StuInf.size()==0) {
	    		return "IDNOTEXIST";
	    	}
	    	
	    	if(StuInf.get(7).equals(password)) {		//password在Student表中的第七列
	    		session.setAttribute("StuID", StuInf.get(0));
	    		session.setAttribute("StuInf", StuInf);
	    		return "STUDENT";
	    	}else {
	    		return "ERRORPASSWORD";
	    	}
	    }
	    else if(usertype.equals("teacher")) {
	    	String sql = "select * from Teaccher where TecID=\"" + username + "\"";
	    	System.out.println(sql);
		//    Statement stmt = connect.createStatement();
	    	TecInf = connect.select(sql);
	    	
	    	if(TecInf.size()==0) {
	    		return "IDNOTEXIST";
	    	}
	    	
	    	if(TecInf.get(7).equals(password)) {		//password在Student表中的第七列
	    		session.setAttribute("TecID", TecInf.get(0));
	    		session.setAttribute("TecInf", TecInf);
	    		return "TECAHER";
	    	}else {
	    		return "ERRORPASSWORD";
	    	}
	    }
	    else
	    	return "Faild";
		// TODO Auto-generated method stub
	}
}
