<?php get_header(); ?>

<div id="conatiner">
	<div class="details_wrap">
<div class="breadcumb">
  <ul>
    <li><a href="<?php echo bloginfo('url' ); ?>">HOME</a></li>
    <li>&gt;</li>
    <li><?php $term = $wp_query->queried_object; echo ucfirst($term->post_title); ?></li>
  </ul>
</div>
<?php
 	if ( have_posts() ) : while(have_posts()):the_post();
	?>
	<div class="detail_left override">
		<div class="inner-detailleft">
		<?php
			?>
			<h2><?php the_title();?></h2>
			<?php
			if(has_post_thumbnail()) {
				the_post_thumbnail();
			}
			the_content();
		?>
		<?php endwhile;endif; ?>
		</div>
	</div>
<?php get_sidebar('news_rooms' ); ?>
</div>
	</div>

<?php get_footer(); ?>