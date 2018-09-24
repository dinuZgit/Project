package com.example.demo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.dao.DeviceDao;
import com.example.demo.model.Device;
import com.example.demo.model.FaultManagement.Fault;

@Controller
public class DeviceController {

	@Autowired
	public DeviceDao devdao;
	
	@RequestMapping(value="/dform",method=RequestMethod.GET)
	public String reg(ModelMap model) {
	
		Device device = new Device();
		model.addAttribute("device",device);
		return "deviceform.jsp";
	}	
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String enterDevice(@Valid Device dev,BindingResult result,ModelMap model,RedirectAttributes redirectAttributes) {
		
		//if(result.hasErrors()) {
			
			
		//}
		devdao.save(dev);
		return "redirect:/view";
		//return "redirect:/new";
		}
	
	@RequestMapping(value="/view",method=RequestMethod.GET)  	
    public ModelAndView viewd(){  
        List<Device> list=devdao.getAllDevicess();
        return new ModelAndView("viewdevices.jsp","list",list);  
    }
	
	@RequestMapping("editdevice")
	public String editdform() {
		return "editdevice.jsp";
	}
	
	@RequestMapping(value="/editdevice/{id}",method=RequestMethod.GET)
	public String ed(@PathVariable int id, ModelMap model) {
		
		Device device= devdao.getDEvicebyID(id);
		model.addAttribute("eddevice", device);
		return "/editdevice";
	}
	
	@RequestMapping(value="/edsave",method = RequestMethod.POST)  
    public ModelAndView edtsave(@ModelAttribute("eddevice") Device dev){  
    	System.out.println("id is"+dev.getDeviceID());
    	devdao.update(dev);  
        return new ModelAndView("redirect:/view");  
    } 
 
 @RequestMapping(value="/deletedev/{jobid}",method = RequestMethod.GET)  
    public ModelAndView dele(@PathVariable int jobid){  
    	devdao.delete(jobid);  
        return new ModelAndView("redirect:/view");  
    }  
    
      
    @RequestMapping(value="/deleted",method = RequestMethod.GET)  
    public ModelAndView delet(){  
    	devdao.delete();  
        return new ModelAndView("redirect:/dform");  
    }  
}
