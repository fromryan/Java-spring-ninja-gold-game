package com.ryankim.ninjagold.controllers;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@RequestMapping("/gold")
	public String index(HttpSession session) {
		if(session.getAttribute("myGold")==null) {
			session.setAttribute("myGold", 0);
		}
		return "index.jsp";
	}
	
	@RequestMapping(value="/addinggold", method=RequestMethod.POST)
	public String getGold(@RequestParam(value="action") String action, HttpSession session, Model model) {
		Random rand = new Random();
		ArrayList<String> activities = new ArrayList<String>();
		model.addAttribute("activities", activities);
		
		
		if(action.equals("farm")) {
			int farmGold = rand.nextInt(11)+10;
			int myGold = (Integer) session.getAttribute("myGold");
			session.setAttribute("myGold", myGold+farmGold);
			activities.add("You entered a " +action+ " and earned " +farmGold+ " gold.");
			
		}
		
		if(action.equals("cave")) {
			int caveGold = rand.nextInt(6)+5;
			int myGold = (Integer) session.getAttribute("myGold");
			session.setAttribute("myGold", myGold+caveGold);	
		}
		
		if(action.equals("house")) {
			int houseGold = rand.nextInt(4)+2;
			int myGold = (Integer) session.getAttribute("myGold");
			session.setAttribute("myGold", myGold+houseGold);	
		}
		
		if(action.equals("casino")) {
			int casinoGold = rand.nextInt(101)-50;
			int myGold = (Integer) session.getAttribute("myGold");
			session.setAttribute("myGold", myGold+casinoGold);	
		}
		
		System.out.println(activities);	
		return "redirect:/gold";
	}
}
