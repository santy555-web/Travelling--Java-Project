package model;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.ArrayList;
@SuppressWarnings("unused")
public class RegisterDao {
	static Connection con=OracleCon.getCon();
	
	public static int addUser(Register r) throws SQLException
	{
		int i=0;
		PreparedStatement st=OracleCon.getCon().prepareStatement("insert into register values(?,?,?,?)");
		st.setString(1, r.getName());
		st.setString(2, r.getGmail());
		st.setString(3, r.getPassword());
		st.setString(4, r.getRe_enterpassword());
		i = st.executeUpdate();
		return i;
	}
	
	
	public static ArrayList<Register> getuser()
	{	
		ArrayList<Register> al=new ArrayList<Register>();
		Statement st;
		try {
		
			st = OracleCon.getCon().createStatement();
			ResultSet rs=st.executeQuery("select name,gmail,password from register");
			while(rs.next())
			{
				Register p=new Register();
				p.setName(rs.getString(1)); 
				p.setGmail(rs.getString(2));
				p.setPassword(rs.getString(3));
				al.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}
	
	public static ArrayList<Register> getuserandbook()
	{	
		ArrayList<Register> al=new ArrayList<Register>();
		Statement st;
		try {
		
			st = OracleCon.getCon().createStatement();
			ResultSet rs=st.executeQuery("select * from register");
			while(rs.next())
			{
				Register p=new Register();
				p.setName(rs.getString(1)); 
				p.setGmail(rs.getString(2));
				al.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}
	
	
	
	public static Register Validate(String u,String p)
	{
		Register r= new Register();
			Statement st;
			try {
				st = OracleCon.getCon().createStatement();
				ResultSet rs=st.executeQuery("select * from register where gmail='"+u+"' and password='"+p+"'");
				if(rs.next())
				{
					r.setName(rs.getString(1)); 
					r.setGmail(rs.getString(2));
					r.setPassword(rs.getString(3));
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		return r;
	}	
	
	
	
	public int deleteuser(String name) throws SQLException, IOException
	{
		PreparedStatement st=OracleCon.getCon().prepareStatement("delete from register where name='"+name+"'");
		st.setString(1, name);
		return st.executeUpdate();
	}
	
	
	
	public Register getUser(String u)
	{
		//boolean status=false;
		String u1=null;
		Register r=new Register();
		try {
			
			Statement st=OracleCon.getCon().createStatement();
			ResultSet rs=st.executeQuery("select * from register where name='"+u+"'");
			while(rs.next())
			{
				r.setName(rs.getString(1));
				r.setGmail(rs.getString(2));
				r.setPassword(rs.getString(3));
				r.setRe_enterpassword(rs.getString(4));		
			}
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		
		}
		return r;
	}
	
}