<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KUMBH-NASHIK</title>

<style>

body{
font-family:'Segoe UI',Tahoma;
margin:0;
padding:0;
background:#ecf0f1;
}

/* PROFESSIONAL NAVBAR */

header{
position:fixed;
top:0;
width:100%;
background:rgba(0,102,153,0.65);
backdrop-filter:blur(10px);
color:white;
z-index:1000;
display:flex;
justify-content:space-between;
align-items:center;
padding:15px 60px;
}

.logo{
font-size:28px;
font-weight:bold;
letter-spacing:1px;
}

nav ul{
list-style:none;
display:flex;
gap:30px;
margin:0;
padding:0;
}

nav ul li{
position:relative;
}

nav ul li a{
color:white;
text-decoration:none;
font-weight:bold;
font-size:18px;
transition:0.3s;
}

nav ul li a:hover{
color:#ffeb3b;
}

/* DROPDOWN */

.dropdown-menu{
display:none;
position:absolute;
top:30px;
left:0;
background:white;
border-radius:6px;
min-width:180px;
box-shadow:0 4px 10px rgba(0,0,0,0.3);
}

.dropdown-menu li{
padding:10px;
}

.dropdown-menu li a{
color:black;
font-size:16px;
display:block;
}

.dropdown-menu li:hover{
background:#f2f2f2;
}

.dropdown:hover .dropdown-menu{
display:block;
}

/* HERO */

.hero{
background:url('/images/rand_09.jpg') no-repeat center/cover;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
position:relative;
color:white;
text-align:center;
}

.hero::before{
content:"";
position:absolute;
inset:0;
background:rgba(0,0,0,0.4);
}

.hero-content{
position:relative;
z-index:2;
animation:fadeInUp 1s ease-out;
}

.hero-content h1{
font-size:52px;
margin-bottom:15px;
text-shadow:3px 3px 10px #000;
}

.hero-content p{
font-size:22px;
margin-bottom:30px;
text-shadow:1px 1px 4px black;
}

/* HERO BUTTONS */

.hero-buttons a{
background:#1abc9c;
color:white;
padding:10px 20px;
border-radius:25px;
margin:8px;
display:inline-block;
text-decoration:none;
font-weight:bold;
transition:0.3s;
}

.hero-buttons a:hover{
background:#148f77;
}

/* ANIMATION */

@keyframes fadeInUp{
0%{opacity:0;transform:translateY(40px);}
100%{opacity:1;transform:translateY(0);}
}

/* GALLERY */

.gallery-section{
padding:60px 40px;
background:#f8f9fa;
text-align:center;
}

.gallery-section h2{
font-size:36px;
margin-bottom:40px;
color:#2c3e50;
}

.gallery-cards{
display:flex;
flex-wrap:wrap;
justify-content:center;
gap:30px;
}

