
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
		
			<form class="loginform">
    		<h1><span>Login</span> <lable> Form </lable> </h1>
  			<div class="inset">
	  			<p>
	    		 <label for="email">EMAIL ADDRESS</label>
   	 			<input type="text" placeholder="" required/>
				</p>
  				<p>
				    <label for="password">PASSWORD</label>
				    <input type="password" placeholder="" required/>
  				</p>
				  <p>
				    <input type="checkbox" name="remember" id="remember">
				    <label for="remember">Remember me for 14 days</label>
				  </p>
 			 </div>
 	 
			  <p class="p-container">
			    <span><a href="#">Forgot password ?</a></span>
			    <input type="submit" value="Login">
			  </p>
		</form>
			
		</div>
    </div>
</section>
<?php get_footer(); ?>
</body>
</html>