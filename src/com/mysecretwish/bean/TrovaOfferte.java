package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "TrovaOfferte")
@ViewScoped
public class TrovaOfferte extends Pagina{



	
	public TrovaOfferte () {
		System.out.println("");
	}
	
	@PostConstruct
    public void init() {
		
	}
	
}
