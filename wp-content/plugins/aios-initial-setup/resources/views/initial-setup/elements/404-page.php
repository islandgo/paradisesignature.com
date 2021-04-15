<?php
	get_header();

	$def_photo_left = AIOS_INITIAL_SETUP_RESOURCES . 'images/404-text-image.png';
	$def_photo_right = AIOS_INITIAL_SETUP_RESOURCES . 'images/404-image-right.png';
	$def_photo_left_invert 	= AIOS_INITIAL_SETUP_RESOURCES . 'images/404-text-image-invert.png';
	$def_photo_right_invert = AIOS_INITIAL_SETUP_RESOURCES . 'images/404-image-right-invert.png';

  $pageNotFound = get_option('404_settings', [
    'photo_left' => AIOS_INITIAL_SETUP_RESOURCES . 'images/404-text-image.png' ,
    'photo_right' => AIOS_INITIAL_SETUP_RESOURCES . 'images/404-image-right.png',
    'error_verbiage' => 'Please check the webpage URL to make sure you have the correct address. It may also be possible that the content of this page is not yet ready for viewing. Feel free to revisit this page at another time or contact the website administrator for further assistance.',
    'error_form' => '[contact-form-7 title=\'404 Page Form (Auto-generated by AIOS Initial Setup)\' html_class=\'use-floating-validation-tip\']',
    'error_template' => "sidebar"
  ]);


  $photo_left= str_exists($pageNotFound['photo_left'], 'aios-initial-setup') ? $def_photo_left : $pageNotFound['photo_left'];
  $photo_right = str_exists($pageNotFound['photo_right'], 'aios-initial-setup') ? $def_photo_right : $pageNotFound['photo_right'];
	$error_verbiage = $pageNotFound['error_verbiage'];
	$error_form = $pageNotFound['error_form'];
	$error_template = $pageNotFound['error_template'];
	$invert_color = ! empty($pageNotFound['invert_color']) ? 'error-page-invert' : '';

	// Invert photo
	$photo_left = ! empty($invert_color) && $photo_left === $def_photo_left ? $def_photo_left_invert : $photo_left;
	$photo_right = ! empty($invert_color) && $photo_right === $def_photo_right ? $def_photo_right_invert : $photo_right;
?>
<div id="<?php echo $pageNotFound['error_template']; ?>">
	<article id="content" class="hfeed">

		<?php do_action('aios_starter_theme_before_inner_page_content') ?>

		<div class="error-page-content-wrapper <?=$invert_color?>">
			<div class="error-page-image-holder">
				<div class="error-page-image-left">
					<img style="max-width: 383px" src="<?=$photo_left?>" alt="404 Page - Not Found">
				</div>
				<div class="error-page-image-right">
					<img style="max-width: 247px" src="<?=$photo_right?>" alt="404 Page - Not Found">
				</div>
			</div>
			<div class="error-page-excerpt">
				<p><?=$error_verbiage ?></p>
			</div>

			<div class="error-page-cf-wrap">
				<?=do_shortcode(stripslashes($error_form)); ?>
			</div>

		</div>

		<?php do_action('aios_starter_theme_after_inner_page_content') ?>

    </article><!-- end #content -->

    <?php $error_template === "content-sidebar" ? get_sidebar() : ""  ?>
</div><!-- end #content-sidebar -->

<?php get_footer(); ?>