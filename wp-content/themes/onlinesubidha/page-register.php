<?php get_header(); ?>
<div class="clearfix"></div>

<div class="login-form_inner">
	<div class="container">	
			<form class="search_form">
				<div class="form-text">
					<input type="text" class="text" value="category" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'category';}" >
					<input type="text" class="text" value="Subcategory" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subcategory';}" >
                    <input type="text" class="text" value="District" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'District';}" >
                    <input type="submit" value="" >
				</div>
					
			</form>
	</div>
</div>
<div class="clearfix"></div>
<section id="content" class="main-content">
  <div class="container">
  
        
         <div class="main">
		 <h3 class="popover-title text-center">Register</h3>
			<form action="#" class="register top20">

  
  <div>
    <label class="desc" id="title3" for="Field3">
      Email ID
    </label>
    <div>
      <input id="Field3" name="Field3" type="email" spellcheck="false" value="" maxlength="255" tabindex="3"> 
   </div>
  </div>
    
  <div>
    <label class="desc" id="title4" for="Field4">
      Password
    </label>
  
    <div>
      <input id="Field3" name="Field3" type="password" spellcheck="false" value="" maxlength="255" tabindex="3"> 
    </div>
  </div>
  
  <div>
    <label class="desc" id="title4" for="Field4">
      Re type Password
    </label>
  
    <div>
      <input id="Field3" name="Field3" type="password" spellcheck="false" value="" maxlength="255" tabindex="3"> 
    </div>
  </div>
    
      <div>
    <label class="desc" id="title1" for="Field1">First Name</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
    
         <div>
    <label class="desc" id="title1" for="Field1">Last Name</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
    
  <div>
    <fieldset>
    
      <legend id="title5" class="desc">
        Gender
      </legend>
      
      <div>
      	<input id="radioDefault_5" name="Field5" type="hidden" value="">
      	<div>
      		<input id="Field5_0" name="Field5" type="radio" value="First Choice" tabindex="5" checked="checked" class="float">
      		<label class="choice float right20 left-10" for="Field5_0">Male</label>
      	</div>
        <div>
        	<input id="Field5_1" name="Field5" type="radio" value="Second Choice" tabindex="6" class="float">
        	<label class="choice float right20 left-10" for="Field5_1">Female</label>
        </div>
        
      </div>
    </fieldset>
  </div>
  
  
  <div>
    <label class="desc" id="title106" for="Field106">
    	Age
    </label>
    <div>
    <select id="Field106" name="Field106" class="field select medium" tabindex="11"> 
      <option value="First Choice">Below 18</option>
      <option value="First Choice"> 19 to 25</option>
      <option value="Second Choice">26 to 30</option>
      <option value="Third Choice">31 to 40</option>
    </select>
    </div>
  </div>
  
  <div>
    <label class="desc" id="title106" for="Field106">
    	Industry
    </label>
    <div>
    <select id="Field106" name="Field106" class="field select medium" tabindex="11"> 
      <option value="First Choice">Select Industry</option>
      <option value="First Choice"> Automobile</option>
      <option value="Second Choice">Accounting</option>
      <option value="Third Choice">Agriculture</option>
    </select>
    </div>
  </div>
  
  
  <div>
    <label class="desc" id="title1" for="Field1">Address</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="title1" for="Field1">City</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  
  <div>
    <label class="desc" id="title1" for="Field1">State</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="title1" for="Field1">Zip Code</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="title106" for="Field106">
    	Country
    </label>
    <div>
    <select id="Field106" name="Field106" class="field select medium" tabindex="11"> 
      <option value="First Choice">Nepal</option>
      <option value="First Choice"> India</option>
      <option value="Second Choice">Japan</option>
      <option value="Third Choice">USA</option>
      <option value="Third Choice">Germany</option>
      
    </select>
    </div>
  </div>
  
  
   <div>
    <label class="desc" id="title1" for="Field1">Phone No</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'>Profile Picture:</label>
            
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'> </label>
            <div class='col-md-2'>
              <input class='form-control'   type='file' value="file">
            </div>
          </div>
          
  
  
     
  <div>
		<div>
  		<input id="saveForm" name="saveForm" type="submit" value="Submit" class="button-danger">
    </div>
	</div>
  
</form>
			
		</div>
      
    </div>
 
</section>
<?php get_header(); ?>
</body>
</html>