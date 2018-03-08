function  checkForm(){
    if (Validator.Validate(document.forms[0],3)) {
        return true;
    } else {
        return false;
    }
}
function closeWindow(){
	if(confirm('不再聊会了？')){
		window.location='clearUser.jsp';
		return true;
	}else{
		return false;
	}
}
function checkSend(){		
	if(document.send.msg.value==""){
		alert("不能发送空信息。");
		return false;
	}else{
		document.send.message.value=document.send.msg.value;
		document.send.msg.value="";
		return true;
	}
	 
}
