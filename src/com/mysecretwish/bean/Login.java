package com.mysecretwish.bean;


import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Login")
@ViewScoped
public class Login extends Pagina {

	

	private String password;
	private String email;
	
	public Login () {
		
	}
	
	@PostConstruct
    public void init() {
		
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String login() {
	   String ritorno = null;
	   
	   if (email==null || "".equalsIgnoreCase(email)) {
		   FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN,
                   "Invalid Login!",
				   "Please Try Again!"));
		   return null;
	   }
	   
	   if (password==null || "".equalsIgnoreCase(password)) {
		   FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN,
                   "Invalid Password!",
				   "Please Try Again!"));
		   return null;
	   }
	   
       if (email.equalsIgnoreCase("business") && password.equalsIgnoreCase("business")){
    	   getSession().setUtente_business(1);
    	   getSession().setNomeUtente("Business");
    	   ritorno = "Home.xhtml";
       }
       
       if (email.equalsIgnoreCase("privato") && password.equalsIgnoreCase("privato")){
    	   getSession().setUtente_business(0);
    	   getSession().setNomeUtente("Privato");
    	   ritorno = "Notifiche_Privato.xhtlm";
       } 
       
       if (email.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
    	   getSession().setUtente_business(2);
    	   getSession().setNomeUtente("Admin");
    	   ritorno = "Registrazione.xhtml";
       }
       
       return ritorno; 

	}
	
	public void logout(ActionEvent actionEvent) { 
		getSession().setUtente_business(-1);
		getSession().setNomeUtente("");
        System.out.println("Logout");
    }
     
	
	
	
	
}