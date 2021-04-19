<?php get_header(); ?>

<!-- your home html -->

<!-- Slideshow -->
<section class="hp-slideshow">
	<h2 class="hidden">hidden h2</h2>
	<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Hp Slideshow") ) : ?><?php endif ?>
	<div class="slide-logo">
		<a href="blogurl" aria-label="logo">
			<img alt="logo" class="img-responsive" src="<?php echo get_stylesheet_directory_uri() ?>/images/slide-logo.png">
		</a>
	</div>
	<div class="slide-arrow">
		<img alt="arrow" class="img-responsive" src="<?php echo get_stylesheet_directory_uri() ?>/images/slide-arrow.png">
	</div>
	<div class="slide-burger">
		<div class="burger-menu">
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
</section>
<!-- End Slideshow -->
<!-- Welcome -->
<section class="hp-welcome">
	<div class="container welcome-grid">
		<div class="row">
			<div class="col-md-5">
				<div class="welcome-img">
					<canvas width="545" height="484" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/properties-img.png')"></canvas>
				</div>
			</div>
			<div class="col-md-7">
				<div class="welcome-holder">
					<div class="global-site-title">
						<div class="site-title-number">
							<span>01</span>
							<span class="title-border"></span>
						</div>
						<h2>Paradise Properties of</h2>
						<h3>NSB / SIGNATURE GROUP</h3>
					</div>
					<p>Our approach to transacting real estate in simple... We get to know our clients, understand their needs and walk them through every stage of the transaction from beginning to end. This simple approach allows us to utilize our experience of superior client service to deliver and exceed our client's expectations throughout the home buying and or selling process. As an organization, we understand the need for quality representation at very level of a trasaction. As full time Realtors specializing in the New smyrna Beach and surrounding areas of Volisia County, Florida, we couldn't ask for a better job...</p>
					<a href="#" aria-label="read more" class="global-site-btn">read more +</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Welcome end -->

<!-- QS start -->
<section class="hp-qs site-qs">
	<div class="hp-qs-holder">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="global-site-title">
						<div class="site-title-number">
							<span>02</span>
							<span class="title-border"></span>
						</div>
						<h2>Quick</h2>
						<h3>Search</h3>
					</div>
				</div>
				<div class="col-md-8 form">
					<div class="qs-form">
						<div class="qs-lg">
							<div class="qs-list">
								<select aria-label="qs-fields">
									<option value="All Cities">All Cities</option>
									<option value="All Cities">All Cities</option>
									<option value="All Cities">All Cities</option>
								</select>
							</div>
							<div class="qs-md">
								<select aria-label="qs-fields">
									<option value="Beds">Beds</option>
									<option value="Beds">Beds</option>
									<option value="Beds">Beds</option>
								</select>
							</div>
							<div class="qs-md">
								<select aria-label="qs-fields">
									<option value="Baths">Baths</option>
									<option value="Baths">Baths</option>
									<option value="Baths">Baths</option>
								</select>
							</div>
						</div>
						<div class="qs-range">
							<div class="qs-range-field">
								<input type="hidden" id="min_price" name="min_price" value="">
								<input type="hidden" id="max_price" name="max_price" value="">
								<div class="qs-range-price-wrap">
									<span class="selected-price selected-min-price">$100k</span>
									<span class="selected-price selected-max-price">$100m</span>
								</div>
								<input type="text" name="qs-range" id="qs-range" aria-label="qs-range">
							</div>
							<div class="p-btn">
								<a href="#" aria-label="Search" class="global-site-btn">Search +</a>
							</div> 
							<div class="p-btn">
								<a href="#" aria-label="Advanced" class="global-site-btn">Advanced +</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- QS end -->

