
<!-- pages-title-start -->
<div class="pages-title section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2>Thông tin liên hệ</h2>
					<ul class="text-left">
						<li><a href="?act=home">Trang chủ</a></li>
						<li><span> // </span>Liên hệ</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- pages-title-end -->
<!-- contact content section start -->
<div class="pages contact-page section-padding">
	<div class="container text-center">
		<div class="row">
			<div class="col-sm-12">
				<div class="googleMap-info">
					
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.733396310402!2d108.25016631453802!3d15.975293088939052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4!5e0!3m2!1svi!2s!4v1670989133894!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				
					<div class="map-info">
						<p><strong>DUCVUSHOP</strong></p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-10 col-text-center">
				<div class="contact-details">
					<div class="row">
						<div class="col-sm-4">
							<div class="single-contact">
								<i class="mdi mdi-map-marker"></i>
								<p>470 Trần Đại Nghĩa,</p>
								<p>Trường đại học CNTT & TT Việt Hàn</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="single-contact">
								<i class="mdi mdi-phone"></i>
								<p>0345934782</p>
								<p>0123456789</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="single-contact">
								<i class="mdi mdi-email"></i>
								<p>vutd.21it@vku.udn.vn</p>
                                <p>toantc.21it@vku.udn.vn</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="single-contact">
							<i class="mdi mdi-shopping"></i>
							<p>Tìm cửa hàng gần bạn nhất</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- contact content section end -->
<!-- Google Map JS -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
	function initialize() {
	
		var mapOptions = {
		zoom: 17,
		hue: '#E9E5DC',
		scrollwheel: false,
		mapTypeId:google.maps.MapTypeId.TERRAIN,
		center: new google.maps.LatLng(15.975012373324676, 108.25323543305565)
		};

		var map = new google.maps.Map(document.getElementById('googleMap'),
			mapOptions);


		var marker = new google.maps.Marker({
		position: map.getCenter(),
		icon: 'public/img/map-marker.png',
		map: map
		});

	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>
