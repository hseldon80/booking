package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.primefaces.model.UploadedFile;

@ManagedBean(name = "FotoStruttura")
@ViewScoped
public class Foto_Struttura extends Pagina {
	private UploadedFile file;
	
	public Foto_Struttura() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public String buttonNuovo() {
		return "Foto_Struttura_Dett.xhtml";
	}

	public String buttonElimina(Object selected) {        		
		return null;
	}
	
	public String buttonAggiungiFoto() { 
		if(file != null) {
			System.out.println(file.getFileName());
		}
		return null;
	}
	
	
	public UploadedFile getFile() {
		return file;
	}

	public void setFile(UploadedFile file) {
		this.file = file;
	}
	
	
}
