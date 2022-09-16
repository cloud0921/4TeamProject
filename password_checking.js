function passwordcheck(num1,num2){
	var num1=num1;
	var num2=num2;
	if((num1.length<=7) || (num2.length<=7)){
		alert("비밀번호의 길이는 8자 이상입니다.")
	}
	else{
		   if(num1==num2){
		       alert("비밀번호 양호")
		       document.memberForm.pwd_num.value="1";
		       document.memberForm.checked_pwd.value=num1;
		       document.memberForm.pwd.disabled="disabled";
		       document.memberForm.pwd_check.disabled="disabled";
			}else{
		      alert("비밀번호 불량")
	        }
	    }
}