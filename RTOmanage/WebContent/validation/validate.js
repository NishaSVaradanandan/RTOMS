function validate()
            {
           var valid=false;
	 if(document.f1.company_id.value=="")
		 {
		 
		 alert('Enter a valid company id');
		 valid=false;
		 }
	 else 
		 {
		 valid=true;
		 }     
	 if(document.f1.username.value=="")
	 {
	 
	 alert('Enter a valid username id');
	 valid=false;
	 }
 else 
	 {
	 valid=true;
	 }   
	 if(document.f1.rto_id.value=="")
	 {
	 
	 alert('Enter a valid rto id');
	 valid=false;
	 }
 else 
	 {
	 valid=true;
	 }
         
                return valid;
            }