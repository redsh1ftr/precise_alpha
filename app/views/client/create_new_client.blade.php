@extends('layouts.create1')
@section('content')
<form action="clients">
<TABLE  BORDER="0">
      <TH COLSPAN="2">
         <H1>Add/Update Client:</H1>
      </TH>
   </TR>
   	  <TH>Client ID: </TH>
    	  <TH><input type="text"></TH>
	  </TR>
   
     	 <TH>Contact First Name: </TH>
    	 <TH><input type="text"></TH>
	  </TR>

	  <TH>Contact Last Name:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Contact Phone Number:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Contact Fax Number:</TH>
	  <TH><input type="text"</TH>
	  </TR>
	  
	  <TH>Contact Email:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Contact Notes:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Business Name:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Job Type:</TH>
	  <TH><select>	
	 	 <option value="">Select...</option>
  	 	 <option value="Interior_Maintenance">Interior Maintenance</option>
	  	 <option value="Exterior_Maintenance">Exterior Maintenance</option>
	  	 <option value="Cleaning_1">Cleaning</option>
		 </select> 
	  </TH>
	  </TR>
	  
	  <TH>Billing Street:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Billing City:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Billing State:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Billing Zip:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  
	  <TH>Net Terms:</TH>
	  <TH> <select>
		
	 	 <option value="">Select...</option>
  	 	 <option value="30">30</option>
	  	 <option value="60">60</option>
		</select>
	  </TH>
	  </TR>
	  
	  <TH>Billing Notes:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Worksite Street:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	   
	  <TH>Worksite City:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Worksite State:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Worksite Zip:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	  
	  <TH>Worksite Notes:</TH>
	  <TH><input type="text"></TH>
	  </TR>
	 
	 </TABLE><BR> 		<input type="submit"></form>
