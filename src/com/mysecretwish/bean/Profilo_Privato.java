package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.primefaces.model.UploadedFile;

@ManagedBean(name = "ProfiloPrivato")
@ViewScoped
public class Profilo_Privato extends Pagina {
	private UploadedFile file;
	
	public Profilo_Privato () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}

	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return null;
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

	public String buttonSalvaIndirizzo() { 
		return null;
	}
	
	public String buttonSalvaCarta() { 
		return null;
	}
		
	public String buttonSalvaPagamento() {    
		return null;
	}
	
	public String buttonSalvaViaggio() { 
		return null;
	}
	
	public String buttonNuovoGruppo() {
		return "Gruppo_Dett.xhtml";
	}
	
	public String buttonActionGruppo(Object selected) {        		
		return "Gruppo_Dett.xhtml";
	}
	
	
	public String buttonSalvaGruppo() {        		
		return null;
	}
	
	public String buttonAnnullaGruppo() {       		
		return "Profilo_Privato.xhtml";
	}
	
	public String buttonEliminaGruppo() {        		
		return "Profilo_Privato.xhtml";
	}
	
	
	public UploadedFile getFile() {
		return file;
	}

	public void setFile(UploadedFile file) {
		this.file = file;
	}
	
	
}
