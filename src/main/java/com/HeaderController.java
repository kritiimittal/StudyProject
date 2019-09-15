package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class HeaderController {
	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/first")
	public String index2() {
		return "first";
	}

	@RequestMapping("/getuser")
	public String index3() {
		return "getuser";
	}

	
	
	@RequestMapping("/viewnotes")
	public String notes(@RequestParam("sub") String sub, @RequestParam("sem") String sem,
			@RequestParam("user") String user, Model m) {

		System.out.println(sub);
		System.out.println(sem);
		m.addAttribute("sub",sub);
		m.addAttribute("sem",sem);
		m.addAttribute("user",user);
			//System.out.println(branch);
		return "viewnotes";
	}

	
	@RequestMapping("/CountryListCheck")
	public void auto(HttpServletRequest request,HttpServletResponse response) throws IOException {
	String term = request.getParameter("term");
	System.out.println("Data from ajax call " + term);
	ArrayList<String> list = new op_contact().getAllCountriesCheck(term);
	System.out.println(list);
	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	String Json = gson.toJson(list);
	response.getWriter().write(Json);
	//return "CountryListCheck";
	}


	
}