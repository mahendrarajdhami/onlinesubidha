<footer>
  <?php
    $opt            = get_option('onlinesubidha');
    $mail           = $opt['footer_mail'];
    $fb_link        = validatedLink($opt['footer_social_link_facebook']);
    $google_link    = validatedLink($opt['footer_social_link_google']);
    $twitter_link   = validatedLink($opt['footer_social_link_twitter']);
    $linkedin_link  = validatedLink($opt['footer_social_link_linkedin']);
  ?>
  <div class="container">
    <div class="row">
      <div class="span3">
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/logo.png" alt="">
        <p> <?php echo get_bloginfo('description'); ?></p> 
        <p> Email: <?php echo $mail; ?></p>
      </div>
      <div class="span3">
        <p class="heading">Latest News </p>
        <hr class="rtliner" >
          <ul class="footer-menu">
          <?php
            $args = array('post_type'=>'news','posts_per_page'=>3);
            $my_query = new WP_Query($args);
            global $post;
            if($my_query->have_posts()):
            while($my_query->have_posts()): $my_query->the_post(); 
          ?>
            <li> 
              <?php if ( has_post_thumbnail()) {
                the_post_thumbnail('feature-news-footer',array('class'=>'img1 right10','align'=>'left'));
              }else{ ?>
              <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/70x70.jpg" alt="" class="img1 right10" align="left" />
              <?php }
              ?> 
              <a href="<?php echo the_permalink(); ?>"><?php trimed_title('...',71); ?></a>
              <dd><?php echo get_the_date().'/'.get_the_time(); ?></dd> 
            </li>
          <?php endwhile; endif; ?>
          </ul>
        </div>
      <div class="span3">
        <p class="heading">News Archive </p>
        <hr class="rtliner" >
        <ul class="footer-menu">
          <?php 
            $args = array(
              'post_type'    => 'news',
              'type'         => 'monthly',
              'echo'         => 0
            );
            echo '<ul>'.wp_get_archives($args).'</ul>';
          ?>
        </ul>
      </div>

      <div class="span3">
        <p class="heading">Contact Us </p>
        <hr class="rtliner" >
        <address>
          Phone: <?php echo $opt['footer_tel']; ?><br>
          Email:<a href="mailto:<?php echo $opt['footer_mail']; ?>"><?php echo $opt['footer_mail']; ?></a> <br>
          <?php echo $opt['footer_address']; ?>
        </address> 
        <div class="row">
          <p class="heading">Social Network</p>
          <hr class="rtliner" >
        </div>
        <ul class="footer-menu1">
          <li> <a href="<?php echo $fb_link; ?>" target="_blank"> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/fb.png" alt=""> </a> </li>
          <li> <a href="<?php echo $google_link; ?>" target="_blank"> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/twtr.png" alt=""> </a> </li>
          <li> <a href="http://www.youtube.com" target="_blank"> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/youtube.png" alt=""> </a> </li>
          <li> <a href="#" target="_blank"> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/csr.png" alt=""> </a> </li>
          <li> <a href="<?php echo $linkedin_link; ?>" target="_blank"> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/linkedin.png" alt=""> </a> </li>
        </ul>
      </div>
    </div>
  </div>
<?php wp_footer(); ?>
</footer>
<div class="clearfix"></div>
<div class="footbotom">
  <div class="container toppad10"> 
   <div class="span6"> <p> Copyright © <?php echo  date('Y'); ?> · Online Subidha. All Rights Reserved</p> </div>
   <div class="span6 "> <p class="pull-right">Powered by Kintech</p> </div>
 </div>
<!-- </div>  -->