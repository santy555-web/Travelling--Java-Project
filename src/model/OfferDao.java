package model;
import java.sql.*;
import java.util.ArrayList;
import java.io.*;
public class OfferDao {

	public int addOffer(AddOffer p) throws SQLException, IOException
	{
		PreparedStatement st=OracleCon.getCon().prepareStatement("insert into offer values(offer_seq.nextval,?,?,?,?,?)");
		
		st.setString(1, p.getTourname());
		st.setString(2, p.getLocation());
		st.setInt(3, p.getDays());
		st.setString(4,p.getDate());
		st.setDouble(5, p.getPrice());
		return st.executeUpdate();
	}
		
	public ArrayList<AddOffer> getoffer()
	{
		ArrayList<AddOffer> al=new ArrayList<AddOffer>();
		Statement st;
		try {
			st = OracleCon.getCon().createStatement();
			ResultSet rs=st.executeQuery("select * from offer");
			while(rs.next())
			{
				AddOffer p1=new AddOffer();
				p1.setOid(rs.getInt(1));
				p1.setTourname(rs.getString(2));
				p1.setLocation(rs.getString(3));
				p1.setDays(rs.getInt(4));
				p1.setDate(rs.getString(5)); 
				p1.setPrice(rs.getDouble(6));
				al.add(p1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}
	
	public int deleteOffer(int id) throws SQLException, IOException
	{
		PreparedStatement st=OracleCon.getCon().prepareStatement("delete from offer where oid=?");
		st.setInt(1, id);
		return st.executeUpdate();
	}
	

	public AddOffer getoffer(int id)
	{
		Statement st;
		AddOffer p1=new AddOffer();
		try {
			st = OracleCon.getCon().createStatement();
			ResultSet rs=st.executeQuery("select * from offer where oid="+id);
			while(rs.next())
			{
				p1.setOid(rs.getInt(1));
				p1.setTourname(rs.getString(2));
				p1.setLocation(rs.getString(3));
				p1.setDays(rs.getInt(4));
				p1.setDate(rs.getString(5)); 
				p1.setPrice(rs.getDouble(6));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p1;
	}
	
	public int editoffer(AddOffer p) throws SQLException, IOException
	{
		PreparedStatement st=OracleCon.getCon().prepareStatement("update offer set tourname=?,location=?,days=?,start_date=?,price=? where oid=?");
		
		st.setString(1, p.getTourname());
		st.setString(2, p.getLocation());
		st.setInt(3, p.getDays());
		st.setString(4,p.getDate());
		st.setDouble(5, p.getPrice());
		st.setInt(6, p.getOid());
		return st.executeUpdate();
	}
}
