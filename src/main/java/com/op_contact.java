package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.Statement;
import java.util.ArrayList;

public class op_contact {
	public ArrayList<String> getAllCountriesCheck(String l) {
        ArrayList<String> list = new ArrayList<String>();
        PreparedStatement ps = null;
        String data;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
			//Statement st = con.createStatement();
            String ch=l+"%";
            ps = (PreparedStatement) con.prepareStatement("SELECT distinct subject FROM download  WHERE subject  LIKE '"+ch+"'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                data = rs.getString("subject");
                System.out.println(data);
                list.add(data);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }
}
