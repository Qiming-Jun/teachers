package tutorial;

import java.util.*;
import java.text.SimpleDateFormat;
import java.lang.*;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.sql.*;

import org.omg.CORBA.Request;
import java.text.ParseException;  
import java.text.SimpleDateFormat;  
import java.util.Calendar;  
import java.util.Date; 

public class exec extends ActionSupport{
	ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
	
	private String username;
	private String password;
	private String color;
	private String toJsp;
	private teacherinf tecinf;
	private studentinf stdinf;
	
	private String rows;
	
	private String search;
	
	private String fbflag;
	
	private String letter;

	/**
	 * @return the toJsp
	 */
	public String getToJsp() {
		return toJsp;
	}



	/**
	 * @param toJsp the toJsp to set
	 */
	public void setToJsp(String toJsp) {
		this.toJsp = toJsp;
	}



	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}



	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}



	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}



	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}



	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}



	/**
	 * @param color the color to set
	 */
	public void setColor(String color) {
		this.color = color;
	}
////////////////////////////////////////////////
	public void setRows(String rows) {
		this.rows = rows;
	}
	
	public String getRows() {
		return rows;
	}
	
////////////////////////////////////////////////////	
	public void setSearch(String search) {
		this.search = search;
	}
	public String getSearch() {
		return search;
	}

	public void setFbflag(String fbflag) {
		this.fbflag = fbflag;
	}
	public String getFbflag() {
		return fbflag;
	}

	public void setLetter(String letter) {
		this.letter = letter;
	}
	public String getLetter() {
		return letter;
	}
	

	
	public String searchTmp() {
		System.out.println("searchTmp");
		return "success";
	}
	
	public String searchTec() {		
		mysql connect = new mysql();	
		List<String> inf = new ArrayList<String>();
		teacherinf tec = new teacherinf();
		String sql = "select * from teacher where Name = '"+ search+"'";
		System.out.println(sql);		//  test
		System.out.println("username: "+ username);
		
		inf = connect.select(sql);
//		System.out.println(inf);		//test
		if(inf.size()==0)
			return "Fail";
		
		if(inf.size()!=0) {
	        tec.teacherId=   inf.get(0);
	        tec.teacherName= inf.get(1);
	        tec.teacherGender=inf.get(2);
	        tec.teacherBirthday=inf.get(3);
	        tec.teacherCollege=inf.get(4);                                     
	        tec.teacherPhone=inf.get(5);
	        tec.teacherEmile=inf.get(6);
	        tec.teacherResume=inf.get(7);
	        tec.achievement=inf.get(8);
	        setTecinf(tec);
		}
		setUsername(username);
		setWeeknum(Weeks());
		System.out.println("searchinf:"+tecinf.teacherId);
		
		loadTecDate(inf.get(0));	//inf.get(0)为TecID

	//	ActionContext.getContext().put("apptlist1", loadAppt(username));
	//	System.out.println(loadAppt(username));
		loadStuAppt(username);
		
        return "success";
		
	}
	
	
	public String modStuInfTmp() {
		mysql connect = new mysql();
		
		String sql = "update student set ";
		switch(rows) {
		case "a2":
			sql = sql + "Name "; break;
		case "a3":
			sql = sql + "Sex "; break;
		case "a4":
			sql = sql + "Birthday "; break;
		case "a6":
			sql = sql + "College "; break;
		case "a7":
			sql = sql + "PhoneNum "; break;
		case "a8":
			sql = sql + "Email "; break;
		}
		sql = sql + "= '" + toJsp + "' where StuID = '" + username + "'";
		System.out.println(sql);
		
		int flag;
		flag = connect.update(sql);
		if(flag==1) {
			return "success";
		} else {
			System.out.println("fail");
			return "fail";
		}
		
	}
	
	public String modTecInfTmp() {
		mysql connect = new mysql();
		
		String sql = "update teacher set ";
		switch(rows) {
		case "s2":
			sql = sql + "Name "; break;
		case "s3":
			sql = sql + "Sex "; break;
		case "s4":
			sql = sql + "Birthday "; break;
		case "s5":
			sql = sql + "College "; break;
		case "s6":
			sql = sql + "PhoneNum "; break;
		case "s7":
			sql = sql + "Email "; break;
		case "s8":
			sql = sql + "Resume "; break;
		case "s11":
			sql = sql + "Achievement "; break;
		}
		sql = sql + "= '" + toJsp + "' where TecID = '" + username + "'";
		System.out.println(sql);
		
		int flag;
		flag = connect.update(sql);
		if(flag==1) {
			return "sucess";
		} else {
			System.out.println("fail");
			return "fail";
		}
		
	}
	

	public String execute() 
	{
		int signnum=2;
		mysql data = new mysql();
		teacherinf tec = new teacherinf();
		studentinf tec2 = new studentinf();
		List<String> inf = new ArrayList<String>();
		List<String> std = new ArrayList<String>();
		String sql = "select * from teacher where TecID = " + username;
		String sql2 = "select * from student where StuID = " + username;  
		System.out.println("color = "+color);
		
		try {
		    if(color.equals("学生")){
	            //    Statement stmt = connect.createStatement();
	                std = data.select(sql2);
	                if(std.size()==0) {
	                    return "error";
	                }
	                if(std.get(7).equals(password)) {       //password在Student表中的第七列
	                    tec2.StdID=std.get(0);
	                    tec2.Name=std.get(1);
	                    tec2.Gender=std.get(2);
	                    tec2.BirthDay=std.get(3);
	                    tec2.College=std.get(4);
	                    tec2.PhoneNum=std.get(5);
	                    tec2.Email=std.get(6);
	                    stdinf = tec2;
	                    color = tec2.Name;
	                    return "STUDENT";
	                }else {
	                    return "error";
	                }

	        }
		    
	        if(color.equals("教师")){
	            System.out.println(color);
	                //    Statement stmt = connect.createStatement();
	                    inf = data.select(sql);
	                    
	                    if(inf.size()==0) {
	                        return "error";
	                    }
	                    if(inf.get(11).equals(password)) {      //password在Student表中的第七列
	                        //  session.setAttribute("TecID", TecInf.get(0));
	                        //  session.setAttribute("TecInf", TecInf);
	                        tec.teacherId=   inf.get(0);
                            tec.teacherName= inf.get(1);
                            tec.teacherGender=inf.get(2);
                            tec.teacherBirthday=inf.get(3);
                            tec.teacherCollege=inf.get(4);                                     
                            tec.teacherPhone=inf.get(5);
                            tec.teacherEmile=inf.get(6);
                            tec.teacherResume=inf.get(7);
                            tec.achievement=inf.get(8);
                            color = tec.teacherName+color;
                            setTecinf(tec);
	                        return "TECAHER";
	                        }else {
	                            return "error";
	                        }

	                }
		     
			String validator;                 //验证字符串
		    validator = "jkl";
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setCharacterEncoding("UTF-8");
			//color  =  new  String(request.getParameter("color").getBytes("ISO-8859-1"), "utf-8");
			if(inf.isEmpty()&&password.equals(tec.password))
			{
				signnum=0;
				return "success";
			}
			else
			{
				validator="ERROR";
				request.setAttribute("validator", validator);
				signnum=1;
				return "error";
			}
		}catch(Exception e){
	    	 System.out.print("登录失败，请重新登录！");
	    	 ActionContext.getContext().put("key", "未选择功能，请返回上一步重新操作！"); 
	    	 e.printStackTrace();
	     }
		if(signnum==0) {
			return "success";
		}
		else if(signnum==1){
			return "error";
		}
		else {
			return "chain";
		}
	}
	
	public String modTecInf() {
	    loadTecInf(username);
	    loadTecDate(username);
	    loadTecAppt(username);
		
        setWeeknum(Weeks());
  //=====================================
        session.setAttribute("TecID", username);
        
		return "success";
	}
	
	public String modStuInf() {
	    mysql data = new mysql();
        studentinf std = new studentinf();
        List<String> inf = new ArrayList<String>();        
        String sql = "select * from student where StuID = " + username;
        System.out.println(sql);
        
        inf = data.select(sql);
        System.out.println(inf);
        
        std.StdID=   inf.get(0);
        std.Name= inf.get(1);
        std.Gender=inf.get(2);
        std.BirthDay=inf.get(3);
        std.College=inf.get(4);                                     
        std.PhoneNum=inf.get(5);
        std.Email=inf.get(6);
        color = std.Name+color;
        setStdinf(std);

		return "success";
	}
	
		public String searchTecLetter() {
		List<String> list= new ArrayList<String>();
		List<String> list2= new ArrayList<String>();
    	mysql data = new mysql();
		char s = letter.toUpperCase().charAt(0);
    	
    	String  sql= "select Name  from teacher order by   ELT(INTERVAL(CONV(HEX(left(CONVERT("+"'"+s+"'"+" USING gbk),1)),16,10),"
    			+"0xB0A1,0xB0C5,0xB2C1,0xB4EE,0xB6EA,0xB7A2,0xB8C1,0xB9FE,0xBBF7,"
    			+"0xBFA6,0xC0AC,0xC2E8,0xC4C3,0xC5B6,0xC5BE,0xC6DA,0xC8BB,0xC8F6,"
    			+"0xCBFA,0xCDDA,0xCEF4,0xD1B9,0xD4D1),"
    			+"'A','B','C','D','E','F','G','H','J','K','L','M','N','O','P',"
    			+"'Q','R','S','T','W','X','Y','Z') asc";
    	list = data.select(sql);    	
    	
    	for (int i=0;i<list.size();i++){
    		String s2 = list.get(i);
    		if(s2.charAt(0) == s){
    			for (int j=i+1;j<list.size();j++){
    				if(list.get(j).charAt(0)==s+1) break;
    				System.out.print(list.get(j));
    			//	if(list.get(j).length()==3)	list2.add(list.get(j));
    			//	else list2.add(list.get(j)+"  ");
    				list2.add(list.get(j));
    			//	ActionContext.getContext().put("teacherlist", list);
    			}
    		}
    	}
    	ActionContext.getContext().put("teacherlist", list2);
    	System.out.print(list2.size());
    	return "success";
	}
	
    public String delete()
    {
        
        return "success";
    }


    public teacherinf getTecinf() {
        return tecinf;
    }



    public void setTecinf(teacherinf tecinf) {
        this.tecinf = tecinf;
    }



    public studentinf getStdinf() {
        return stdinf;
    }



    public void setStdinf(studentinf stdinf) {
        this.stdinf = stdinf;
    }

    
   
    
}