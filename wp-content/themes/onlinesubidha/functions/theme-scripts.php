<?php

if ( ! is_admin() ) { add_action( 'wp_print_scripts', 'onlinesubidha_js' ); }

function onlinesubidha_js() {
  wp_enqueue_script('jquery', get_template_directory_uri() .'/js/jquery.js','','', false);
  wp_enqueue_script('jquery.easing', get_template_directory_uri() .'/js/jquery.easing.1.3.js','jquery','', false);
  wp_enqueue_script('camera', get_template_directory_uri() .'/js/camera.js','jquery','', tuue);
  wp_enqueue_script('jquery.ui.totop', get_template_directory_uri() .'/js/jquery.ui.totop.js','','', false);
  wp_enqueue_script('modernizr', get_template_directory_uri() .'/js/modernizr.js','','', false);
  wp_enqueue_script('jquery.mobile.customized.min', get_template_directory_uri() .'/js/jquery.mobile.customized.min.js','','', false);
  wp_enqueue_script('custom', get_template_directory_uri() .'/js/custom.js','','', true);
  wp_enqueue_script('bootstrap', get_template_directory_uri() .'/js/bootstrap.js','','', true);
}