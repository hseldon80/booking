package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "Profilo")
@ViewScoped
public class Profilo extends Pagina{


	
	public Profilo () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}

	
	
	
	
	
}
