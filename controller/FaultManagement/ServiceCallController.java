package com.example.demo.controller.FaultManagement;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.dao.FaultManagement.ServiceCallDao;
import com.example.demo.model.FaultManagement.ServiceCall;

@Controller
public class ServiceCallController {

	
	@Autowired
	public ServiceCallDao servdao;
	
	@RequestMapping("servicall")
	public String servcall() {
    	System.out.println("hbsdb");
		return "FaultManagementJsps/servicecallform";
	}
	
	@RequestMapping(value="/servicall/{id}",method=RequestMethod.GET)
	public String sercall(@PathVariable int id, ModelMap mod) {
		
		ServiceCall sc = new ServiceCall(id);
		System.out.println(id);
		System.out.println(sc.getFauid());
		System.out.println(sc.getServiceID());
		System.out.println(sc.getFaultDesc());
		mod.addAttribute("sc", sc);
		return "FaultManagementJsps/servicecallform";
	}
	
	
	 
	/* It updates record for the given id in editfault page and redirects to /detail */  
	 @RequestMapping(value="/addto",method = RequestMethod.POST)  
	    public String savesercall(@Valid ServiceCall sca,BindingResult result, Model model,RedirectAttributes redirectAttributes){  
	    	System.out.println("id is"+sca.getFauid());
	    	
	    	servdao.save(sca);  
	    	return "redirect:/detail";  
	    } 
	 
	 
}
