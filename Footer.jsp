
<footer>
					<div class="footer-top_agile_w3l">
					<!--	<div class="container">
							<div class="footer-grids">
								
								<div class="col-md-2 footer-grid_wthree_info">
									<h3>Links</h3>
									<ul class="footer-list">
										<li> <a href="#welcome" class="scroll">About</a> </li>
										<li> <a href="#pricing" class="scroll">pricing</a> </li>
										<li> <a href="#team" class="scroll">team</a> </li>
										<li> <a href="#clients" class="scroll">testimonials</a> </li>
										<li> <a href="#services" class="scroll">Services</a> </li>
										<li> <a href="#contact" class="scroll">contact</a> </li>
									</ul>
								</div>
								<div class="col-md-5 footer-grid_wthree_info">
									<h3>Newsletter</h3>
									<form action="#" method="post">
										<input type="text" name="text" placeholder="Name" required="">
										<input type="email" name="Email" placeholder="Email" required="">
										<input type="submit" value="subscribe now">
									</form>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="wthree_copy_right">-->
								<p align="center"><strong><font style="color:yellow">Secure Cloud Storage with Smooth Projective Hash Functioning</font></strong></p>
							</div>
						</div>
					</div>
					
			</div>
			</footer>
			<!-- //footer -->
			<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
			<!-- js -->
			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		   <!-- start-smoth-scrolling -->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->  
			<script type="text/javascript" src="js/darkbox.js"></script>
			<script src="js/wimmViewer.js"></script>
			<script>
				$(function () {
					$('#slider1').WimmViewer({
						miniatureWidth: 100,
						miniatureHeight: 100
						// Availables customizations:
						/*
						 miniatureSpace: 10,
						 nextText:'Next',
						 prevText:'Prev',
						 onImgChange : function() { console.log('changed'); },
						 onNext : function() { console.log('next'); },
						 onPrev : function() { console.log('previous'); },
						 */
					});
				})
			</script>
			<!-- for pricing -->
			<!-- Pricing-Popup-Box-JavaScript -->
			<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!-- //Pricing-Popup-Box-JavaScript -->
			<!-- carousel -->
			<script src="js/owl.carousel.js"></script>
			<!-- //carousel -->
			<!-- for bootstrap working -->
			<script type="text/javascript" src="js/customJquery.js"></script>
			<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>