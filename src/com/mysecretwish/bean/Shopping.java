package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "Shopping")
@ViewScoped
public class Shopping extends Pagina {
	
	public Shopping () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
		
	
	public String buttonSalvaRistorante() {
		return null;
	}
	
	public String buttonSalvaCaffetteria() {
		return null;
	}
	
	public String buttonSalvaMinimarket() {
		return null;
	}
	
	public String buttonSalvaMercato() {
		return null;
	}
	
	public String buttonAnnulla() { 
		return "Shopping.xhtml";
	}
	
	public String buttonNuovoRistorante() {
		return "Shopping_Ristorante.xhtml";
	}
	
	public String buttonNuovoCaffetteria() {
		return "Shopping_Caffetteria.xhtml";
	}
	
	public String buttonNuovoMinimarket() {
		return "Shopping_Minimarket.xhtml";
	}
	
	public String buttonNuovoMercato() {
		return "Shopping_Mercato.xhtml";
	}
	
	
	public String buttonActionRistorante(Object selected) {        		
		return "Shopping_Ristorante.xhtml";
	}
	
	public String buttonActionCaffetteria(Object selected) {        		
		return "Shopping_Caffetteria.xhtml";
	}
	
	public String buttonActionMinimarket(Object selected) {        		
		return "Shopping_Minimarket.xhtml";
	}
	
	public String buttonActionMercato(Object selected) {        		
		return "Shopping_Mercato.xhtml";
	}
	
	public String buttonEliminaRistorante() {
		return "Shopping.xhtml";
	}
	
	public String buttonEliminaCaffetteria() {
		return "Shopping.xhtml";
	}
	
	public String buttonEliminaMinimarket() {
		return "Shopping.xhtml";
	}
	
	public String buttonEliminaMercato() {
		return "Shopping.xhtml";
	}
	
}
