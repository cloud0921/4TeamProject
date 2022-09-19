/**
 * 
 */
 function juminCheck(jumin1, jumin2){
	var juminNum=jumin1+jumin2;
	var jumin_pattern=new RegExp('^[0-9]{6}[1234][0-9]{6}');

	
	if(!jumin_pattern.test(juminNum)){
		alert("입력한 주민번호는 틀린 주민번호입니다. 다시 한번 확인바랍니다!!")
		document.memberForm.hidden.value="0";
	}else{
		/*
		   [중요] 주민번호 체크 공식 적용한다.
		*/
		var sum=0;
		var temp=0;
		var result=0;
		var weight=new Array(2,3,4,5,6,7,8,9,2,3,4,5); //가중치 값

		// 1단계 공식
		for(i=0;i<12;i++){
			sum=sum+(juminNum.charAt(i))*weight[i];

		}
		// 2단계 공식
		temp=11-(sum%11);
		
		
		// 3단계 공식
		result=temp%10;
		if(result!=juminNum.charAt(12)){
			alert("입력한 주민번호는 틀린 주민번호입니다. 다시 한번 확인바랍니다!!")
			document.memberForm.hidden.value="0";
		}else{
			alert("입력한 주민번호는 정상인 주민번호입니다.")
			document.memberForm.hidden.value="1";
			document.memberForm.hidden_mem_num1.value=jumin1;
			document.memberForm.hidden_mem_num2.value=jumin2;
			document.memberForm.mem_num1.disabled="disabled";
			document.memberForm.mem_num2.disabled="disabled";
			
		}
   }
}