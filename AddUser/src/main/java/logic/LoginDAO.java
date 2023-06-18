package logic;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class LoginDAO {
	String url = "jdbc:mysql://localhost:3306/adduser";
	String username = "root";
	String password = "sri08#fitness";
		public boolean insertData(User user){
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,username,password);
				PreparedStatement st = con.prepareStatement("insert into user (name) values (?)");
				st.setString(1, user.getName());
				int num = st.executeUpdate();
				System.out.println(num+" of row/s affected");
				if(num>0) {
					return true;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		public boolean deleteData(User user2) {
			try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("delete from user where id=?");
			st.setInt(1, user2.getId());
			int num = st.executeUpdate();
			if(num>0) {
				return true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			return false;
		}
		public boolean updateUser(User user3) {
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,username,password);
				PreparedStatement st = con.prepareStatement("update user set name=? where id=?");
				st.setString(1,user3.getName());
				st.setInt(2, user3.getId());
				int num = st.executeUpdate();
				if(num>0) {
					return true;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
				return false;
		}
}