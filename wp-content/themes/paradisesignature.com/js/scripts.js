( function() {

	var app = {

		initRangePicker: function(){
			var $rangeslider = jQuery('.property-range-line #price_range'),
			$minPrice = jQuery('.property-range-line .selected-min-price'),
			$maxPrice = jQuery('.property-range-line .selected-max-price');
		jQuery('.property-range-line #price_range').ionRangeSlider({
			type: 'double',
			min: 0,
			max: 100,
			hide_min_max: true,
			hide_from_to: true,
			onFinish: function () {
			}
		});
		$rangeslider.on("change", function () {
			var $this = jQuery(this),
				value = $this.prop("value").split(";");
			_minPrice = (value[0] < 1 ? value[0] : value[0] + 'M');
			_maxPrice = (value[1] < 1 ? value[1] : value[1] + 'M');
			$minPrice.text('$' + _minPrice);
			$maxPrice.text('$' + _maxPrice);
			_maxPrice = (parseInt(_maxPrice) * 1000000);
			_minPrice = (parseInt(_minPrice) * 1000000);
			jQuery('.property-range-line .min-price-class').val(_minPrice);
			jQuery('.property-range-line .max-price-class').val(_maxPrice);
			jQuery('#min_price').val(_minPrice);
			jQuery('#max_price').val(_maxPrice);
		});
		console.log('working');
		},

		siteOffcanvas: function() {
            jQuery('#nav2 li.menu-item-has-children > a').on('click', function(e) {
                var $this = $(this);
                var $parent = $this.parent('li');
                var $subMenu = $this.next('.sub-menu');
                if (!$parent.hasClass('offcanvas-submenu-open')) {
                    e.preventDefault();
                    $parent.addClass('offcanvas-submenu-open');
                    $subMenu.slideDown(500);
                } else {
                    $parent.addClass('redirect');
                }
                var $selectedMenu = $this;
                var $topLevelMenu = $selectedMenu.parents('.menu-item-has-children');
                if (!$selectedMenu.closest('li.menu-item-has-children').hasClass('redirect')) {
                    var $hideMenu = $('#nav2 > ul > li.offcanvas-submenu-open').not($topLevelMenu);
                    $hideMenu.removeClass('offcanvas-submenu-open');
                    $hideMenu.find('> ul').slideUp(500, function() {
                        jQuery(this).find('.offcanvas-submenu-open').removeClass('offcanvas-submenu-open');
                        jQuery(this).find('.offcanvas-submenu-open > ul').hide();
                    });
                }
            });
        },


		initBurgerMenu: function() {
			jQuery('.burger-menu').on('click',function(e){
				e.preventDefault();
				if(jQuery(this).hasClass('is-open')){
					jQuery(this).removeClass('is-active');
					jQuery('.bm-view').removeClass('is-open');
				}
				else{
					jQuery(this).addClass('is-active');
					jQuery('.bm-view').addClass('is-open');
				}
			});
			jQuery('.bm-drop, .bm-close').on('click',function(e){
				e.preventDefault();
				jQuery('.bm-view').removeClass('is-open');
				jQuery('.bm-btn').removeClass('is-active');
			});
		},


		initDetectScroll: function() {
			if( jQuery(window).width() > 991 && jQuery(window).scrollTop()  > 56 ) {
				jQuery('header.header').addClass('show-fixed');
			} else {
				jQuery('header.header').removeClass('show-fixed');
			}
		},
		
		initNavigation: function() {
			var $nav = jQuery( '#nav' );
			if ( $nav.length > 0 ) $nav.navTabDoubleTap();
		},
		initFeaturedProperties: function() {
			/* Put featured properties code here */
		},
		initFeaturedCommunities: function() {
			/* Put featured communities code here */
		},
		initTestimonials: function() {
			/* Put testimonials code here */
		},
		initQuickSearch: function() {
			/* Put quick search code here */
		},
		initCustomFunction: function() {
			/* See the pattern? Create more functions like this if needed. */
		}
		
	}

	var slider = document.getElementById("myRange");
	var output = document.getElementById("demo");
	output.innerHTML = slider.value;

		slider.oninput = function() {
		output.innerHTML = this.value;
		}

	
	jQuery(document).ready( function() {

		app.initRangePicker();

		app.siteOffcanvas();
		
		app.initBurgerMenu();

		/* Initialize navigation */
		app.initNavigation();
		
		/* Initialize featured properties */
		app.initFeaturedProperties();

		/* Initialize featured communities */
		app.initFeaturedCommunities();
		
		/* Initialize testimonials */
		app.initTestimonials();
		
		/* Initialize quick search */
		app.initQuickSearch();
		
	});
	
	jQuery(window).on('load', function(){


	})

	jQuery(window).on('scroll', function(){
		app.initDetectScroll();

	})


})();