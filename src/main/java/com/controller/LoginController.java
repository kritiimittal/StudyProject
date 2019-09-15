package com.controller;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.Login;
import com.study.studyjdbc;
import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.BASE64DecoderStream;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.BASE64EncoderStream;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;


@Controller
public class LoginController {
	private static Cipher ecipher;
	private static Cipher dcipher;
	static SecretKeySpec key;
	private static SecretKey key1;
	static BASE64Encoder encoder = new BASE64Encoder();
	static BASE64Decoder decoder = new BASE64Decoder();
	@Autowired
	studyjdbc ldao;

	@RequestMapping("/login")
	public String func1(Model m) {
		m.addAttribute("command", new Login());
		return "login";
	}

	@RequestMapping("/newuser")
	public String func2(){
		
		return "newuser";
	}

	@RequestMapping("/admininsert")
    public String studentinsert(@RequestParam("username") String username,
            @RequestParam("password") String password, 
            @RequestParam("emailid") String emailid, Model m) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
            Statement st = con.createStatement();
            key1 = KeyGenerator.getInstance("DES").generateKey();
            ecipher = Cipher.getInstance("DES");
            ecipher.init(Cipher.ENCRYPT_MODE, key1);
            String keyString = encoder.encode(key1.getEncoded());
            String encrypted = encrypt(password);
            System.out.println(encrypted);
            String sql = "insert into login values('" + username + "','" + encrypted + "','"
            + emailid + "','" + keyString + "')";
            st.executeUpdate(sql);
            return "login";
            } catch (Exception obj) {
            System.out.print(obj.getMessage());
            return "newuser";
            }
          
    }


	@RequestMapping(value = "/logged_in", method = RequestMethod.POST)
    public String studentcheck(@RequestParam("username") String username,
            @RequestParam("password") String password, Model m) {
        String s = "", pass = "";
        String key2 = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
            Statement st = con.createStatement();
            ResultSet res = st.executeQuery("select * from login where username ='" + username + "'");
            int i = 0;
            while (res.next()) {
                i++;
                pass= res.getString(2);
                key2 = res.getString(4);

            }
            if (i > 0) {
                dcipher = Cipher.getInstance("DES");
                byte[] encodedKey = decoder.decodeBuffer(key2);
                key = new SecretKeySpec(encodedKey, 0, encodedKey.length, "DES");
                dcipher.init(Cipher.DECRYPT_MODE, key);
                String decrypted = decrypt(pass);
                System.out.println(key);
                System.out.println(password);
                System.out.println(decrypted);
                if (decrypted.equals(password)) {
                    s = "upload";
                } else {
                    String msg = "Sorry . You entered an incorrect password";
                    m.addAttribute("message", msg);
                    s = "login";
                }

            } else if (i == 0) {

                String msg = "Sorry . You Have entered wrong username";
                m.addAttribute("message", msg);
                s = "login";
            }

        } catch (Exception obj) {
            s = obj.getMessage();
        }
        return s;
    }



    public static String encrypt(String str) {
        try {
            // encode the string into a sequence of bytes using the named charset
            // storing the result into a new byte array.
            byte[] utf8 = str.getBytes("UTF8");
            byte[] enc = ecipher.doFinal(utf8);
// encode to base64
            enc = BASE64EncoderStream.encode(enc);
            return new String(enc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String decrypt(String str) {
        try {
            // decode with base64 to get bytes
            byte[] dec = BASE64DecoderStream.decode(str.getBytes());
            byte[] utf8 = dcipher.doFinal(dec);
// create new string based on the specified charset
            return new String(utf8, "UTF8");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
