<?PHP 
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=0, maximum-scale=1.0" />
    <meta name="abstract" content="Website design and developed by Kintech, Nepal" />
    <meta name="revisit-after" content="2 days" /> 
    <meta name="coverage" content="worldwide"/>
    <meta name="Identifier-url" content=""/>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="GOOGLEBOT" content="index, follow"/>
    <meta name="robots" content="index, follow"/>
    <title>Online Subidha Online Directory For Nepal </title>
     <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
  <?php wp_head(); ?>
  </head>
  <body>
    <!--==============================header=================================-->
    <header class="p0">
      <div class="header-top">  
       <div class="container">
         <div class="span3 pull-right"> 
            <ul class="lists pull-right">
             <li class="float leftpad10"> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/login.png" alt=""> <a href="<?php echo site_url() ?>/login">Login</a> </li>
             <li class="float leftpad10"> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/register.png" alt=""> <a href="<?php echo site_url() ?>/register">Register</a> </li>
            </ul>
          </div> 
        </div> -
      </div><!--header-top-->
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="header-block clearfix">
              <div class="clearfix header-block-pad">
                <h1 class="brand"><a href="<?php echo get_home_url(); ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/logo.psd.jpg" alt=""></a></h1>
                <span class="contacts">
                  <?php
                  $taxonomy = 'add_cat';
                  $add_top_query['tax_query'] = array(
                    array(
                      'taxonomy' => $taxonomy,
                      'field' => 'slug',
                      'terms' => 'top',
                      'operator' => 'IN'
                    )
                  );
                  $add_top_query['showposts'] = 2;
                  query_posts($add_top_query);
                  if(have_posts()): while( have_posts() ) : the_post();
                   ?>
                    <div class="advertise-box pull-left right10">
                      <?php
                       if(has_post_thumbnail()){
                        the_post_thumbnail('add_top_feature_image');
                       }
                      ?>
                    </div>
                   <?php endwhile;endif; wp_reset_query();?>
                </span>
              </div>
              <div class="navbar-left"></div>
              <div class="navbar navbar_">
                <div class="navbar-inner navbar-inner_">
                  <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse_">MENU</a>                                                   
                    <div class="nav-collapse nav-collapse_ collapse">
                      <ul class="nav sf-menu">
                        <li <?php if(is_home()) echo "class='active li-first'";?>><a href="<?php echo get_home_url(); ?>"><em class="hidden-phone"></em><span class="visible-phone">Home</span></a></li>
                        <li class="sub-menu"><a href="#">Online Add</a>
                          <ul>
                            <li><a href="#">Welcome Message</a></li>
                            <li class="sub-menu"><a href="#">Company Profile</a>
                              <ul>
                                <li><a href="#">Our Capabilities</a></li>
                                <li><a href="#">Advantages</a></li>
                                <li><a href="#">Work Team</a></li>
                                <li><a href="#">Partnership</a></li>
                                <li><a href="#">Support</a></li>
                              </ul>
                            </li>
                            <li><a href="#">Our History</a></li>
                            <li><a href="#">Testimonials</a></li>
                          </ul>
                        </li>
                        <li><a href="<?php echo site_url() ?>/addbooking">Add Booking</a></li>
                        <li><a href="#">CHAUSSURES FEMME</a></li>
                        <li <?php if(get_current_page() =="links") echo "class='active'";?>><a href="<?php echo site_url() ?>/links">Link</a></li>
                        <li <?php if(get_current_page() =="newspapers") echo "class='active'";?>><a href="<?php echo site_url() ?>/newspapers">News</a></li>
                        <li <?php if(get_current_page() =="downloads") echo "class='active'";?>><a href="<?php echo site_url() ?>/downloads">Download</a></li>
                        <li><a href="#">Femme</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div><!--navbar navbar_-->  
            </div><!--header-block clearfix-->
          </div><!--span12-->
        </div><!--row--> 
      </div><!--container-->
      <?php
        if(is_home()){ ?>
        <section class="scroll-news"> 
          <div class="container">
           <p>
            <marquee behavior="scroll" direction="left">
            <?php
              $args = array('post_type'=>'news','posts_per_page'=>1);
              $my_query = new WP_Query($args);
              global $post;
              if($my_query->have_posts()):
              while($my_query->have_posts()): $my_query->the_post();
              the_title();
              endwhile;endif;  
            ?>
            </marquee>
           </p> 
          </div>
        </section>
        <?php
        } 
      ?>
    </header><!--==============================end of header=================================-->