package com.dyung.kim;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dyung.kim.service.ItemService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
   
   @Autowired
   private ItemService is;
   
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Model model) {
      ArrayList<HashMap<Object,Object>> list = is.selectItemAll();
      
      model.addAttribute("list", list);
      
      return "home";
   }

   
}