<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Explore Forts</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(to right, #fceabb, #f8b500);
            margin: 0;
        }

        header {
            background: linear-gradient(to right, #2c3e50, #4ca1af);
            color: white;
            padding: 25px 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .search-bar {
            display: flex;
            justify-content: center;
            padding: 20px;
        }

        .search-bar input {
            padding: 10px 15px;
            width: 300px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .fort-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            padding: 30px 60px;
        }

        .fort-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            position: relative;
            animation: fadeUp 0.8s ease-out forwards;
        }

        .fort-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .fort-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 14px 28px rgba(0,0,0,0.2);
        }

        .fort-card:hover img {
            transform: scale(1.08);
        }

        @keyframes fadeUp {
            0% { opacity: 0; transform: translateY(40px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .info {
            padding: 20px;
        }

        .info h3 {
            margin: 0;
            color: #2c3e50;
        }

        .info p {
            margin-top: 10px;
            color: #555;
            font-size: 14px;
        }

        button {
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #1abc9c;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .map-frame {
            margin-top: 10px;
        }

        footer {
            background: #2c3e50;
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 15px;
        }
    </style>
    <script>
        function toggleMap(btn) {
            const mapDiv = btn.nextElementSibling;
            mapDiv.style.display = (mapDiv.style.display === 'none') ? 'block' : 'none';
        }

        function searchForts() {
            const input = document.getElementById("searchInput").value.toLowerCase();
            const cards = document.getElementsByClassName("fort-card");

            Array.from(cards).forEach(card => {
                const name = card.querySelector("h3").innerText.toLowerCase();
                card.style.display = name.includes(input) ? "block" : "none";
            });
        }
    </script>
</head>
<body>
<header>
    <h2>🏰 Explore Historical Forts of Nashik 🗺️</h2>
</header>

<div class="search-bar">
    <input type="text" id="searchInput" placeholder="Search Forts..." onkeyup="searchForts()">
</div>

<div class="fort-list">
    <div class="fort-card">
        <img src="/images/harifort.jpg" alt="Harihar Fort">
        <div class="info">
            <h3>Harihar Fort</h3>
            <p>Famous for its vertical staircase and stunning views from the top. Adventurous trek.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15005.820055126622!2d73.4618593478192!3d19.9052216536395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8aa3cbdc02b5%3A0x16fa7d9ad92945af!2sHarihar%20Fort!5e0!3m2!1sen!2sin!4v1751305614813!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>    </div>
        </div>
    </div>

    <div class="fort-card">
        <img src="/images/brahmfort.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Bramhagiri Fort</h3>
            <p>Located at the source of Godavari river. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15004.880103399388!2d73.51340904782361!3d19.91513085351653!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8b3151508425%3A0x7fe162bfee45b1bf!2sBrahmagiri!5e0!3m2!1sen!2sin!4v1751305646970!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  </div>
        </div>
    </div>
    
    <div class="fort-card">
        <img src="/images/ranjangiri.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Ranjangiri Fort</h3>
            <p>Located at the source of nahsik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3760.5387486209733!2d73.49640831420274!3d19.979795886566316!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb1cf5f59a09%3A0x3e9a2f9e21b05f63!2sBramhagiri%20Hill!5e0!3m2!1sen!2sin!4v1685787022265!5m2!1sen!2sin" width="100%" height="150" style="border:0;" allowfullscreen loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="fort-card">
        <img src="/images/ramshej.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Ramshej Fort</h3>
            <p>Located at the source of Nashik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3746.5234579193466!2d73.76478197500539!3d20.11219798131757!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdde8c0e40b7411%3A0x3ffcc45be9775836!2sRamshej%20Fort!5e0!3m2!1sen!2sin!4v1751305677538!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  </div>
        </div>
    </div>
    
    <div class="fort-card">
        <img src="/images/dhodap.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Dhodap Fort</h3>
            <p>Located at the source of Nashik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3739.952332199274!2d74.02743227501303!3d20.384855181108254!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bde778780a795b5%3A0x138a9ba17a022045!2sDhodap%20Fort!5e0!3m2!1sen!2sin!4v1751305723799!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    
    <div class="fort-card">
        <img src="/images/Dehergad.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Dehergad Fort</h3>
            <p>Located at the source of Nashik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3746.164269784086!2d73.74268587500585!3d20.12719328130604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddef53023b584f%3A0x59da12165e734bd9!2sDehergad%20Fort!5e0!3m2!1sen!2sin!4v1751305751618!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    
    
    <div class="fort-card">
        <img src="/images/indrai.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Indrai Fort</h3>
            <p>Located at the source of Nashik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3740.5625847870383!2d74.20508567501234!3d20.359681181127474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddd5573fffffff%3A0x533f4b1066fee7f9!2sIndrai%20Fort!5e0!3m2!1sen!2sin!4v1751305783726!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>    </div>
        </div>
    </div>
    
    <div class="fort-card">
        <img src="/images/durgabhnadar.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Durgabhandar Fort</h3>
            <p>Located at the source of Nashik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.857052406778!2d73.51298687500042!3d19.930427781458036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8b2b14689e31%3A0x154aa84ec59f34c1!2sDurg%20Bhandar!5e0!3m2!1sen!2sin!4v1751305823854!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    
    <div class="fort-card">
        <img src="/images/kavnai.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Kavnai Fort</h3>
            <p>Located at the source of Nashik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3754.5706673199434!2d73.61683667499607!3d19.773387381580132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8f976c02d15d%3A0x5efb880b3fa08688!2sKavnai%20Fort!5e0!3m2!1sen!2sin!4v1751305849381!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    
    <div class="fort-card">
        <img src="/images/anjfort.jpg" alt="Bramhagiri Fort">
        <div class="info">
            <h3>Anjeneri Fort</h3>
            <p>Located at the source of Nashik. Religious importance and beautiful hill climb.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame" style="display:none;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.336321781186!2d73.58350757500102!3d19.952353481441136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddf33927b60da1%3A0x82494b9001e046b3!2sSiddh%20Hanuman%20Temple%20(Anjaneri)!5e0!3m2!1sen!2sin!4v1751305873046!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    
</div>

<footer>
    &copy; 2025 Visit Trimbakeshwar — Forts Collection by Anand
</footer>
</body>
</html>
