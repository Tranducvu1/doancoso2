
     <div class="main-slider-one main-slider-two slider-area">
    <div id="wrapper">
        <div class="slider-wrapper">
            <div id="mainSlider" class="nivoSlider">
                    <img id="img" onclick="changeImage()"  src="images/index/anhbia03.png"></div>
            </div>
            <div id="htmlcaption" class="nivo-html-caption slider-caption">
                <div class="container">
                    <div class="slider-left slider-right">
                        <div class="slide-text animated zoomInUp">
                            <h3>SALE CỰC MẠNH</h3>
                            <hr>
                            <h1>CHẤT LƯỢNG CAO</h1>
                        </div>
                        <div class="animated slider-btn fadeInUpBig">
                            <a class="shop-btn" href="index.php?act=shop">Mua ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>							
    </div>
</div>

    
<script>
    
var index = 0;
function changeImage (){
var imgs = ["images/index/anhbia02.png","images/index/anhbia03.png","images/index/anhbia01.png"];
document.getElementById('img').src = imgs[index];
index++;
if(index == 3){
index=0;

}
}
setInterval(changeImage,3000);

    const header = document.querySelector("header")
    window.addEventListener("scroll",function(){
if(x>0){
    header.classList.add("sticky")
}
else {
    header.classList.remove("sticky")
}
    })
</script>