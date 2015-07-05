<?php get_header(); ?>
    <div class="clearfix"></div>
    <section id="content" class="main-content">
      <div class="container">
        <div class="row">
          <div class="span9 top20">
            <div class="clearfix cols-1">
              <div class="span6 left-0">
                  <p class="heading bottom10"><?php the_date(); ?></p>
                  <hr class="rtliner" >
                  <ul class="list-news"> 

                  <li> <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/busi1.jpg" alt="" class="img1 right10" align="left">
                  <strong> Silicon Valley Shows Signs of Dot-Com Frenzy </strong> 
                  <dd>August 4 2010, 8 Comments</dd>
                  <p>Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur novum tation et his ex vix illud nonummy.</p>
                  </li>
                  <?php
                    $args = array('post_type'=>'news','posts_per_page'=>10);
                    $my_query = new WP_Query($args);
                    global $post;
                    if($my_query->have_posts()):
                    while($my_query->have_posts()): $my_query->the_post(); 
                  ?>
                    <li> 
                      <?php if ( has_post_thumbnail()) {
                        the_post_thumbnail('feature-news-footer',array('class'=>'img1 right10','align'=>'left'));
                      }else{ ?>
                      <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/170x90.jpg" alt="" class="img1 right10" align="left" />
                      <?php }
                      ?> 
                      <strong><?php trimed_title('...',50);?></strong>
                      <dd><?php echo get_the_date().'/'.get_the_time(); ?></dd> 
                      <p><?php trimed_excerpt('150'); ?></p>
                    </li>
                  <?php endwhile; endif; ?>
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
      </div><!--end of container-->
    </section><!--end of section id=content-->
    <?php get_footer(); ?>
  </body>
</html>