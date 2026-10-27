<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<title>Explore Food Places</title>

<style>

body{
font-family:'Segoe UI',Tahoma;
background:linear-gradient(to right,#fff3e0,#ffffff);
margin:0;
}

header{
background:linear-gradient(to right,#e67e22,#f39c12);
color:white;
padding:25px;
text-align:center;
box-shadow:0 4px 8px rgba(0,0,0,0.2);
}

.food-list{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
gap:30px;
padding:40px 60px;
}

.food-card{
background:white;
border-radius:18px;
overflow:hidden;
box-shadow:0 10px 20px rgba(0,0,0,0.1);
transition:transform 0.4s ease,box-shadow 0.4s ease;
}

.food-card:hover{
transform:translateY(-8px);
box-shadow:0 14px 28px rgba(0,0,0,0.2);
}

.food-card img{
width:100%;
height:200px;
object-fit:cover;
}

.info{
padding:20px;
}

.info h3{
margin:0;
font-size:20px;
color:#2c3e50;
}

.info p{
color:#666;
margin-top:10px;
font-size:14px;
line-height:1.5;
}

button{
background:#f39c12;
border:none;
padding:10px 16px;
margin-top:10px;
color:white;
border-radius:8px;
cursor:pointer;
}

button:hover{
background:#e67e22;
}

footer{
background:#34495e;
color:white;
text-align:center;
padding:20px;
}

</style>

</head>

<body>

<header>
<h2>🍽️ Famous Food Places of Trimbakeshwar & Nashik</h2>
</header>

<div style="text-align:center;padding:20px;">
<input type="text" id="search" placeholder="🔍 Search food place..."
onkeyup="filterFood()"
style="width:300px;padding:10px;border-radius:8px;border:1px solid #ccc;">
</div>


<div class="food-list">

<!-- 1 -->
<div class="food-card">
<img src="/images/pahinenon.jpg">
<div class="info">
<h3>Pahine Non-Veg Dhaba</h3>
<p>Very famous highway food spot near Trimbakeshwar known for chicken thali and mutton.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=pahine%20restaurant%20nashik&output=embed"
width="350" height="150" style="border:0;"></iframe>
</div>

</div>
</div>


<!-- 2 -->
<div class="food-card">
<img src="/images/sadhna.jpg">
<div class="info">
<h3>Sadhana Misal</h3>
<p>Most famous Misal Pav in Nashik. Tourists specially visit here.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=sadhana%20misal%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>


<!-- 3 -->
<div class="food-card">
<img src="/images/shyam.jpg">
<div class="info">
<h3>Shamsundar Restaurant</h3>
<p>Very old and famous pure veg restaurant in Nashik city.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=shamsundar%20restaurant%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>


<!-- 4 -->
<div class="food-card">
<img src="/images/riverdine.jpg">
<div class="info">
<h3>River Dine Restaurant</h3>
<p>Beautiful restaurant near Godavari river with great ambience.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=river%20dine%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>


<!-- 5 -->
<div class="food-card">
<img src="/images/panchgaurav.jpg">
<div class="info">
<h3>Panchavati Gaurav</h3>
<p>Famous traditional Maharashtrian thali restaurant.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=panchavati%20gaurav%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>


<!-- 2 -->
<div class="food-card">
<img src="/images/arabian express.jpg">
<div class="info">
<h3>Arabian Express </h3>
<p>Most famous Misal Pav in Nashik. Tourists specially visit here.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=sadhana%20misal%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>


<!-- 2 -->
<div class="food-card">
<img src="/images/flyingmonk.jpg">
<div class="info">
<h3>Flying Monk </h3>
<p>Most famous Misal Pav in Nashik. Tourists specially visit here.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=sadhana%20misal%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>

<!-- 2 -->
<div class="food-card">
<img src="/images/hajidarbar.jpg">
<div class="info">
<h3>Haji Darbar </h3>
<p>Most famous Misal Pav in Nashik. Tourists specially visit here.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=sadhana%20misal%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>

<!-- 2 -->
<div class="food-card">
<img src="/images/haldirams.jpg">
<div class="info">
<h3>Haldiram's</h3>
<p>Most famous Misal Pav in Nashik. Tourists specially visit here.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=sadhana%20misal%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>


<!-- 2 -->
<div class="food-card">
<img src="/images/mykonos.jpg">
<div class="info">
<h3>My konos</h3>
<p>Most famous Misal Pav in Nashik. Tourists specially visit here.</p>

<button onclick="toggleMap(this)">📍 View on Google Maps</button>

<div class="map-frame" style="display:none;">
<iframe src="https://maps.google.com/maps?q=sadhana%20misal%20nashik&output=embed"
width="350" height="150"></iframe>
</div>

</div>
</div>


</div>

<footer>
© 2025 Visit Trimbakeshwar — Created with ❤️ by Anand
</footer>


<script>

function toggleMap(button){

const mapDiv = button.nextElementSibling;

if(mapDiv.style.display === "none"){

mapDiv.style.display = "block";
button.innerText="📍 Hide Map";

}else{

mapDiv.style.display = "none";
button.innerText="📍 View on Google Maps";

}

}

</script>

<script>

function filterFood(){

const input = document.getElementById("search").value.toLowerCase();

const cards = document.querySelectorAll(".food-card");

cards.forEach(card=>{

const name = card.querySelector("h3").innerText.toLowerCase();

card.style.display = name.includes(input) ? "block" : "none";

});

}

</script>

</body>
</html>