.card{
background:white;
border-radius:12px;
overflow:hidden;
width:300px;
box-shadow:0 4px 12px rgba(0,0,0,0.1);
transition:transform 0.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card img{
width:100%;
height:180px;
object-fit:cover;
}

.card-info{
padding:20px;
}

.card-info h3{
margin:0 0 10px;
font-size:22px;
}

.card-info p{
font-size:15px;
color:#666;
margin-bottom:15px;
}

.card-info a{
padding:10px 20px;
background:#1abc9c;
color:white;
border-radius:20px;
text-decoration:none;
font-weight:bold;
}

.card-info a:hover{
background:#148f77;
}

/* FOOTER */

footer{
background:#34495e;
color:#fff;
text-align:center;
padding:20px;
}

/* MOBILE */

@media(max-width:768px){

header{
flex-direction:column;
}

nav ul{
flex-direction:column;
gap:15px;
}

.hero-content h1{
font-size:32px;
}

.hero-content p{
font-size:18px;
}

.hero-buttons a{
display:block;
margin:10px auto;
}

}

</style>
</head>

<body>

<header>

<div class="logo">
KumbhNagari Nashik
</div>

<nav>
<ul>

<li><a href="/home">🏠 Home</a></li>

<li><a href="/about">ℹ️ About</a></li>

<li class="dropdown">
<a href="/gallery">🖼 Gallery ▾</a>

<ul class="dropdown-menu">

<li><a href="/waterfalls">🌊 Waterfalls</a></li>

<li><a href="/forts">🏰 Forts</a></li>

<li><a href="/temples">🛕 Temples</a></li>

<li><a href="/food">🍛 Food</a></li>

</ul>

</li>

<li><a href="/contact">📞 Contact</a></li>

</ul>
</nav>

</header>

<!-- HERO -->

<div class="hero">

<div class="hero-content">

<h1>Experience the Beauty of Nashik!</h1>

<p>Nature • Heritage • Devotion</p>

<div class="hero-buttons">

<a href="/waterfalls">🌊 Explore Waterfalls</a>

<a href="/forts">🏰 Explore Forts</a>

<a href="/temples">⛩️ Explore Temples</a>

<a href="/food">🍛 Food</a>

<a href="/hotels">🏨 Stay</a>

<a href="/shopping">🛍️ Shop</a>

<a href="/transport">🚕 Transport</a>

<a href="/makemytrip">🗓️ Plan My Trip</a>

</div>

</div>

</div>

<!-- GALLERY -->

<section class="gallery-section">

<h2>Explore Popular Destinations</h2>

<div class="gallery-cards">

<div class="card">
<img src="/images/dugarwadi.jpg">
<div class="card-info">
<h3>Dugarwadi Waterfall</h3>
<p>Scenic monsoon spot near Trimbak surrounded by dense forest.</p>
<a href="/waterfalls">View More</a>
</div>
</div>

<div class="card">
<img src="/images/anjfort.jpg">
<div class="card-info">
<h3>Anjeneri Fort</h3>
<p>Famous trekking fort with Konkan Kada and ancient caves.</p>
<a href="/forts">View More</a>
</div>
</div>

<div class="card">
<img src="/images/shitkada.jpg">
<div class="card-info">
<h3>Shitkada Waterfall</h3>
<p>Lush green surroundings, perfect for a quick getaway.</p>
<a href="/waterfalls">View More</a>
</div>
</div>

</div>

</section>


<section class="gallery-section">

<h2>Top Attraction in nashik</h2>

<div class="gallery-cards">

<div class="card">
<img src="/images/sula.jpg">
<div class="card-info">
<h3> The Sula Wineyards</h3>
<p>Everything we do at Sula is guided by core values that aim at preserving and enhancing the art of winemaking. We love to make wine, and we are happy to have talented winemakers. All you have to do is to discover them all!,And yes this is one of the best yardss You ever Visited !!</p>
<a href="/food">View More</a>
</div>
</div>

<div class="card">
<img src="/images/sapt.jpg">
<div class="card-info">
<h3>Saptashrungi Devi Temple</h3>
<p>पूर्वी दक्षाने बृहस्पती सव नावाचा मोठा यज्ञ केला. या यज्ञाला भगवान शंकर यांना न बोलाविता सर्व देवांना बोलावले. शिवपत्नी सती या यज्ञाला आमंञण नसतांनाही गेली. यज्ञात शिवाला अविर्भाव दिला गेला नाही. त्यामुळे सतीने यज्ञात उडी घेतली. शंकरजींना हे कळाल्यानंतर त्यांनी यज्ञाचा विध्वंस केला. सतीचे कलेवर हातात घेऊन श्री शंकर ञिलोकात हिंडू लागले. ही स्थिती पाहुन विष्णुने सुदर्शन चक्र सोडले व सतीच्या शरीराचे ५१ तुकडे केले. हे तुकडे ५१ ठिकाणी पडले. हीच ५१ शक्तीपीठे म्हणुन गणली जाऊ लागली. महाराष्ट्रात शक्तीचे साडेतीन शक्तीपीठे आहेत.</p>
<a href="/forts">View More</a>
</div>
</div>

<div class="card">
<img src="/images/pandav.jpg">
<div class="card-info">
<h3>The Pandavleni</h3>
<p>Pandavleni Caves (or Trirashmi Caves) are a group of 24, 2,000-year-old Hinayana Buddhist rock-cut caves on Trirasmi Hill in Nashik, Maharashtra. Built between the 2nd century BCE and 6th century CE, they feature intricate sculptures, viharas (monasteries), and chaityas (prayer halls). A 200-step climb (approx. 15-30 mins) leads to these historical sites. .</p>
<a href="/waterfalls">View More</a>
</div>
</div>


<div class="card">
<img src="/images/anjfort.jpg">
<div class="card-info">
<h3>Anjeneri Hill</h3>
<p><p>Anjaneri fort trek is one of the famous treks in Nasik-Triambakeshwar mountain range of Maharashtra. It is an attraction of Nashik city and Triambakeshwar region.
Located 20 km away from Nasik and 6 km from Triambakeshwar. It is situated at an altitude of 4263 feet from the sea level.
The locals believe that the fort is the birthplace of Lord Hanuman. Therefore, it is considered as one of the religious places among Hindu devotees. </p>
<a href="/forts">View More</a>
</div>
</div>



<div class="card">
<img src="/images/somavine.jpg">
<div class="card-info">
<h3>Soma Vine Village</h3>
<p>We are one of the largest Vineyard Resort in India with a wine manufacturing unit Vineyard resort with 46 luxurious rooms, vineyard overlooking swimming pools, private villas with swimming pool, luxury spa with wine baths, wine tour and tasting, private dining, amphitheater for destination weddings, private events/parties, barrel house first time ever in India.</p>
<a href="/food">View More</a>
</div>
</div>



<div class="card">
<img src="/images/muktidham.jpg">
<div class="card-info">
<h3>Muktidham Temple</h3>
<p>The accommodation offers clean and comfortable rooms at affordable prices and other facilities like CCTV, hot water, clean drinking water and extra mattresses. Check-in and check-out times are 24 hours. Choose from the best dharamshalas in Nashik for your trip.
Nashik is a city on the banks of the sacred Godavari River. Its historical and religious significance is not unknown. The Godavari originates near Trimbakeshwar, not far from Nashik. It is known as the Ganges of the South. Nashik is also known as Haridwar of the south..</p>
<a href="/temples">View More</a>
</div>
</div>



<div class="card">
<img src="/images/mangitungi.jpg">
<div class="card-info">
<h3>MangiTungi</h3>
<p>Mangi Tungi is one of the greatest places of Jainism followers. I visited twice here when I was in 3rd std in 1994. Now in 2024 Great place to visit</p>
<a href="/forts">View More</a>
</div>
</div>



<div class="card">
<img src="/images/kalaram.jpg">
<div class="card-info">
<h3>kalaram Temple</h3>
<p>Kalaram Temple, is a Hindu temple in Nashik of Nashik district in Maharashtra, dedicated to the deity Rama. It is a temple situated in Panchavati area of the Nashik. The temple derives its name from a black statue of Rama. The literal translation of kalaram is "black Rama".</p>
<a href="/forts">View More</a>
</div>
</div>

<div class="card">
<img src="/images/harihar.jpg">
<div class="card-info">
<h3>Harihar Fort</h3>
<p>Harihar Fort is a hill fort located about 40 km from Nashik city, 48 km from Igatpuri, 40 km from Ghoti in the Nashik district, of Maharashtra, India. It is an important fort in Nashik district, and was constructed to look upon the trade route through Gonda Ghat</p>
<a href="/forts">View More</a>
</div>
</div>

<div class="card">
<img src="/images/Brahmfort.jpg">
<div class="card-info">
<h3>BrahmGiriHill</h3>
<p>Brahmagiri Hill, located 31 km from Nashik near Trimbakeshwar in Maharashtra, is a 1,298-meter-high mountain range in the Western Ghats known as the sacred origin of the Godavari River. A popular destination for trekking and pilgrimage, it features over 750 stone steps, temples like Gangadwar and Shiv Jata, and offers panoramic views of Trimbak city</p>
<a href="/forts">View More</a>
</div>
</div>

</div>




</section>




<footer>

<p>&copy; 2025 Visit Nashik — Created with ❤️ by Anand</p>

</footer>

</body>
</html>