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
		List<String> passwordList = new LinkedList<String>();
		
	    if(usertype.equals("student")){
	    	String sql = "select password from Student where StuID=\"" + username + "\"";
	    	System.out.println(sql);
		//    Statement stmt = connect.createStatement();
	    	passwordList = connect.select(sql);
	    	
	    	if(passwordList.size()==0) {
	    		return "IDNOTEXIST";
	    	}
	    	
	    	if(passwordList.get(0).equals(password)) {
	    		session.setAttribute("StuID", username);
	    		return "STUDENT";
	    	}else {
	    		return "ERRORPASSWORD";
	    	}
	    }
	    else if(usertype.equals("teacher")) {
            String sql = "select password from Teacher where ID=\"" + username + "\"";
	    	
	    	System.out.println(sql);
		//    Statement stmt = connect.createStatement();
	    	passwordList = connect.select(sql);
	    	
	    	if(passwordList.size()==0) {
	    		return "IDNOTEXIST";
	    	}
	    	
	    	if(passwordList.get(0).equals(password)) {
	    		session.setAttribute("StuID", username);
	    		return "TEACHER";
	    	}else {
	    		return "ERRORPASSWORD";
	    	} 
	    	
	    }
	    else
	    	return "Faild";
		// TODO Auto-generated method stub
	}
}
