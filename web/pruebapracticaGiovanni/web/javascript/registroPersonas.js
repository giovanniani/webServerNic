function validateData() 
{
    var id = document.forms["formPersona"]["txtId"].value;
    var name = document.forms["formPersona"]["txtNombre"].value;
    var tel = document.forms["formPersona"]["txtTelefono"].value;
    var result = true;
    if(tel.length === 8)
    {
    	document.getElementById("msjTxtTelefono").innerHTML = "";
    }
    else
    {
    	document.getElementById("msjTxtTelefono").innerHTML = "tel no valido";
        result = false;
    }
    if (id === "")  
    {  
        document.getElementById("msjTxtCodigo").innerHTML = "Campo requerido";
        result = false;  
    }  
    else   
    {  
        document.getElementById("msjTxtCodigo").innerHTML = "";
    }  
    if (name === "")  
    {  
        document.getElementById("msjTxtNombre").innerHTML = "Campo requerido";
        result = false;  
    }  
    else   
    {  
        document.getElementById("msjTxtNombre").innerHTML = "";
    }
    return result;
}
