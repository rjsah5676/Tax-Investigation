
function email_change(){
	var write = document.write;
	var Prv_email3 = write.Prv_email3.value;
	write.Prv_email2.value = Prv_email3;
	if(Prv_email3==""){
		write.Prv_email2.readOnly = false;
	}else{
		write.Prv_email2.readOnly = true;
	}
}