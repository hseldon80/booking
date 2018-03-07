package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "Condizioni")
@ViewScoped
public class Condizioni extends Pagina {

	public Condizioni () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
	
	public String buttonNuovoCancellazione() {
		return "Condizioni_Cancellazione.xhtml";
	}
	
	public String buttonNuovoPagamento() {
		return "Condizioni_Pagamento.xhtml";
	}
	
	public String buttonNuovoCosti() {
		return "Condizioni_Costi.xhtml";
	}
	
	public String buttonActionCancellazione(Object selected) {        		
		return "Condizioni_Cancellazione.xhtml";
	}
	
	public String buttonActionPagamento(Object selected) {        		
		return "Condizioni_Pagamento.xhtml";
	}
	
	public String buttonActionCosti(Object selected) {        		
		return "Condizioni_Costi.xhtml";
	}
	
	public String buttonAnnullaAltro() { 
		return null;
	}
	
	public String buttonAnnulla() {
		return "Condizioni.xhtml";
	}
	
	public String buttonSalvaCancellazione() {
		return null;
	}
	
	public String buttonSalvaPagamento() {
		return null;
	}
		
	public String buttonSalvaAltro() {
		return null;
	}
	
	public String buttonSalvaCosti() {
		return null;
	}
	
	public String buttonEliminaCancellazione() {  
		return "Condizioni.xhtml";
	}
		
	public String buttonEliminaPagamento() {  
		return "Condizioni.xhtml";
	}
	
	public String buttonEliminaCosti() {  
		return "Condizioni.xhtml";
	}
	
	
}
