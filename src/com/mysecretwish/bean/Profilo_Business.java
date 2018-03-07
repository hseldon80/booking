package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.primefaces.model.UploadedFile;

@ManagedBean(name = "ProfiloBusiness")
@ViewScoped
public class Profilo_Business extends Pagina {
	private UploadedFile file;
	
	public Profilo_Business () {
		
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

	public UploadedFile getFile() {
		return file;
	}

	public void setFile(UploadedFile file) { 
		this.file = file;
	}

	
	
	
}