<!-- featured start -->
<section class="hp-properties">
	<div class="global-site-title">
		<div class="site-title-number">
			<span>03</span>
			<span class="title-border"></span>
		</div>
		<h2>FEATURED</h2>
		<h3>LISTINGS</h3>
	</div>
	<div class="property-slick js-property-slick">
		<!-- Slick Item -->
		<div class="property-item-wrap">
			<a href="#" class="property-item">
				<div class="property-image">
					<canvas width="821" height="541" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/fp-2.jpg')"></canvas>
				</div>
				<div class="property-details">
					<div>
						<div class="property-address">720 East Walnut Avenue</div>
						<div class="property-address">El Segundo, Ca 90245</div>
					</div>
					<div>
						<div class="property-price">$490,990</div>
						<div class="property-misc">
							<span class="property-beds">3 beds</span>
							<span class="property-baths">4.5 baths</span>
						</div>
					</div>
				</div>
				<div class="property-hover">
					<div class="property-price">$490,990</div>
					<div class="property-address">720 East Walnut Avenue</div>
					<div class="property-address">El Segundo, Ca 90245</div>
					<div class="property-misc">
						<span class="property-beds">3 beds</span>
						<span class="property-baths">4.5 baths</span>
					</div>
					<div class="btn view-det default-btn">View Details</div>
				</div>
			</a>
		</div>
		<!-- End Slick Item -->
		<!-- Slick Item -->
		<div class="property-item-wrap">
			<a href="#" class="property-item">
				<div class="property-image">
					<canvas width="821" height="541" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/fp-2.jpg')"></canvas>
				</div>
				<div class="property-details">
					<div>
						<div class="property-address">720 East Walnut Avenue</div>
						<div class="property-address">El Segundo, Ca 90245</div>
					</div>
					<div>
						<div class="property-price">$490,990</div>
						<div class="property-misc">
							<span class="property-beds">3 beds</span>
							<span class="property-baths">4.5 baths</span>
						</div>
					</div>
				</div>
				<div class="property-hover">
					<div class="property-price">$490,990</div>
					<div class="property-address">720 East Walnut Avenue</div>
					<div class="property-address">El Segundo, Ca 90245</div>
					<div class="property-misc">
						<span class="property-beds">3 beds</span>
						<span class="property-baths">4.5 baths</span>
					</div>
					<div class="btn view-det default-btn">View Details</div>
				</div>
			</a>
		</div>
		<!-- End Slick Item -->
		<!-- Slick Item -->
		<div class="property-item-wrap">
			<a href="#" class="property-item">
				<div class="property-image">
					<canvas width="821" height="541" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/fp-3.jpg')"></canvas>
				</div>
				<div class="property-details">
					<div>
						<div class="property-address">720 East Walnut Avenue</div>
						<div class="property-address">El Segundo, Ca 90245</div>
					</div>
					<div>
						<div class="property-price">$490,990</div>
						<div class="property-misc">
							<span class="property-beds">3 beds</span>
							<span class="property-baths">4.5 baths</span>
						</div>
					</div>
				</div>
				<div class="property-hover">
					<div class="property-price">$490,990</div>
					<div class="property-address">720 East Walnut Avenue</div>
					<div class="property-address">El Segundo, Ca 90245</div>
					<div class="property-misc">
						<span class="property-beds">3 beds</span>
						<span class="property-baths">4.5 baths</span>
					</div>
					<div class="btn view-det default-btn">View Details</div>
				</div>
			</a>
		</div>
		<!-- End Slick Item -->
	</div>
	<a href="#" class="global-site-btn" aria-label="View Listings">View All Listings +</a>
</section>
<!-- featured end -->

<!-- Communities -->
<section class="hp-communities">
	<div class="container-fluid">
		<div class="global-site-title">
			<div class="site-title-number">
				<span>04</span>
				<span class="title-border"></span>
			</div>
			<h2>Featured</h2>
			<h3>Communities</h3>
		</div>
		<div class="fc-holder">
			<div class="fc-list">
				<a href="#" aria-label="communities">
					<div class="fc-img">
						<canvas width="392" height="302" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/fc-1.jpg')"></canvas>
					</div>
					<div class="fc-title">
						NEW SMYRNA BEACH
					</div>
				</a>
			</div>
			<div class="fc-list">
				<a href="#" aria-label="communities">
					<div class="fc-img">
						<canvas width="392" height="302" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/fc-2.jpg')"></canvas>
					</div>
					<div class="fc-title">
						EDGEWATER
					</div>
				</a>
			</div>
			<div class="fc-list">
				<a href="#" aria-label="communities">
					<div class="fc-img">
						<canvas width="392" height="302" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/fc-3.jpg')"></canvas>
					</div>
					<div class="fc-title">
						PORT ORANGE
					</div>
				</a>
			</div>
		</div>
	</div>
</section>
<!-- End Communities -->

