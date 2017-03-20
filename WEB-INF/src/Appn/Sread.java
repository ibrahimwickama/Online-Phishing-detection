package Appn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import static Appn.Constants.*;

public class Sread {
    public static void main(String a[]) {
        Vector v = new Sread().getTable("gts11");
        System.out.println(v.size());
    }

    public Vector getTable(String s) {
        Vector v = new Vector();

        try {
            int sno = 0;

            Connection conn = DriverManager.getConnection(dbURl, username, password);
            PreparedStatement st = conn.prepareStatement("Select * from LIST");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                TabForm tf = new TabForm("" + (++sno), rs.getString("name"), rs.getString("role"));
                v.add(tf);

            }

            st.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();

        }

        return v;
    }
}