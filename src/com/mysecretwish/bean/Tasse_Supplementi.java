package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "TasseSupplementi")
@ViewScoped
public class Tasse_Supplementi extends Pagina{

	public Tasse_Supplementi() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public String buttonNuovo() {
		return "Tasse_Supplementi_Dett.xhtml";
	}
	
	public String buttonAction(Object selected) {        		
		return "Tasse_Supplementi_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Tasse_Supplementi.xhtml";
	}
	
	public String buttonElimina() {  
		return "Tasse_Supplementi.xhtml";
	}
	
}
