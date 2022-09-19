/**
 * 
 */
 function allabled(){
	var input1=document.getElementById("mem_num1");
	var input2=document.getElementById("mem_num2");
	var input3=document.getElementById("userid");
	var input4=document.getElementById("pwd");
	var input5=document.getElementById("pwd_check");
	
	input1.disabled=false;
	input2.disabled=false;
	input3.disabled=false;
	input4.disabled=false;
	input5.disabled=false;
	
	document.memberForm.id_hidden.value="";
	document.memberForm.checked_pwd.value="";
	document.memberForm.hidden_mem_num1.value="";
	document.memberForm.hidden_mem_num2.value="";
	
	document.memberForm.hidden.value="0";
	document.memberForm.hidden_num.value="0";
	document.memberForm.pwd_num.value="0";
}
