package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.*;

public class BookDao {

	public int addbook(Book c) {
		int i = 0;
		PreparedStatement st;
		try {
			st = OracleCon.getCon().prepareStatement("insert into book values(book_seq.nextval,?,?,?,?,?,?,?,?,?)");
			st.setString(1, c.getUname());
			st.setString(2, c.getGmail());
			st.setString(3, c.getTname());
			st.setString(4, c.getLocations());
			st.setString(6, c.getDates());
			st.setInt(5, c.getDays());
			st.setDouble(7, c.getPrice());
			st.setInt(8, c.getNoofperson());
			st.setInt(9, c.getCid());
			i = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public int removeData(int cid) {
		int i = 0;
		PreparedStatement st;
		try {
			st = OracleCon.getCon().prepareStatement("delete from Book where cid=?");
			st.setInt(1, cid);

			i = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public ArrayList<Book> getbook(String u) {
		ArrayList<Book> al = new ArrayList<Book>();
		Statement st;
		try {
			st = OracleCon.getCon().createStatement();
			ResultSet rs = st.executeQuery("select * from book where gmail='"+u+"'");
			while (rs.next()) {
				Book p1 = new Book();
				p1.setUname(rs.getString(2));
				p1.setGmail(rs.getString(3));
				p1.setTname(rs.getString(4));
				p1.setLocations(rs.getString(5));
				p1.setDays(rs.getInt(6));
				p1.setDates(rs.getString(7));
				p1.setPrice(rs.getDouble(8));
				p1.setNoofperson(rs.getInt(9));
				p1.setCid(rs.getInt(10));
				al.add(p1);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return al;
	}

	public static Book getbook(int id)

	{

		Book p1 = new Book();
		Statement st;
		try {
			st = OracleCon.getCon().createStatement();
			ResultSet rs = st.executeQuery("select * from book where cid='" + id + "'");
			while (rs.next()) {

				p1.setUname(rs.getString(1));
				p1.setGmail(rs.getString(2));
				p1.setTname(rs.getString(3));
				p1.setLocations(rs.getString(4));
				p1.setDates(rs.getString(6));
				p1.setDays(rs.getInt(5));
				p1.setNoofperson(rs.getInt(8));
				p1.setPrice(rs.getDouble(7));
				p1.setCid(rs.getInt(9));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return p1;
	}

}
