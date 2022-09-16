/**
 * 
 */
 
 function idCheck(){
	if(document.memberForm.userid.value==""){
		alert("아이디를 입력하여 주십시오.");
		document.memberForm.userid.focus();
		return;
	}
	else{
		var url="IdCheck.jsp?userid="+document.memberForm.userid.value;
		window.open(url,"_blank","toolbar=no,menubar=no,scrollbars=yes,resizable=no,top=350,left=400,width=450,height=200");
	}
}