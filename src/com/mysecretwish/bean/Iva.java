package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Iva")
@ViewScoped
public class Iva extends Pagina {
	
	public Iva() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
		
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return null;
	}
}
