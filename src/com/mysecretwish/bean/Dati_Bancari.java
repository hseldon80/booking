package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "DatiBancari")
@ViewScoped
public class Dati_Bancari extends Pagina {

	public Dati_Bancari () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println(""); 
	}
	
	public String buttonNuovo() {        		
		return "Dati_Bancari_Dett.xhtml";
	}
		
	
	public String buttonAction(Object selected) {        		
		return "Dati_Bancari_Dett.xhtml";
	}
	
	public String buttonSalva() {  
		return null;
	}
	
	public String buttonAnnulla() {
		return "Dati_Bancari.xhtml";
	}
	
	public String buttonElimina() {  
		return "Dati_Bancari.xhtml";
	}
	
}
