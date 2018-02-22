function validateData()  
{  
    var id = document.forms["formDeptos"]["txtCodigo"].value;  
    var name = document.forms["formDeptos"]["txtNombre"].value;  
    var result = true;
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



