package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "Interesse")
@ViewScoped
public class Interesse extends Pagina {
	
	public Interesse () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
		
	
	public String buttonSalvaMonte() {
		return null;
	}
	
	public String buttonSalvaLago() {
		return null;
	}
	
	public String buttonSalvaFiume() {
		return null;
	}
	
	public String buttonSalvaMare() {
		return null;
	}
	
	public String buttonSalvaSpiaggia() {
		return null;
	}
	
	public String buttonSalvaSkilift() {
		return null;
	}
	
	public String buttonAnnulla() { 
		return "Interesse.xhtml";
	}
	
	public String buttonNuovoMonte() {
		return "Interesse_Monte.xhtml";
	}
	
	public String buttonNuovoLago() {
		return "Interesse_Lago.xhtml";
	}
	
	public String buttonNuovoFiume() {
		return "Interesse_Fiume.xhtml";
	}
	
	public String buttonNuovoMare() {
		return "Interesse_Mare.xhtml";
	}
	
	public String buttonNuovoSpiaggia() {
		return "Interesse_Spiaggia.xhtml";
	}
	
	public String buttonNuovoSkilift() {
		return "Interesse_Skilift.xhtml";
	}
	
	public String buttonActionMonte(Object selected) {        		
		return "Interesse_Monte.xhtml";
	}
	
	public String buttonActionLago(Object selected) {        		
		return "Interesse_Lago.xhtml";
	}
	
	public String buttonActionFiume(Object selected) {        		
		return "Interesse_Fiume.xhtml";
	}
	
	public String buttonActionMare(Object selected) {        		
		return "Interesse_Mare.xhtml";
	}
	
	public String buttonActionSpiaggia(Object selected) {        		
		return "Interesse_Spiaggia.xhtml";
	}
	
	public String buttonActionSkilift(Object selected) {         		
		return "Interesse_Skilift.xhtml";
	}
	
	public String buttonEliminaMonte() {
		return "Interesse.xhtml";
	}
	
	public String buttonEliminaLago() {
		return "Interesse.xhtml";
	}
	
	public String buttonEliminaFiume() {
		return "Interesse.xhtml";
	}
	
	public String buttonEliminaMare() {
		return "Interesse.xhtml";
	}
	
	public String buttonEliminaSpiaggia() {
		return "Interesse.xhtml";
	}
	
	public String buttonEliminaSkilift() {
		return "Interesse.xhtml";
	}
}
