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
<div class='container'>
    <div class='panel panel-primary dialog-panel'>
      <div class='panel-heading'>
        <h5>Links</h5>
      </div>
      <?php
        $args = array('post_type'=>'links','posts_per_page'=>20);
        $my_query = new WP_Query($args);
        global $post;
        if($my_query->have_posts()){
      ?>
      <table class="table table-striped table-bordered">
      <thead> <th><td>Government Offices</td></th></thead>
      <table class="table table-striped table-bordered links2">
       <thead><tr><th> कार्यालय</th><th>Address</th></tr></thead>
        <tbody>
          <?php
            while($my_query->have_posts()): $my_query->the_post();
          ?>
          <tr><td><?php echo get_field('office'); ?></td><td><a href="#"><?php echo get_field('website'); ?></a></td></tr>
          <?php endwhile;?>
        </tbody>
      </table>
    <?php } else{ echo 'No Links Available!'; } ?>
    </div>
  </div>
<?php get_footer(); ?>
</body>
</html>