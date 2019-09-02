package com;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.mail.SimpleMailMessage;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("feedback")
	public ModelAndView upload() {
		return new ModelAndView("feedback");
	}

	@RequestMapping(value ="simplemail")
	public ModelAndView  display(HttpServletRequest req) {
		String name = req.getParameter("name");
		String mail = req.getParameter("email");
		String msg = req.getParameter("comments");
		//m.addAttribute("message", msg);
		System.out.println(msg);
		
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo("gurunoorsingh218@gmail.com");
		email.setSubject("spring project from : "+mail+" Name : "+name+ "having MailId : "+email);
		email.setText(msg);

		// sends the e-mail
		mailSender.send(email);
		return new ModelAndView("feedback", "filesuccess", "Message sent successfully");
	}

}