<!-- Hp git -->
<section class="hp-git">
	<div class="textwidget custom-html-widget">
		<div class="container">
			<div class="form-holder">
				<div class="global-site-title">
					<div class="site-title-number">
						<span>06</span>
						<span class="title-border"></span>
					</div>
					<h2>Get In Touch</h2>
					<h3>With US</h3>
				</div>
				<div class="git-form">
					<div class="form-md">
						<label for="git-fname">Name</label>
						<input type="text" id="name" placeholder="Name">
					</div>
	
					<div class="form-md">
						<label for="git-email">Email</label>
						<input type="text" id="git-email" placeholder="Email">
					</div>
	
					<div class="form-md">
						<label for="git-phone">phone</label>
						<input type="text" id="git-phone" placeholder="phone">
					</div>
					<div class="form-md form-msg">
						<label for="git-message">Message</label>
						<input type="text" id="git-message" placeholder="Message">
					</div>
				</div>
				<div class="global-btn">
					<a href="#" aria-label="sign up" class="global-site-btn">sign up +</a>
				</div>
			</div>
		</div>
	</div>	
</section>
<!-- End Git -->

<!-- Cta -->
<section class="hp-cta">
	<div class="cta-holder">
		<div class="cta-list">
			<a href="#" aria-label="cta">
				<div class="cta-img"><canvas width="423" height="302" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/git-img-1.jpg')"></canvas></div>
				<div class="cta-inner">
					<div class="cta-title">
						<h2>Buying a</h2>
						<h3>Home</h3>
						<div class="cta-btn">Know More +</div>
					</div>
				</div>
			</a>
		</div>
		<div class="cta-list">
			<a href="#" aria-label="cta">
				<div class="cta-img"><canvas width="423" height="302" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/git-img-2.jpg')"></canvas></div>
				<div class="cta-inner">
					<div class="cta-title">
						<h2>Help Me</h2>
						<h3>Relocate</h3>
						<div class="cta-btn">Know More +</div>
					</div>
				</div>
			</a>
		</div>
		<div class="cta-list">
			<a href="#" aria-label="cta">
				<div class="cta-img"><canvas width="423" height="302" style="background-image:url('<?php echo get_stylesheet_directory_uri() ?>/images/git-img-3.jpg')"></canvas></div>
				<div class="cta-inner">
					<div class="cta-title">
						<h2>Selling a</h2>
						<h3>Home</h3>
						<div class="cta-btn">Know More +</div>
					</div>
					
				</div>
			</a>
		</div>
	</div>
</section>
<!-- End Cta -->


<!-- footer -->
<section class="hp-footer">
	<div class="footer-left">
		<div class="footer-logo">
			<img alt="logo" class="img-responsive pad-right" src="<?php echo get_stylesheet_directory_uri() ?>/images/left-footer-logo.png">
			<div class="footer-text">
				
			</div>
		</div>
		<div class="footer-info">
			<div class="footer-phone">
				<span class="ai-font-phone"></span>
				386.847.1609
			</div>
			<div class="footer-email">
				<span class="ai-font-envelope-f"></span>
				paulobrienproperties@gmail.com
			</div>
	
			<div class="footer-smi">
				<a href="[ai_client_facebook]" aria-label="facebook" target="_blank">
					<span class="ai-font-facebook"></span>
				</a>
				<a href="[ai_client_instagram]" aria-label="instagram" target="_blank">
					<span class="ai-font-instagram"></span>
				</a>
			</div>
		</div>
	</div>
	<div class="footer-right">
		<div class="footer-form">
			<div class="ft-title">Contact US</div>
			<div class="ff-form">
				<div class="form-md pad-right">
            		<label for="ff-fname">Name</label>
            		<input type="text" id="ff-fname" placeholder="Name">
       			 </div>
				<div class="form-md pad-left">
					<label for="ff-phone">Phone</label>
					<input type="text" id="ff-phone" placeholder="phone">
				</div>
				<div class="form-lg">
					<label for="ff-message">message</label>
					<textarea  id="ff-message" placeholder="Message"></textarea>
				</div>
				<div class="ff-btn">
					<input type="submit" value="Send">
				</div>
			</div>
		</div>
	</div>
</section>
<!-- end footer -->

<?php get_footer(); ?>
