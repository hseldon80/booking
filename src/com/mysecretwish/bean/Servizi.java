package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "Servizi")
@ViewScoped
public class Servizi extends Pagina{
	
	public Servizi () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
	
	public String buttonAnnulla() {
		return null;
	}
	
	public String buttonSalvaPasti() {
		return null;
	}
	
	public String buttonSalvaLingua() {
		return null;
	}
	
	public String buttonEliminaLingua(Object selected) {        		
		return null;
	}
		
	public String buttonSalvaAttivita() {
		return null;
	}
	
	public String buttonSalvaRistorazione() {
		return null;
	}
	
	public String buttonSalvaOrarioRistorazione() {  
		return null;
	}
	
	public String buttonEliminaOrarioRistorazione(Object selected) {        		
		return null;
	}
	
	public String buttonSalvaPiscine() {
		return null;
	}
	
	public String buttonSalvaSpa() {
		return null;
	}
	
	public String buttonSalvaTrasporti() {
		return null;
	}
	
	public String buttonSalvaAccoglienza() {
		return null;
	}
		
	public String buttonSalvaIntrattenimento() {
		return null;
	}
		
	public String buttonPulizia() {
		return null;
	}
	
	public String buttonSalvaAlbergo() {
		return null;
	}	
	
	public String buttonSalvaVarie() {
		return null;
	}
	
}
