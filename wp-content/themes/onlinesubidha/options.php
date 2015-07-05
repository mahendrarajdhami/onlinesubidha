<?php
	/**
	* A unique identifier is defined to store the options in the database and reference them from the theme.
	* By default it uses the theme name, in lowercase and without spaces, but this can be changed if needed.
	* If the identifier changes, it'll appear as if the options have been reset.
	*/
	function optionsframework_option_name() {
	// This gets the theme name from the stylesheet
		$themename = wp_get_theme();
		$themename = preg_replace("/\W/", "_", strtolower($themename) );
		$optionsframework_settings = get_option( 'optionsframework' );
		$optionsframework_settings['id'] = $themename;
		update_option( 'optionsframework', $optionsframework_settings );
	}
	/**
	* Defines an array of options that will be used to generate the settings page and be saved in the database.
	* When creating the 'id' fields, make sure to use all lowercase and no spaces.
	*/

	function optionsframework_options() {
		// If using image radio buttons, define a directory path
		$imagepath =  get_template_directory_uri() . '/images/';

		$options = array();
		//first tab when theme option is clicked
		$options[] = array(
			'name' => __('Footer Contacts', 'onlinesubidha'),
			'type' => 'heading');

		$options[] = array(
			'name' => __('Fax', 'onlinesubidha'),
			'desc' => __('Official  Fax will be shown in footer', 'onlinesubidha'),
			'id'   => 'footer_fax',
			'std'  => '',
			'type' => 'text');
		$options[] = array(
			'name' => __('Tel', 'onlinesubidha'),
			'desc' => __('Official Telephone will be shown in footer ', 'onlinesubidha'),
			'id'   => 'footer_tel',
			'std'  => '',
			'type' => 'text');
		$options[] = array(
			'name' => __('Email ID', 'onlinesubidha'),
			'desc' => __('Info Email Id for Footer', 'onlinesubidha'),
			'id'   => 'footer_mail',
			'std'  =>	'',
			'type' => 'text'
			);
		$options[] = array(
			'name' => __('Url', 'onlinesubidha'),
			'desc' => __('Official Url for Footer', 'onlinesubidha'),
			'id'   => 'footer_url',
			'std'  =>	'',
			'type' => 'text'
			);
		$options[] = array(
			'name' => __('Address', 'onlinesubidha'),
			'desc' => __('Official Address', 'onlinesubidha'),
			'id'   => 'footer_address',
			'std'  =>	'',
			'type' => 'text'
			);

		//second tab when theme option is clicked (for official social links)
		$options[] = array(
			'name' => __('Social Links', 'onlinesubidha'),
			'type' => 'heading');
		$options[] =array(
			'name' => __('Facebook', 'onlinesubidha'),
			'desc' => __('Official Facebook page'),
			'std'  => 'https://www.facebook.com/pages/miracleinterface',
			'id'   => 'footer_social_link_facebook',
			'type' =>'text',
			);
		$options[] =array(
			'name' => __('Twitter', 'onlinesubidha'),
			'desc' => __('Official Twitter page'),
			'std'  => '',
			'id'   => 'footer_social_link_twitter',
			'type' =>'text',
			);

		$options[] =array(
			'name' => __('Googleplus', 'onlinesubidha'),
			'desc' => __('Official google+ page'),
			'id'   => 'footer_social_link_google',
			'std'  => '',
			'type' =>'text',
			);
		$options[] =array(
			'name' => __('LinkedIn', 'onlinesubidha'),
			'desc' => __('Official linkedin page'),
			'id'   => 'footer_social_link_linkedin',
			'std'  => '',
			'type' =>'text',
			);
		/*Third Banner*/
		$options[] = array(
			'name' => __( 'Banner', 'onlinesubidha' ),
			'type' => 'heading'
		);
		for( $i=1; $i<=3; $i++) {
			$options[] = array(
				'name' 	=>	sprintf( __( 'banner #%1$s', 'onlinesubidha' ), $i ),
				'desc' 	=> __( 'Upload Banner Image.', 'onlinesubidha' ),
				'id' 		=> 'onlinesubidha_banner_image'.$i,
				'type' 	=> 'upload'
			);
			$options[] = array(
				'name' => __('Link','onlinesubidha'),
				'desc' 	=> __( 'Enter link to redirect banner when clicked', 'onlinesubidha' ),
				'id' 		=> 'onlinesubidha_banner_link'.$i,
				'std' 	=>'',
				'type' 	=> 'text'
			);
			$options[] = array(
				'name' => __('Caption','onlinesubidha'),
				'desc' 	=> __( 'Enter Caption for Banner', 'onlinesubidha' ),
				'id' 		=> 'onlinesubidha_banner_caption'.$i,
				'std' 	=>'',
				'type' 	=> 'text'
			);
		}
		return $options;
	}//end of optionsframework_options function