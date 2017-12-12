package Databases;

import javax.naming.NamingException;
import java.sql.*;
import java.util.ArrayList;

public class SQLiteClass {
    public static Connection conn;
    public static Statement stat;
    public static ResultSet rs;

    public static void Conn() throws ClassNotFoundException, SQLException, NamingException {
        Class.forName("org.sqlite.JDBC");
        //conn = DriverManager.getConnection("jdbc:sqlite:SimpleDatabase");
        conn = DriverManager.getConnection("jdbc:sqlite:C:/Users/AlCloudFox/Desktop/SimpleServlet/src/main/java/Databases/SimpleDatabase");
    }

    public static void addNote(String note) throws ClassNotFoundException, SQLException {
        try {
            Conn();
            stat = conn.createStatement();
            PreparedStatement statement = conn.prepareStatement("INSERT INTO notes (note) VALUES (?)");
            statement.setString(1, note);
            statement.execute();
            statement.close();
        } catch (Exception e) {
            System.out.println(e
            );
        }
        finally {
            stat.close();
            CloseDB();
        }
    }

    public static ArrayList<String> getAllNotes() throws ClassNotFoundException, SQLException, NamingException
    {
        ArrayList<String> notes = new ArrayList<String>();

        Conn();
        stat = conn.createStatement();
        ResultSet rs = stat.executeQuery("select note from notes");

        while (rs.next()) {
            notes.add(rs.getString("note"));
            System.out.println(rs.getString("note"));
        }


        rs.close();
        stat.close();
        CloseDB();

        return notes;
    }

    public static void CloseDB() throws ClassNotFoundException, SQLException {
        conn.close();
    }
}