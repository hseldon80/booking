function closeOverlay() {
     
    var contenitore = document.getElementById("contenitore");
    if(contenitore)
        contenitore.style.display = 'none';
}


function overlay(idDialog, idFieldSet) {
    var contenitoreObj = document.getElementById("contenitore");


    var textDivObj = document.getElementById(idDialog);
    var contenitore = null;
    if (!contenitoreObj) {

        contenitore = document.createElement("div");
        contenitore.setAttribute("id", "contenitore");
    } else {
        contenitore = contenitoreObj;
        contenitoreObj = null;
    }


    var fieldSet = document.getElementById(idFieldSet);


    fieldSet.appendChild(contenitore);
    fieldSet.appendChild(textDivObj);



// lo recupero per impostare proprietà css
    contenitoreObj = document.getElementById("contenitore");

    contenitoreObj.style.position = "fixed";
    contenitoreObj.style.top = "0px";
    contenitoreObj.style.left = "0px";
    contenitoreObj.style.width = "100%";
    contenitoreObj.style.height = "100%";
    contenitoreObj.style.backgroundColor = "gray";
    contenitoreObj.style.opacity = "0.5";
    contenitoreObj.style.zIndex = "100";
    contenitoreObj.style.display = "block";

    textDivObj.style.zIndex = "4000";
    textDivObj.style.opacity = "1";

}




