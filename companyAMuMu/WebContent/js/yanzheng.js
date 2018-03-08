function  checkForm(){
    if (Validator.Validate(document.forms[0],3)) {
        return true;
    } else {
        return false;
    }
}