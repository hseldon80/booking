package org.primefaces.showcase.view.data.datatable;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
 
@ManagedBean
public class ImagesView implements Serializable{
     
    private List<String> images;
     
    @PostConstruct
    public void init() {
        images = new ArrayList<String>();
        //for (int i = 1; i <= 12; i++) {
            images.add("banner_grande.png");
            images.add("BannerLogin.png");
            images.add("card_file.png");
        //}
    }
 
    public List<String> getImages() {
        return images;
    }
}
