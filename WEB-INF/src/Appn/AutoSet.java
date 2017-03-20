package Appn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AutoSet {
    public void check(String name, String type, String server) {
        boolean exist = false;
        try {
            String dbURl = "jdbc:mysql://localhost:3306/phising";
            String username = "root";
            String password = "";
            Connection conn = DriverManager.getConnection(dbURl, username, password);
            PreparedStatement st = conn.prepareStatement("Select * from LIST WHERE name= '" + name + "'");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                exist = true;
            }
            if (!exist) {
                String query = "insert into LIST values('" + name + "','" + type + "')";
                st.executeUpdate(query);

            }
            st.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();

        }


    }


}