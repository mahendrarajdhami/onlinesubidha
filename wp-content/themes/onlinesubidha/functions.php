<?php
	$includes_path = get_template_directory() . '/functions/';
	/***Theme actions and scripts***/
	require_once ($includes_path . 'theme-actions.php');
	// Load JavaScript via wp_enqueue_script
	require_once ($includes_path . 'theme-scripts.php');

	//calling theme options and its framework
	define('OPTIONS_FRAMEWORK_DIRECTORY', get_template_directory_uri() . '/inc/');
    require_once dirname(__FILE__) . '/inc/theme-options.php';
    
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
  add_action('after_setup_theme', 'onlinesubidha');
  function onlinesubidha(){
    load_theme_textdomain('onlinesubidha', get_template_directory() . '/languages');
  }
  // to add custom css to admin
  function my_custom_css() {
    $path = get_template_directory_uri();
    echo "<link rel='stylesheet' href='$path/css/admin-custom.css' type='text/css' media='all' />";
  }
  add_action('login_head', 'my_custom_css');
  add_action('admin_head', 'my_custom_css');

  /*custom admin login logo link and title*/
   function my_login_logo_url() {
      return home_url();
   }
   add_filter( 'login_headerurl', 'my_login_logo_url' );
   function my_login_logo_url_title() {
      return 'Powered By Kintech';
   }
   add_filter( 'login_headertitle', 'my_login_logo_url_title' );

  //hide Header Menu bar of ADMIN
  function remove_admin_bar_menu( $wp_admin_bar ) {
      $wp_admin_bar->remove_menu('wp-logo');
      $wp_admin_bar->remove_menu('updates');
  }
  add_action( 'admin_bar_menu', 'remove_admin_bar_menu', 201 );
  //post thumbnail support of theme
  if (function_exists('add_theme_support')) {
    add_theme_support('post-thumbnails');
    add_image_size('banner',1400,327,true);
    add_image_size('feature-news-footer',70,70,true);
    add_image_size('feature-news-date-archive',170,90,true);
    add_image_size('cat_header_image',21,23,true);
    add_image_size('cat_feature_image',199,154,true);
    add_image_size('video_feature_image',280,208,true);
    add_image_size('add_top_feature_image',343,121,true);
    add_image_size('add_sidebar_feature_image',254,273,true);
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
  /*get current page slug*/
  function get_current_page(){
    global $post;
    if(empty($post)) return false;
    $slug = get_post($post)->post_name;
    return $slug;
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
  	'header_menu'   => __( 'Header Menu', 'onlinesubidha' )
  	) );
  };
  if (function_exists('register_nav_menus')) add_action( 'init', 'register_main_menus' );
?>
