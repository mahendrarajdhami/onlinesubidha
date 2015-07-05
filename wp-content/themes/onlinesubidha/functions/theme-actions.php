<?php
	// Register Styles
	function whitewater_register_style(){

		wp_register_style('style', get_template_directory_uri() .'/style.css');
		wp_enqueue_style( 'style');
	}
	add_action('wp_print_styles', 'whitewater_register_style');

