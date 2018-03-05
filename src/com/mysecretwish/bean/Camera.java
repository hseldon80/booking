package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "Camera")
@ViewScoped
public class Camera extends Pagina {

	public Camera () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
	
	public String buttonNuovo() {
		return "Camera_Dett.xhtml";
	}
	
	public String buttonAction(Object selected) {        		
		return "Camera_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Camera.xhtml";
	}
	
	public String buttonElimina() {  
		return "Camera.xhtml";
	}
		
	public String buttonSalvaLetti() {
		return null;
	}
		
	public String buttonEliminaLetti(Object selected) {        		
		return null;
	}
		
	public String buttonSalvaDimensioni() {
		return null;
	}
		
	public String buttonSalvaDotazioni() {
		return null;
	}
	
	public String buttonSalvaBagno() {
		return null;
	}	
	
	public String buttonSalvaMedia() {
		return null;
	}
	
	public String buttonSalvaRistorazione() {
		return null;
	}	
	
	public String buttonSalvaVista() {
		return null;
	}
		
	public String buttonSalvaAccessibilita() {
		return null;
	}
		
	public String buttonSalvaIntrattenimento() {
		return null;
	}
	
}
