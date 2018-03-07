package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "PromozionePrivato")
@ViewScoped
public class Promozione_Privato extends Pagina {

	public Promozione_Privato () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println(""); 
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}	
		
	public String buttonAction(Object selected) {        		
		return "Camere_Promozione.xhtml";
	}
	
	public String buttonActionCamera(Object selected) {        		
		return "Richiesta_Preventivi_Promozione.xhtml";
	}
			
	public String buttonSalvaPreventivo() {
		return "Promozioni_Privato.xhtml"; 
	}
	
	public String buttonAnnulla() {
		return "Camere_Promozione.xhtml";  
	}
			
	
}
