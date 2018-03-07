package com.mysecretwish.bean;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "TrovaOfferte")
@ViewScoped
public class TrovaOfferte extends Pagina{	
	private String budget_selezionato = "0"; 

	
	public TrovaOfferte () { 
		System.out.println("");
	}
	
	@PostConstruct
    public void init() {
	
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public void buttonRicercaAvanzata(ActionEvent actionEvent) { 
		System.out.println("Ricerca Avanzata");
	}
	
	public String buttonAction(Object selected) {        		
		return "Camere_Disponibili.xhtml";
	}

	public String buttonActionCamera(Object selected) {         		
		return "Richiesta_Preventivi_Privato.xhtml";
	}
	
	public String buttonAnnulla() {
		return "Camere_Disponibili.xhtml";
	}
	
	public String buttonSalvaPreventivo() { 
		return "Trova_Offerte.xhtml";
	}
	
	public String getBudget_selezionato() {
		return budget_selezionato;
	}

	public void setBudget_selezionato(String budget_selezionato) {
		this.budget_selezionato = budget_selezionato;
	}
	
	
}
