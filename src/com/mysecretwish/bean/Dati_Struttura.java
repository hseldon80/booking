package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "DatiStruttura")
@ViewScoped
public class Dati_Struttura extends Pagina {

	public Dati_Struttura () {
		
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
	
	
	
}
