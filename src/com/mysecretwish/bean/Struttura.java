package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

import org.primefaces.model.UploadedFile;

@ManagedBean(name = "Struttura")
@ViewScoped
public class Struttura extends Pagina{
	private UploadedFile file;
	
	public Struttura () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
	
	public String buttonNuovo() {
		return "Struttura_Dett.xhtml";
	}
	
	public String buttonAction(Object selected) {        		
		return "Struttura_Dett.xhtml";
	}
	
	
	public String buttonScegli(Object selected) {          		
		return null;
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Struttura.xhtml";
	}
	
	public String buttonElimina() {  
		return "Struttura.xhtml";
	}

	public String buttonAggiungiFoto() { 
		if(file != null) {
			System.out.println(file.getFileName());
		}
		return null;
	}
	
	public String buttonEliminaFoto() { 
		return null;
	}
	
	
	public UploadedFile getFile() {
		return file;
	}

	public void setFile(UploadedFile file) {
		this.file = file;
	}
	
	public String buttonSalvaFoto() {         		
		return null;
	}
	
	public String buttonAnnullaFoto() {        		
		return null;
	}
	
}
