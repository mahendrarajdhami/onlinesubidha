<?php get_header(); ?>
    <div class="clearfix"></div>
   
    <section id="content" class="main-content">
      <div class="container">
        <div class="clearfix"></div>
        <?php
          if(have_posts()){
            while(have_posts()){
              the_post();
              the_content();
            }
          } 
        ?>
        
      </div><!--end of container-->
    </section><!--end of section id=content-->
    <?php get_footer(); ?>
  </body>
</html>