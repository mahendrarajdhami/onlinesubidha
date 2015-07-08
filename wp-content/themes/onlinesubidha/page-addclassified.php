<?php get_header();?>
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
<div class='container'>
    <div class='panel panel-primary dialog-panel'>
      <div class='panel-heading'>
        <h5>Classified Run on Words Details</h5>
      </div>
      <div class='panel-body'>
        <form class='form-horizontal' role='form'>
        
        <h4>Add Type</h4>
         
           <div class='form-group'>
           <input class="float top10" type="radio" name="yes" value="yes" selected>
            <label class='control-label control-label-sm col-md-1 col-md-offset-1 float' for='id_accomodation'> Display Box</label>
            <div class='col-md-2 '>
              <select class='float input-small right20' id='id_title'>
                    <option>Color</option>
                    <option>Black and White</option>
                    
                  </select>
            </div>
            
            <input class="float top10" type="radio" name="yes" value="No">
            <label class='control-label control-label-sm col-md-1 col-md-offset-1 float' for='id_accomodation'> Classified</label>
            <div class='col-md-2'>
              <select class='float input-small' id='id_title'>
                    <option>Normal</option>
                    <option>Bold</option>
                    
                  </select>
            </div>
            
          </div>
        <hr>
        
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'>Enter Name:</label>
            <div class='col-md-2'>
              <input class='form-control' id='id_first_name' placeholder='Full Name' type='text'>
            </div>
          </div>
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'>Contact Number:</label>
            <div class='col-md-2'>
              <input class='form-control'  placeholder='Contact Number' type='text'>
            </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'>Email:</label>
            <div class='col-md-2'>
              <input class='form-control'  placeholder='Email Address' type='text'>
            </div>
          </div>
         
                   
           <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'> Number of Insertion</label>
            <div class='col-md-2'>
              <select class='form-control' id='id_title'>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                  </select>
            </div>
          </div>
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'> Publication</label>
            <div class='col-md-2'>
              <select class='form-control' id='id_title'>
                    <option> Himalayan Times</option>
                    <option> Kantipur</option>
                    <option> Nagarik </option>
                    
                  </select>
            </div>
          </div>
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'> Add Category</label>
            <div class='col-md-2'>
              <select class='form-control' id='id_title'>
                    <option>Training</option>
                    <option>Design</option>
                    <option>Education</option>
                    <option>Driving</option>
                    <option>Treatment</option>
                  </select>
            </div>
          </div>
          
          <div class="clearfix"></div>
         
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'>Classified Matter:</label>
            <div class='col-md-2'>
              <textarea class='form-control' id='id_comments' placeholder='Classified Matter' rows='3'></textarea>
            </div>
            <div class="clearfix"></div>
          </div>
         
           <hr>
           <h4>Calculate Add Amount</h4>
           
                 <!-- Table with alternating cell background color and outer frame -->
      <table class="table table-striped table-bordered">
       <thead>
          <tr>
            <th>Calculate Ad Amount</th>
            <th> <a href="#" class="btn btn-danger" > Calculate Ad Amount</a> </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>No of Words</td>
            <td>54</td>
          </tr>
          <tr>
            <td>No of Bold Words</td>
            <td> 2</td>
          </tr>
          <tr>
            <td>No of Caps Words</td>
            <td>4</td>
          </tr>
          <tr>
            <td>Add Amount</td>
            <td>&nbsp;  </td>
          </tr>
          <tr>
            <td>Discount Amount</td>
            <td>&nbsp;  </td>
          </tr>
          <tr>
            <td>Sub Total</td>
            <td>&nbsp;  </td>
          </tr>
          <tr>
            <td>VAT 13%</td>
            <td>&nbsp;  </td>
          </tr>
          <tr>
            <td><strong> Net Payable Amount </strong> </td>
            <td>&nbsp;  </td>
          </tr>
        </tbody>
      </table>
           <div class="clearfix"></div>
           <hr>
           <h4>Please Select Insertions Date to Publish Advertise</h4>
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_checkin'>Display Insertion Date From</label>
            
              <div class='col-md-3'>
                <div class='form-group internal input-group'>
                  <input class='form-control datepicker' id='id_checkin'>
                  <span class='input-group-addon'>
                    <i class='glyphicon glyphicon-calendar'></i>
                  </span>
                </div>
              </div>
              <div class="clearfix bottom10"></div>
              <label class='control-label col-md-2' for='id_checkout'>To</label>
              <div class='col-md-3'>
                <div class='form-group internal input-group'>
                  <input class='form-control datepicker' id='id_checkout'>
                  <span class='input-group-addon'>
                    <i class='glyphicon glyphicon-calendar'></i>
                  </span>
                </div>
              </div>
            </div>
          <div class='form-group'>
            <div class="col-md-12"> 
            <div class='col-md-2 right10' style="float:left;">
              <button class='btn-lg btn-danger' type='submit'>Continue</button>
            </div>
            <div class='col-md-2' style="float:left;">
              <button class='btn-lg btn-danger' style='float:left;' type='submit'>Cancel</button>
            </div>
          </div>
          </div>
        </form>
      </div>
    </div>
  </div>
<?php get_footer(); ?>
</body>
</html>