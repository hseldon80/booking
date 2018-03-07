package com.mysecretwish.bean;

import java.util.HashMap;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import com.mysecretwish.utility.StampeUtility;

@ManagedBean(name = "Fatture")
@ViewScoped
public class Fatture extends Pagina {

	public Fatture () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
		
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() { 
		return null;
	}
	
	public void handleChange(){
		System.out.println("handleChange");
	}
	
	public String buttonStampa(Object selected) { 
		try {
			HashMap<String,Object> reportParams = new HashMap<String,Object>();
			String templatePath = "/Report/testa.jasper";      
			new StampeUtility().PDF("testa",reportParams,null,templatePath);
		} catch (Throwable t){
			t.printStackTrace(); 
		}
		return null;
	}
	
	
	
}
