package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "Indicazioni")
@ViewScoped
public class Indicazioni extends Pagina{

	
	public Indicazioni () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}

	public String buttonNuovo() {
		return "Indicazioni_Dett.xhtml";
	}
	
	public String buttonAction(Object selected) {        		
		return "Indicazioni_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Indicazioni.xhtml";
	}	
	
	public String buttonElimina() {
		return "Indicazioni.xhtml";
	}	
	
}
