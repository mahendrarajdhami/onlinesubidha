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
		
			<h5>Login or Create a Free Account!</h5>
		
		<p>Lorem iopsum dolor sit amit,consetetur sadipscing eliter,sed diam voluptua.At vero  eso et accusam et justo duo dolores et ea rebum. </p>
			<form>
				<ul class="left-form">
					<h2>New Account:</h2>
					<li>
						<input type="text"   placeholder="Username" required/>
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="text"   placeholder="Email" required/>
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="password"   placeholder="password" required/>
						<a href="#" class="icon into"> </a>
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="password"   placeholder="password" required/>
						<a href="#" class="icon into"> </a>
						<div class="clear"> </div>
					</li> 
					
					<input type="submit" onclick="myFunction()" value="Create Account">
						<div class="clear"> </div>
				</ul>
				<ul class="right-form">
					<h3>Login:</h3>
					<div>
						<li><input type="text"  placeholder="Username" required/></li>
						<li> <input type="password"  placeholder="Password" required/></li>
						<h4>I forgot my Password!</h4>
							<input type="submit" onclick="myFunction()" value="Login" >
					</div>
					<div class="clear"> </div>
				</ul>
				<div class="clear"> </div>
					
			</form>
			
		</div>
      
    </div>
</section>
<?php get_footer(); ?>
</body>
</html>