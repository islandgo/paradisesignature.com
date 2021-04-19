( function() {

	var app = {
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

			var $rangeslider = jQuery('.qs-range-field #qs-range'),
			$minPrice = jQuery('.qs-range-field .selected-min-price'),
			$maxPrice = jQuery('.qs-range-field .selected-max-price');

			jQuery('.qs-range-field #qs-range').ionRangeSlider({
				type: 'double',
				min: 1,
				max: 10,
				from: 1,
				to: 10,
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
				// console.log(_minPrice);
				// console.log(_maxPrice);
				$minPrice.text('$' + _minPrice);
				$maxPrice.text('$' + _maxPrice);

				_maxPrice = (parseInt(_maxPrice) * 1000000);
				_minPrice = (parseInt(_minPrice) * 1000000);

				$minPrice.val(convertPrice(_minPrice));
				$maxPrice.val(convertPrice(_maxPrice));



				jQuery('#min_price').val(_minPrice);
				jQuery('#max_price').val(_maxPrice);

			});

			function convertPrice (price) {
				// Nine Zeroes for Billions
				return Math.abs(Number(price)) >= 1.0e+9
				? Math.abs(Number(price)) / 1.0e+9 + "B"
				// Six Zeroes for Millions
				: Math.abs(Number(price)) >= 1.0e+6
				? Math.abs(Number(price)) / 1.0e+6 + "M"
				// Three Zeroes for Thousands
				: Math.abs(Number(price)) >= 1.0e+3
				? Math.abs(Number(price)) / 1.0e+3 + "K"
				: Math.abs(Number(price));
			}

		},
		initCustomFunction: function() {
			/* See the pattern? Create more functions like this if needed. */
		}
		
	}

	
	jQuery(document).ready( function() {

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