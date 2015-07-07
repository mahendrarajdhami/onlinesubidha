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
    <div class='panel-heading'><h5>Downloads</h5></div>
    <?php
    $taxonomy = 'download_cat';
    $args = array('taxonomy' => $taxonomy);
    $categories=get_categories($args);
    foreach($categories as $category) {
      if ( 0 == $category->category_parent ) {
        ?>
        <table class="table table-striped table-bordered links">
          <thead><tr><th><?php echo $category->name; ?></th></tr></thead>
          <tbody>
          <?php 
          $myquery['tax_query'] = array( array('taxonomy' => $taxonomy,'field' => 'id','terms' => $category->term_id,'include_children' => flase,'operator' => 'IN'));
          query_posts($myquery);
          if(have_posts()){ 
            while(have_posts()){ 
              the_post(); 
              ?><tr><td><a href="<?php echo validatedLink(get_field('link')); ?>" target="_blank"><?php the_title(); ?></a></td></tr><?php
            } 
          }
          ?>
          </tbody>
        </table>
      <?php
      }
    }
    ?>
  </div>
</div>
<?php get_footer(); ?>
</body>
</html>