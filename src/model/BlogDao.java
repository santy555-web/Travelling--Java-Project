package model;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.Part;
import java.io.*;

public class BlogDao 
{
	public int addblog(Blog p) throws SQLException, IOException
	{
		PreparedStatement st=OracleCon.getCon().prepareStatement("insert into blog values(blog_seq.nextval,?,?,?,?,?,sysdate)");
		st.setString(1, p.getName());
		st.setString(2, p.getCountry());
		st.setString(3, p.getDescription());
		InputStream is=p.getImage().getInputStream();
		st.setBlob(4, is);
		st.setInt(5, p.getCid());
		return st.executeUpdate();
}
	
	
public ArrayList <Blog> getblog()
{
		ArrayList<Blog> al=new ArrayList<Blog>();
		Statement st;
		try {
			st = OracleCon.getCon().createStatement();
			ResultSet rs=st.executeQuery("select * from (select * from  blog order by dbms_random.value) where rownum<=3");
			while(rs.next())
			{
				Blog p1=new Blog();
				p1.setBid(rs.getInt(1));
				p1.setName(rs.getString(2));
				p1.setCountry(rs.getString(3));
				p1.setDescription(rs.getString(4));
				p1.setDates(rs.getString(7));
				al.add(p1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
}

public static Blog getblog(int id)
		{
		Blog p1=new Blog();
		PreparedStatement st;
		try {
			st = OracleCon.getCon().prepareStatement("select * from blog where bid=?");
			st.setInt(1, id);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				p1.setBid(rs.getInt(1));
				p1.setName(rs.getString(2));
				p1.setCountry(rs.getString(3));
				p1.setDescription(rs.getString(4));
				p1.setDates(rs.getString(7));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p1;
}
	
	
public ArrayList<Blog> searchBlog(String n)
		{
		Statement st;
		ArrayList<Blog> al=new ArrayList<Blog>();
		try {
			st = OracleCon.getCon().createStatement();
			ResultSet rs=st.executeQuery("select * from blog where bid in (select bid from blog where name like '%"
			+n+"%') or bid in (select bid from blog where country like '%"+n+"%') or bid in (select bid from blog where description like '%"+n+"%')"
					+ "or bid in (select bid from blog where cid in (select cid from category where name like '%"+n+"%'))");
			while(rs.next())
			{
				Blog p1=new Blog();
				p1.setBid(rs.getInt(1));
				p1.setName(rs.getString(2));
				p1.setCountry(rs.getString(3));
				p1.setDescription(rs.getString(4));
				p1.setCid(rs.getInt(6));
				al.add(p1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}
}
