package com.study;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {

	@RequestMapping("uploadnotes")
	public ModelAndView uploadForm() {
		return new ModelAndView("uploadnotes");
	}

	@RequestMapping(value = "savefile", method = RequestMethod.POST)
	public ModelAndView saveimage(@RequestParam CommonsMultipartFile file, @RequestParam("title") String t,
			@RequestParam("search") String s, HttpSession session) throws Exception {

		//ServletContext context = session.getServletContext();
		String path = "D:/eclipse-workspace/StudyProject/src/main/webapp/notes";
		String filename = file.getOriginalFilename();

		System.out.println(path + "/" + filename);

		byte[] bytes = file.getBytes();

		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));

		stream.write(bytes);
		stream.flush();
		stream.close();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
			Statement st = con.createStatement();
			st.executeUpdate(
					"insert into download(title,notes,subject) values ('" + t + "','" + path + "','" + s + "')");
		} catch (Exception obj) {
			System.out.println("error" + obj.getMessage());
		}
		return new ModelAndView("uploadnotes", "filesuccess", "File successfully saved!");
	}

	
	
	@RequestMapping("uploadbooks")
	public ModelAndView uploadForm1() {
		return new ModelAndView("uploadbooks");
	}

	@RequestMapping(value = "savefile1", method = RequestMethod.POST)
	public ModelAndView saveimage1(@RequestParam CommonsMultipartFile file, @RequestParam("title") String t,
			@RequestParam("subject") String s, HttpSession session) throws Exception {

		//ServletContext context = session.getServletContext();
		String path = "D:/eclipse-workspace/StudyProject/src/main/webapp/notes";
		String filename = file.getOriginalFilename();

		System.out.println(path +"/"+ filename);

		byte[] bytes = file.getBytes();

		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(path+"/"+ filename));

		stream.write(bytes);
		stream.flush();
		stream.close();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
			Statement st = con.createStatement();
			st.executeUpdate(
					"insert into download(title,book,subject) values ('" + t + "','" + path + "','" + s + "')");
		} catch (Exception obj) {
			System.out.println("error" + obj.getMessage());
		}
		return new ModelAndView("uploadnotes", "filesuccess", "Book successfully uploaded!");
	}
	
	
	@RequestMapping("uploadplaylist")
	public ModelAndView uploadForm2() {
		return new ModelAndView("uploadplaylist");
	}

	
	
	@RequestMapping("/savefile2")
	public String saveimage2(HttpServletRequest req,Model m, @RequestParam("title") String t,
			@RequestParam("subject") String s) {
		
		String file1 = req.getParameter("file1");
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
			Statement st = con.createStatement();
			st.executeUpdate(
					"insert into download(title,playlist,subject) values ('" + t + "','" + file1+ "','" + s + "')");
		} catch (Exception obj) {
			System.out.println("error" + obj.getMessage());
		}
		return "uploadplaylist";
	}
	
		
		
		
		
		
}
