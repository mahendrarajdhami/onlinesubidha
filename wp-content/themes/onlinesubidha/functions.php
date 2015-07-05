<?php
	$includes_path = get_template_directory() . '/functions/';
	/***Theme actions and scripts***/
	require_once ($includes_path . 'theme-actions.php');
	// Load JavaScript via wp_enqueue_script
	require_once ($includes_path . 'theme-scripts.php');

	//calling theme options and its framework
	define('OPTIONS_FRAMEWORK_DIRECTORY', get_template_directory_uri() . '/inc/');
    require_once dirname(__FILE__) . '/inc/whitewater-theme-options.php';
	//returns validated link which are used in footer using theme option
	function validatedLink($link) {
    if($link==NULL || $link==''){
        return '';
    } else if (preg_match('/^(http|https):\/\/[a-z0-9_]+([\-\.]{1}[a-z0-9_]+)*\.[_a-z]{2,5}'.'((:[0-9]{1,5})?\/.*)?$/i', $link)) {
        return $link;
    } else {
        return "http://" . $link;
    }
  }

  // load textdomain for translation
  add_action('after_setup_theme', 'whitewater_setup');
  function whitewater_setup(){
    load_theme_textdomain('whitewater', get_template_directory() . '/languages');
  }
  // Filter to translate the ACF Fields
  function acf_translate_fields( $field ){
    $field['label' ]        = __( $field['label' ],'acf');
    $field['instructions' ] = __( $field['instructions' ],'acf');
    return $field;
  }
  add_filter('acf/load_field', 'acf_translate_fields');
 //gives excerpt with custom length (used in footer)
 the_excerpt_max_charlength(65);
 function the_excerpt_max_charlength($charlength) {
  $excerpt = get_the_excerpt();
  $charlength++;
  if ( mb_strlen( $excerpt ) > $charlength ) {

    $subex = mb_substr( $excerpt, 0, $charlength - 5 );

    $exwords = explode( ' ', $subex );

    $excut = -( mb_strlen(mb_strwidth( $exwords[ count( $exwords ) - 1 ] ) ));

    if ( $excut < 0 ) {

      echo mb_substr( $subex, 0, $excut );

    } else {

      echo $subex;

    }

    echo '...';

  } else {

    echo $excerpt;

  }

 }

 function change_excerpt_length($charlength) {
    return 100;
  }

  add_filter('excerpt_length', 'change_excerpt_length');


  //give  short title of post page
  function custom_shortTitle($after = '', $length, $content = null) {
    if ($content) {
      $scontent = strip_tags($content);
      if (mb_strlen($scontent) > $length) {
        $scontent = mb_substr($scontent, 0, $length);
        echo $scontent . $after;
      }
    }
    else {
      $mytitle = get_the_title();
      $smytitle = strip_tags($mytitle);
      if (mb_strwidth($smytitle) > $length) {
        $smytitle = mb_strimwidth($smytitle, 0, $length, "");
        echo $smytitle . $after;
      }
      else{
        echo $smytitle;
      }
    }
  }

  /*echo trimed excerpt for post */
  function trimed_excerpt($charlength) {
   $excerpt = get_the_excerpt();
   $charlength++;
   if ( mb_strlen( $excerpt ) > $charlength ) {
     $subex = mb_substr( $excerpt, 0, $charlength - 5 );
     $exwords = explode( ' ', $subex );
     $excut = -( mb_strlen(mb_strwidth( $exwords[ count( $exwords ) - 1 ] ) ));
     if ( $excut < 0 ) {
       echo mb_substr( $subex, 0, $excut );
     } else {
       echo $subex;
     }
     echo '...';

   } else {
     echo $excerpt;
   }
  }
  //give  short description of image slider in detail page of building
  function custom_slider_description($after = '', $length, $description) {
    $smy_description = strip_tags($description);
    if (mb_strwidth($smy_description) > $length) {
      $smy_description = mb_strimwidth($smy_description, 0, $length, '');
      echo $smy_description . $after;
    }
    else{
      echo $smy_description;
    }
  }
  //give  short title of image slider in detail page of building
  function custom_slider_title($after = '', $length, $title) {
    $smy_title = strip_tags($title);
    // if(strlen($smytitle) != strlen(utf8_decode($smytitle))){
    //   $length = $length;
    // }else
    // {
    //   // $length = $length + 10;
    //   $length = mb_strwidth($smy_title);
    // }

    if (mb_strwidth($smy_title) > $length) {
      $smy_title = mb_strimwidth($smy_title, 0, $length);
      echo $smy_title . $after;
    }
    else{
      echo $smy_title;
    }
  }

  /*give  short title of posts in sitemap page used inside plugin(wp-sitemap-page.php #~747*/
  function sitemap_post_short_title($after = '', $length, $title) {
    $smy_title = strip_tags($title);
    if (mb_strwidth($smy_title) > $length) {
      $smy_title = mb_strimwidth($smy_title, 0, $length);
      return $smy_title . $after;
    }
    else{
      return $smy_title;
    }
  }

  // to add custom css to admin


  function my_custom_css() {
    $path = get_template_directory_uri();
    echo "<link rel='stylesheet' href='$path/css/admin-custom.css' type='text/css' media='all' />";
  }
  add_action('login_head', 'my_custom_css');
  add_action('admin_head', 'my_custom_css');

  //adding our own favicon to wp-admin
  function whitewater_favicon(){
    echo '<link rel="shortcut icon" type="image/x-icon" href="',get_template_directory_uri(),'/images/favicon.ico" />',"\n";
    echo '<link rel="icon" type="image/x-icon" href="',get_template_directory_uri(),'/images/favicon.ico" />',"\n";
  }

  add_action('admin_head','whitewater_favicon');
  add_action('login_head', 'whitewater_favicon');
  // add_action('wp_head', 'whitewater_favicon');

  //redirecting admin logo link to homepage
  function new_wp_login_url(){
   return home_url();
  }add_filter('login_headurl','new_wp_login_url');

  //hide Header Menu bar of ADMIN
  function remove_admin_bar_menu( $wp_admin_bar ) {
      $wp_admin_bar->remove_menu('wp-logo');
      $wp_admin_bar->remove_menu('updates');
  }
  add_action( 'admin_bar_menu', 'remove_admin_bar_menu', 201 );

  /*wp paginatoion with previous and next navigation*/
  function paginate($prev = '&laquo;', $next = '&raquo;') {
    global $wp_query, $wp_rewrite;
    $wp_query->query_vars['paged'] > 1 ? $current = $wp_query->query_vars['paged'] : $current = 1;

    $pagination = array(
      'base' => @add_query_arg('page','%#%'),
      'format' => '',
      'total' => $wp_query->max_num_pages,
      'current' => $current,
      'show_all' => true,
      'type' => 'plain',
      'prev_text' => $prev,
      'next_text' => $next
      );
    if( $wp_rewrite->using_permalinks() )
      $pagination['base'] = user_trailingslashit( trailingslashit( remove_query_arg( 'page', get_pagenum_link( 1 ) ) ) . '?page=%#%/', 'paged' );
    if( !empty($wp_query->query_vars['s']) )
      $pagination['add_args'] = array( 's' => get_query_var( 's' ) );
    echo paginate_links( $pagination );
  }

  function pagination($prev = '&laquo;', $next = '&raquo;') {
    global $wp_query, $wp_rewrite;
    $wp_query->query_vars['paged'] > 1 ? $current = $wp_query->query_vars['paged'] : $current = 1;
    $pagination = array('base' => @add_query_arg('paged', '%#%'), 'format' => '', 'total' => $wp_query->max_num_pages, 'current' => $current, 'prev_text' => $prev, 'next_text' => $next, 'type' => 'plain', 'end_size' => 0, 'mid_size' => 1, 'show_all' => false);
    if ($wp_rewrite->using_permalinks()) $pagination['base'] = user_trailingslashit(trailingslashit(remove_query_arg('s', get_pagenum_link(1))) . 'page/%#%/', 'paged');
    $pagination['base'] .= "#room_list";
    if (!empty($wp_query->query_vars['s'])) $pagination['add_args'] = array('s' => get_query_var('s'));
    echo paginate_links($pagination);
  }

  // retrive custom number of posts per pages
  function whitewater_custom_post_num( $query ) {

      if ( is_admin() || ! $query->is_main_query() )
          return;

      if ( is_post_type_archive('whitewater_news') ) {
        $query->set( 'posts_per_page', 10);
        return;
      }

      if ( is_post_type_archive('whitewater_building') ) {
        $query->set( 'posts_per_page', 6);
        return;
      }
      if ( is_tax( array('whitewater_news_categories')) ) {
        $query->set( 'posts_per_page', 10);
        return;
      }
      if ( is_tax( array('whitewater_building_categories')) ) {
        $query->set( 'posts_per_page', 6);
        return;
      }
  }
  add_action( 'pre_get_posts', 'whitewater_custom_post_num');

  //post thumbnail support of theme
  if (function_exists('add_theme_support')) {
    add_theme_support('post-thumbnails');
    add_image_size('banner',1400,327,true);
    add_image_size('feature-news-footer',70,70,true);
    add_image_size('feature-news-date-archive',170,90,true);
  }
  /*@mahen*/
  /*hiding comment menu from admin*/
  add_action( 'admin_menu', 'my_remove_menu_pages' );
  function my_remove_menu_pages() {
    remove_menu_page('edit-comments.php');
    remove_menu_page('edit.php');
  }

  /*function to return nepali date*/
  function get_nepali_date(){
      $calc       = new Nepali_Calendar();
      $wp_date    = get_the_date();//default date should be 1988-14-15
      $exploded   = explode('-',$wp_date);
      $cal        = $calc->eng_to_nep($exploded[0],$exploded[1],$exploded[2]);
      $date       = $cal['year'] . '-' . $cal['nmonth'] . '-' . $cal['date'];
      return $date;
  }

  /*give  short title of post page*/
  function trimed_title($after = '', $length, $content = null) {
    if ($content) {
      $scontent = strip_tags($content);
      if (mb_strlen($scontent) > $length) {
        $scontent = mb_substr($scontent, 0, $length);
        echo $scontent . $after;
      }
    }
    else {
      $mytitle = get_the_title();
      $smytitle = strip_tags($mytitle);
      if (mb_strwidth($smytitle) > $length) {
        $smytitle = mb_strimwidth($smytitle, 0, $length, "");
        echo $smytitle . $after;
      }
      else{
        echo $smytitle;
      }
    }
  }
  /*for custom post type date archive*/
  function my_custom_post_type_archive_where($where,$args){  
    $post_type  = isset($args['post_type'])  ? $args['post_type']  : 'post';  
    $where = "WHERE post_type = '$post_type' AND post_status = 'publish'";
    return $where;  
  }
  add_filter( 'getarchives_where','my_custom_post_type_archive_where',10,2);

  // get taxonomy term name.used to echo termname of each post in archive.
  function custom_taxonomies_terms_names(){
    // get post by post id
    $post = get_post( $post->ID );
    // get post type by post
    $post_type = $post->post_type;
    // get post type taxonomies
    $taxonomies = get_object_taxonomies( $post_type, 'object' );
    $out = '';
    foreach ( $taxonomies as $taxonomy_slug => $taxonomy ){
      // get the terms related to post
      $terms = get_the_terms( $post->ID, $taxonomy_slug );
      if(!empty($terms)){
        foreach ( $terms as $term ) {
          $parent = $term->parent;
          if ( $parent == '0' ) {
            return  $cat = $term->name ;
          }
        }
      }
    }
  }

  /*Returns attachment id using the guide(used to retrive attachment id from posts table using  images sources in array returned by MIU plugin*/
  // function get_attachment_id_from_src ($image_src) {
  //   global $wpdb;
  //   $query = "SELECT wp_ww_posts.ID  FROM wp_ww_posts WHERE wp_ww_posts.guid = '$image_src'";
  //   $my_id = $wpdb->get_var($query);
  //   $id = $wpdb->get_var($query);
  //   return $id;
  // }
  function get_attachment_id( $url ) {
    $dir = wp_upload_dir();
    // var_dump($dir);
    // baseurl never has a trailing slash
    if ( false === strpos( $url, $dir['baseurl'] . '/' ) ) {
      // URL points to a place outside of upload directory
      return false;
    }
    $file  = basename( $url );
    $query = array(
      'post_type'  => 'attachment',
      'fields'     => 'ids',
      'meta_query' => array(
        array(
          'value'   => $file,
          'compare' => 'LIKE',
        ),
      )
    );
    $query['meta_query'][0]['key'] = '_wp_attached_file';
    // query attachments
    $ids = get_posts( $query );

    if ( ! empty( $ids ) ) {
      foreach ( $ids as $id ) {
        // first entry of returned array is the URL
        if ( $url === array_shift( wp_get_attachment_image_src( $id, 'full' ) ) )
        return $id;
      }
    }
    $query['meta_query'][0]['key'] = '_wp_attachment_metadata';
    // query attachments again
    $ids = get_posts( $query );
    if ( empty( $ids) )
    return false;
    foreach ( $ids as $id ) {
      $meta = wp_get_attachment_metadata( $id );
      foreach ( $meta['sizes'] as $size => $values ) {
        if ( $values['file'] === $file && $url === array_shift( wp_get_attachment_image_src( $id, $size ) ) )
        return $id;
      }
    }
    return false;
  }

  /*getting the other image infos like cpation, alt,title,description*/
  function wp_get_attachment( $attachment_id, $miu_desc ) {
   $img_src = wp_get_attachment_image_src( $attachment_id, 'room-slider' );
   // $img_src = wp_get_attachment_metadata($attachment_id);
   // $img_src = wp_get_attachment_image( $attachment_id, 'room-slider' );
   // return $img_src;
   return array(
     'src' => $img_src[0],
     'description' => $miu_desc
   );
  }
  /*get term's id using slug and taxonomy*/
  function get_term_id_using_slugtax($slug,$taxonomy){
    $term = get_term_by( 'slug', $slug,$taxonomy);
    if($term){
      return $term->term_id;
    }
    return '';
  }

  //function to add short code for social icon
  function shortcodeadd(){
  if(function_exists("wp_social_bookmarking_light_output_e")){
              wp_social_bookmarking_light_output_e();
     }
 }
  add_shortcode('socialbookmark', 'shortcodeadd');



  //register menu
  function register_main_menus() {
  	register_nav_menus( array(
  	'header_menu'   => __( 'Header Menu', 'WhiteWater' )
  	) );
  };
  if (function_exists('register_nav_menus')) add_action( 'init', 'register_main_menus' );

  //register header
  $defaults = array(
  	'default-image'          => '',
  	'width'                  => 0,
  	'height'                 => 0,
  	'flex-height'            => false,
  	'flex-width'             => false,
  	'uploads'                => true,
  	'random-default'         => false,
  	'header-text'            => true,
  	'default-text-color'     => '',
  	'wp-head-callback'       => '',
  	'admin-head-callback'    => '',
  	'admin-preview-callback' => '',
  );
  add_theme_support( 'custom-header', $defaults );

 //search for only post..exlude pages
  function mySearchFilter($query) {
  if ($query->is_search && !is_admin()) {
  $query->set('post_type', array('whitewater_building','whitewater_news'));
  }
  return $query;
  }

  add_filter('pre_get_posts','mySearchFilter');

      //creating short code to show the taxonomy category name for whiterwater building
      add_shortcode('prefix-top-level-terms-building', 'prefix_top_level_terms_building');
      function prefix_top_level_terms_building() {
          $taxonomy = 'whitewater_building_categories';
          $terms = get_the_terms(get_the_ID(), $taxonomy);
          if($terms){

            foreach ($terms as $term) {
                $parent = $term->parent;
                if ( $parent == '0' ) {
                    //$term_link = get_term_link($term, $taxonomy);
                    //return '<a href="' . esc_url($term_link) . '">' . $term->name . '</a>';
                    return  $term->name ;
                }
            }
        }else{
          return "";
        }
      }

  //creating short code to show the taxonomy category name for whiterwater news
  add_shortcode('prefix-top-level-terms-news', 'prefix_top_level_terms_news');
  function prefix_top_level_terms_news() {
      $taxonomy = 'whitewater_news_categories';
      $terms = get_the_terms(get_the_ID(), $taxonomy);
      if($terms){

        foreach ($terms as $term) {
            $parent = $term->parent;
            if ( $parent == '0' ) {
                //$term_link = get_term_link($term, $taxonomy);
                //return '<a href="' . esc_url($term_link) . '">' . $term->name . '</a>';
                return  $term->name ;
            }
        }
    }else{
      return "";
    }
  }

  // get taxonomies and terms links
  function custom_taxonomies_sub_terms_links(){
    // get post by post id
    $post = get_post( $post->ID );
    // get post type by post
    $post_type = $post->post_type;
    // get post type taxonomies
    $taxonomies = get_object_taxonomies( $post_type, 'object' );
    $out = '';
    foreach ( $taxonomies as $taxonomy_slug => $taxonomy ){
      // get the terms related to post
      $terms = get_the_terms( $post->ID, $taxonomy_slug );
      if(!empty($terms)){
    foreach ( $terms as $term ) {
          //var_dump($term);
        $link = get_term_link($term->slug, $taxonomy_slug);
      if($term->parent>0){
          return $term ->name;
      }else{
          return false;
          }
        }
      }
    }
  }

  //creating short code to show the taxonomy term name with link for whitewater news
  add_shortcode('link-prefix-top-level-terms-news', 'link_prefix_top_level_terms_news');
  function link_prefix_top_level_terms_news() {
      $taxonomy = 'whitewater_news_categories';
      $terms = get_the_terms(get_the_ID(), $taxonomy);
      if($terms){

        foreach ($terms as $term) {
            $parent = $term->parent;
            if ( $parent == '0' ) {
                $term_link = get_term_link($term, $taxonomy);
                return '<a href="' . esc_url($term_link) . '">' . $term->name . '</a>';
            }
        }
    }else{
      return "";
    }
  }

  //breadcrumb for taxonomy news
  add_shortcode('custom-link-to-taxonomy-news','custom_link_to_taxonomy_news');
  function custom_link_to_taxonomy_news(){

    $term = get_queried_object();//esle current queried object dincha
    //check current queried objec term name
      if(!empty($term->name) && $term->name<>custom_taxonomies_sub_terms_links()) {
      return '<li>'.$term->name.'</li>';
    }
  }

  //breadcrumb for taxonomy building
  add_shortcode('custom-link-to-taxonomy-building','custom_link_to_taxonomy_building');
  function custom_link_to_taxonomy_building(){

    $term = get_queried_object();//esle current queried object dincha
    //check current queried objec term name
      if(!empty($term->name) && $term->name<>custom_taxonomies_sub_terms_links()) {
      return '<li>'.$term->name.'</li>';
    }
  }
  //creating short code to show the taxonomy term name with link for whitewater building
  add_shortcode('link-prefix-top-level-terms-building', 'link_prefix_top_level_terms_building');
  function link_prefix_top_level_terms_building() {
      $taxonomy = 'whitewater_building_categories';
      $terms = get_the_terms(get_the_ID(), $taxonomy);
      if($terms){

        foreach ($terms as $term) {
            $parent = $term->parent;
            if ( $parent == '0' ) {
                $term_link = get_term_link($term, $taxonomy);
                return '<a href="' . esc_url($term_link) . '">' . $term->name . '</a>';
            }
        }
    }else{
      return "";
    }
  }

  // function to remove h1 class from admin
  function block_heading($arr){
      $arr['block_formats'] = 'Paragraph=p;Address=address;Pre=pre;Heading 3=h3;Heading 4=h4;Heading 5=h5;Heading 6=h6';
      return $arr;
    }
  add_filter('tiny_mce_before_init', 'block_heading');
  ?>
