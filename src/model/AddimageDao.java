package model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AddimageDao {

	public int addimage(addimages p) throws SQLException, IOException
	{
		PreparedStatement st=OracleCon.getCon().prepareStatement("insert into addimage values(image_seq.nextval,?)");
		InputStream is=p.getImage1().getInputStream();
		st.setBlob(1, is);
		return st.executeUpdate();
	}
	
	
	public ArrayList <addimages> getimage()
	{
			ArrayList<addimages> al=new ArrayList<addimages>();
			Statement st;
			try {
				st = OracleCon.getCon().createStatement();
				ResultSet rs=st.executeQuery("select * from addimage");
				while(rs.next())
				{
					addimages p=new addimages();
					p.setImd(rs.getInt(1));
					al.add(p);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return al;
	}
}


