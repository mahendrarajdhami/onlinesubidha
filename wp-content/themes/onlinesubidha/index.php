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
          <!-- 	<nav role="navigation">
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
          	</nav>-->
          </div>
          <div class="span3 top20" >
            <?php
            $taxonomy = 'add_cat';
            $add_top_query['tax_query'] = array(
              array(
                'taxonomy' => $taxonomy,
                'field' => 'slug',
                'terms' => 'sidebar',
                'operator' => 'IN'
              )
            );
            $add_top_query['showposts'] = 3;
            query_posts($add_top_query);
            if(have_posts()): while( have_posts() ) : the_post();
             ?>
              <div class="advertise-box-side bottom20">
                <?php
                 if(has_post_thumbnail()){
                  the_post_thumbnail('add_sidebar_feature_image');
                 }
                ?>
              </div>
             <?php endwhile;endif; wp_reset_query();?>
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
                            <p> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/nexticon.png" alt=""> <a href="<?php echo site_url(); ?>/register"> Create Free Account </a> </p>
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
                      <?php $args = array('post_type' => 'video','posts_per_page' => 4); $my_query = new WP_Query($args); global $post; if ($my_query->have_posts()) : while($my_query->have_posts()):$my_query->the_post(); ?>
                       <a href="<?php echo validatedLink(get_field('link')); ?>">
                         <li> 
                           <?php
                            if(has_post_thumbnail()){
                             the_post_thumbnail('video_feature_image');
                            }
                            else{
                             ?>
                               <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/video.jpg" alt="" width="280" height="208">
                             <?php
                            }
                           ?>
                         </li>
                       </a>
                      <?php endwhile; endif; ?>
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
                  <?php
                  $taxonomy = 'news_cat';
                  $news_cat_business_query['tax_query'] = array(
                    array(
                      'taxonomy' => $taxonomy,
                      'field' => 'slug',
                      'terms' => 'business',
                      'operator' => 'IN'
                    )
                  );
                  $news_cat_business_query['showposts'] = 3;
                  query_posts($news_cat_business_query);
                  if(have_posts()): while( have_posts() ) : the_post();
                   ?>
                    <li>
                      <?php
                       if(has_post_thumbnail()){
                        the_post_thumbnail('feature-news-date-archive',array('class'=>'img1 right10','style'=>'float:left'));
                       }
                       else{
                        ?>
                          <img src="<?php echo get_stylesheet_directory_uri() ?>/images/busi1.jpg" alt="" class="img1 right10" align="left">
                        <?php
                       }
                      ?>
                      <strong><?php trimed_title('...',100); ?></strong> 
                      <dd><?php $mydate=get_the_date(); echo $mydate; ?></dd>
                      <p><?php trimed_excerpt(200); ?></p>
                    </li>
                   <?php endwhile;endif; wp_reset_query();?>
                  </ul>
                </div>
                <div class="span3">
                  <p class="heading bottom10">Recently Added Post </p>
                  <hr class="rtliner" >
                  <ul class="list-news">
                    <?php $args = array('post_type' => 'news','posts_per_page' => 3); $my_query = new WP_Query($args); global $post; if ($my_query->have_posts()) : while($my_query->have_posts()):$my_query->the_post(); ?>
                      <li> 
                        <?php
                         if(has_post_thumbnail()){
                          the_post_thumbnail('feature-news-footer',array('class'=>'img1 right10','style'=>'align:left'));
                         }
                         else{
                          ?>
                            <img src="<?php echo get_stylesheet_directory_uri() ?>/images/70x70.jpg" class="img1 right10 wp-post-image" alt="70x70"  style="align:left">
                          <?php
                         }
                        ?>
                        <strong><?php trimed_title('...',35); ?></strong> 
                        <dd><?php $mydate=get_the_date(); echo $mydate; ?></dd>
                      </li>
                    <?php endwhile; endif; ?>
                  </ul> 
                </div>
            </div>
            </div>    
            <!-- <div class="span3 top25">
                <div class="advertise-box-side bottom20 "> 
                  <p>Advertise Here <br> 248px x 267px</p>
                </div>
            </div> -->
        </div>

        <div class="clearfix"></div>
        <div class="container ">
          <div class="span12 top20 left-0 ">
            <p class="heading"> Photo Gallery </p>
            <hr class="rtliner" >
            <ul class="vilists top20"> 
            <?php
                $args = array('post_type' => 'gallery','posts_per_page'=>1);//here posts_per_page means images from recent two galleries.
                $my_query = new WP_Query($args);
                  if($my_query->have_posts()):
                  while ($my_query->have_posts()) : $my_query->the_post();
                    $image_query = new WP_Query( array( 'post_type' => 'attachment', 'post_status' => 'inherit', 'post_mime_type' => 'image', 'posts_per_page' => -1, 'post_parent' => get_the_ID() ) );
                    while( $image_query->have_posts() ) {
                      $image_query->the_post();
                      ?>
                      <a href="javascript:void(0);" title="Gallery"><li class="img1"><?php echo wp_get_attachment_image( get_the_ID() ); ?></li></a>
                      <?php
                    }
                endwhile; endif; wp_reset_query();
            ?>  
            </ul> 
          </div>
        </div>
      </div><!--end of container-->
    </section><!--end of section id=content-->
    <?php get_footer(); ?>
  </body>
</html>