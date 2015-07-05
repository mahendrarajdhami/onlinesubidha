<?php get_header(); ?>
    <div class="clearfix"></div>
    <div class="slider">
      <div class="login-form">
    		<form class="search_form">
    			<div class="form-text">
    				<input type="text" class="text" value="category" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'category';}" >
    				<input type="text" class="text" value="Subcategory" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subcategory';}" >
                      <input type="text" class="text" value="District" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'District';}" >
                      <input type="submit" value="" >
    			</div>
    		</form>
    	</div>
      <div class="camera_wrap">
        <?php
          $option = get_option(onlinesubidha);
          // var_dump($option);
          // for ($i=1; $i <=3 ; $i++) { 
          // if($option['onlinesubidha_banner_image'.$i]) echo "<div data-src=".$option['onlinesubidha_banner_image'.$i]."></div>";
          if($option['onlinesubidha_banner_image1']) echo "<div data-src=".$option['onlinesubidha_banner_image1']."></div>";
          if($option['onlinesubidha_banner_image2']) echo "<div data-src=".$option['onlinesubidha_banner_image2']."></div>";
          if($option['onlinesubidha_banner_image3']) echo "<div data-src=".$option['onlinesubidha_banner_image3']."></div>";

          // }
        ?>
      </div>
    </div>
    <section id="content" class="main-content">
      <div class="container">
        <div class="row">
          <div class="span9 top10">
            <p class="heading"> Category </p> 
            <hr class="rtliner" >       
            <ul class="thumbnails">
              <?php
              $args = array('taxonomy' => 'list_cat');
              $categories=get_categories($args);
              foreach($categories as $category) {
                if ( 0 == $category->category_parent ) {
                  $cat_header_image = get_field('cat_header_image',$category->taxonomy.'_'.$category->term_id);
                  $cat_feature_image = get_field('cat_feature_image',$category->taxonomy.'_'.$category->term_id);
                  $img_src1 = $cat_header_image['sizes']['cat_header_image'];
                  $img_src2 = $cat_feature_image['sizes']['cat_feature_image'];
                  ?>
                  <li class ="span3">
                    <div class="thumbnail">
                      <div class="caption">
                        <?php
                          if($img_src1){?>
                            <img src="<?php echo $img_src1; ?>">
                            <?php }else{
                            ?><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/hotelicon.png"><?php
                          }
                         ?>
                        <h3><?php echo $category->name; ?></h3>
                      </div> 
                      <div class="thumbnail-pad">
                        <?php
                          if($img_src2){?>
                            <img src="<?php echo $img_src2; ?>">
                            <?php }else{
                            ?><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/hotel.jpg"><?php
                          }
                         ?>
                        <p class="count"><?php echo $category->count; ?> listing</p>
                        <p><?php echo $category->category_description; ?></p>
                      </div> 
                    </div>
                  </li>
            <?php }}?>
            </ul>
          	<nav role="navigation">
          		<ul class="cd-pagination no-space">
          			<li class="button"><a href="#0">Prev</a></li>
          			<li><a href="#0">1</a></li>
          			<li><a href="#0">2</a></li>
          			<li><a class="current" href="#0">3</a></li>
          			<li><a href="#0">4</a></li>
                      <li><a href="#0">5</a></li>
                      <li><a href="#0">6</a></li>
                      <li><a href="#0">7</a></li>
                      <li><a href="#0">8</a></li>
                      <li><a href="#0">9</a></li>
                      <li><a href="#0">10</a></li>
          			<li><span>...</span></li>
          			<li><a href="#0">20</a></li>
          			<li class="button"><a href="#0">Next</a></li>
          		</ul>
          	</nav> <!-- cd-pagination-wrapper -->
          </div>
          <div class="span3 top20">
            <div class="advertise-box-side bottom20"> 
              <p>Advertise Here <br> 248px x 267px</p>
            </div>
           <div class="advertise-box-side bottom20 "> 
              <p>Advertise Here <br>248px x 267px</p>
           </div>
           <div class="advertise-box-side1 "> 
              <p>Advertise Here <br> 248px x 267px</p>
           </div>
          </div>
        </div>

        <div class="clearfix"></div>
        <section class="row">
             <div class="container"> 
                 <div class="span12"> 
                      <div class="Rounded_Rectangle_12"> 
                          <div class="span9"> <h3>Add Your Company To Our Catalog. <span class="color1"> Its FREE !! </span> </h3> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde </p>  </div>
                          <div class="span3 pull-right"> <aside> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/buddyicon.png" alt=""> 
                            <p> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/nexticon.png" alt=""> <a href="#"> Create Free Account </a> </p>
                          </aside></div> 
                      </div>
                 </div>
             </div>
        </section>
      
        <div class="clearfix"></div>
        <div class="row ">
            <div class="container ">
               <div class="span12 top20 ">
              <p class="heading"> Feature Videos </p>
              <hr class="rtliner" >
                 <ul class="vilists top20">   
                     <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/video.jpg" alt="" width="280" height="208"> </li>
                     <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/video.jpg" alt="" width="280" height="208"> </li>
                     <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/video.jpg" alt="" width="280" height="208"> </li>
                     <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/video.jpg" alt="" width="280" height="208"> </li>
                 </ul> 
              </div>
            </div>
        </div>

        <div class="row">
          <div class="span9 top20">
              <div class="clearfix cols-1">
                <div class="span6 left-0">
                  <p class="heading bottom10">Popular Business </p>
                  <hr class="rtliner" >
                  <ul class="list-news"> 
                  <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/busi1.jpg" alt="" class="img1 right10" align="left">
                  <strong> Silicon Valley Shows Signs of Dot-Com Frenzy </strong> 
                  <dd>August 4 2010, 8 Comments</dd>
                  <p>Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur novum tation et his ex vix illud nonummy.</p>
                  </li>
                  <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/busi2.jpg" alt="" class="img1 right10" align="left">
                  <strong> Silicon Valley Shows Signs of Dot-Com Frenzy </strong> 
                  <dd>August 4 2010, 8 Comments</dd>
                  <p>Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur novum tation et his ex vix illud nonummy.</p>
                  </li>
                  <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/busi3.jpg" alt="" class="img1 right10" align="left">
                  <strong> Silicon Valley Shows Signs of Dot-Com Frenzy </strong> 
                  <dd>August 4 2010, 8 Comments</dd>
                  <p>Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur novum tation et his ex vix illud nonummy.</p>
                  </li>
                  </ul>
                </div>
                <div class="span3">
                  <p class="heading bottom10">Recently Added Post </p>
                  <hr class="rtliner" >
                  <ul class="list-news">
                    <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/post1.jpg" alt="" class="img1 right10" align="left">
                      <strong>Fly Fishers Serving as Transports for Noxious Little Invaders </strong> 
                      <dd>August 4 2010, 8 Comments</dd>
                    </li>
                    <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/post2.jpg" alt="" class="img1 right10" align="left">
                      <strong> Fly Fishers Serving as Transports for Noxious Little Invaders </strong> 
                      <dd>August 4 2010, 8 Comments</dd>
                    </li>
                  </ul> 
                </div>
            </div>
            </div>    
            <div class="span3 top25">
                <div class="advertise-box-side bottom20 "> 
                  <p>Advertise Here <br> 248px x 267px</p>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="container ">
          <div class="span12 top20 left-0 ">
            <p class="heading"> Photo Gallery </p>
            <hr class="rtliner" >
            <ul class="vilists top20">   
             <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/educa.jpg" alt="" width="171" height="15" class="img1"> </li>
             <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/home.jpg" alt=""  width="171" height="154" class="img1" > </li>
             <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/pet.jpg" alt=""  width="171" height="154" class="img1"> </li>
             <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/travel.jpg" alt=""  width="171" height="154" class="img1"> </li>
             <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/travel.jpg" alt=""  width="171" height="154" class="img1"> </li>
             <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/travel.jpg" alt=""  width="171" height="154" class="img1"> </li>
            </ul> 
          </div>
        </div>
      </div><!--end of container-->
    </section><!--end of section id=content-->
    <?php get_footer(); ?>
  </body>
</html>