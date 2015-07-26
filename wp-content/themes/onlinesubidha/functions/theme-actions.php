<?php
	// Register Styles
	function register_my_styles(){

		wp_register_style('style', get_template_directory_uri() .'/style.css');
		wp_enqueue_style( 'style');
	}
	add_action('wp_print_styles', 'register_my_styles');

