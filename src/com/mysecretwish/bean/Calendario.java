package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Calendario")
@ViewScoped
public class Calendario extends Pagina {
	
	public Calendario() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
		
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public void buttonRicercaCompleto(ActionEvent actionEvent) { 
		System.out.println("Ricerca Completo");
	}
	
}
