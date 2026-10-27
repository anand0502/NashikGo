<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>
<html>


<head>
    <title>Explore Waterfalls</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #ffffff);
            margin: 0;
        }

        header {
            background: linear-gradient(to right, #16a085, #1abc9c);
            color: white;
            padding: 25px 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .waterfall-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            padding: 40px 60px;
        }

        .waterfall-card {
            background: white;
            border-radius: 18px;
            overflow: hidden;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            position: relative;
        }

        .waterfall-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 14px 28px rgba(0,0,0,0.2);
        }

        .waterfall-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .waterfall-card:hover img {
            transform: scale(1.08);
        }
        
        /* Add this just below .waterfall-card styles */

@keyframes fadeUp {
    0% {
        opacity: 0;
        transform: translateY(40px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Animate each card with delay effect */
.waterfall-card {
    opacity: 0;
    animation: fadeUp 0.8s ease-out forwards;
}

.waterfall-card {
    transition: all 0.3s ease;
}

/* Delay each card’s animation using nth-child */
.waterfall-card:nth-child(1) { animation-delay: 0.1s; }
.waterfall-card:nth-child(2) { animation-delay: 0.2s; }
.waterfall-card:nth-child(3) { animation-delay: 0.3s; }
.waterfall-card:nth-child(4) { animation-delay: 0.4s; }
.waterfall-card:nth-child(5) { animation-delay: 0.5s; }
.waterfall-card:nth-child(6) { animation-delay: 0.6s; }
.waterfall-card:nth-child(7) { animation-delay: 0.7s; }
.waterfall-card:nth-child(8) { animation-delay: 0.8s; }
.waterfall-card:nth-child(9) { animation-delay: 0.9s; }
.waterfall-card:nth-child(10) { animation-delay: 1s; }
        

        .info {
            padding: 20px;
            text-align: left;
        }

        .info h3 {
            margin: 0;
            font-size: 20px;
            color: #2c3e50;
        }

        .info p {
            color: #666;
            margin-top: 10px;
            font-size: 14px;
            line-height: 1.5;
        }

        footer {
            background: #34495e;
            color: #fff;
            text-align: center;
            padding: 20px;
            font-size: 15px;
        }

        @media (max-width: 768px) {
            header h2 {
                font-size: 22px;
            }

            .info h3 {
                font-size: 18px;
            }
        }
        
        button {
    background-color: #1abc9c;
    border: none;
    padding: 10px 16px;
    margin-top: 10px;
    color: white;
    border-radius: 8px;
    font-size: 14px;
    cursor: pointer;
    transition: background 0.3s ease;
}
button:hover {
    background-color: #16a085;
}
        
        
    </style>
</head>
<body>

<header>
    <h2>🌊 Explore Mesmerizing Waterfalls of Trimbakeshwar 🌿</h2>
</header>

<div style="text-align: center; padding: 20px;">
    <input type="text" id="search" placeholder="🔍 Search waterfalls by name..." 
           onkeyup="filterWaterfalls()" 
           style="width: 300px; padding: 10px; font-size: 16px; border-radius: 8px; border: 1px solid #ccc;">
</div>


<div class="waterfall-list">
    <%-- Repeat your 10 waterfall cards here just like before, no need to change HTML structure --%>
    <%-- Only the styling is changed above for better modern design --%>
    <!-- Example card below -->
    <div class="waterfall-card">
    <img src="/images/dugarwadi.jpg" alt="Dugarwadi Waterfall">
    <div class="info">
        <h3>Dugarwadi Waterfall</h3>
        <p>Located in Triambakeshwar, one of the highest plunge waterfalls.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.6127616561066!2d73.46573677500072!3d19.940716681450162!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddf55921a96453%3A0xcfec1778eab8178f!2sDugarwadi%20Waterfall!5e0!3m2!1sen!2sin!4v1751301766016!5m2!1sen!2sin"
             width="350" height="150" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</div>

    
    <div class="waterfall-card">
    <img src="/images/pahine.jpg" alt="Pahine Waterfall">
    <div class="info">
        <h3>Pahine Waterfall</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3565.719081863134!2d73.5614533749999!3d19.91041568147363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8dffaaaa656d%3A0x1373eba9c813a9ce!2sPahine%20waterfall!5e1!3m2!1sen!2sin!4v1751302320569!5m2!1sen!2sin" width="350" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/kojoli.jpg" alt="Kojoli Waterfall">
    <div class="info">
        <h3>Kojoli WaterFall</h3>
        <p>Nashik's scenic beauty and film shooting hotspot, known as 'Niagara of nashik'.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3751.332534218638!2d73.56144067499986!3d19.910387081473697!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8b6fed0e71fd%3A0x8563e384c346502!2sKojoli%20Waterfalls%20And%20Swimming%20Pond!5e0!3m2!1sen!2sin!4v1751302563669!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  </div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/triambak falls.jpg" alt="Dudhsagar Falls">
    <div class="info">
        <h3>Triambak falls</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3565.4657446223046!2d73.5242970750001!3d19.92165158146498!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8bb35642296f%3A0x7e64c5be3f69a6df!2sTrimbak%20falls!5e1!3m2!1sen!2sin!4v1751302642609!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> </div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/ganesh.jpg" alt="Dudhsagar Falls">
    <div class="info">
        <h3>Ganesh Waterfall</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3749.9219545734213!2d73.43800437500141!3d19.96978418142761!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be75f752e5fbadd%3A0x1a5bcc8ae6f27812!2sGanesh%20waterfall!5e0!3m2!1sen!2sin!4v1751302705028!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/ambai.jpg" alt="Dudhsagar Falls">
    <div class="info">
        <h3>Ambai Waterfall</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3749.5370658563684!2d73.46889267500191!3d19.98596178141515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddf5cd2e3d5407%3A0xa895e3641b415746!2sAmbai%20Waterfall!5e0!3m2!1sen!2sin!4v1751302775281!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/mahiravani.jpg" alt="Dudhsagar Falls">
    <div class="info">
        <h3>Mahiravani Waterfall</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.0767621310442!2d73.65979427500139!3d19.96327378143257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdded5daab5abb5%3A0xbff2f84ea4283304!2sMahiravani%20Waterfall!5e0!3m2!1sen!2sin!4v1751302801371!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  </div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/harihar.jpg" alt="Dudhsagar Falls">
    <div class="info">
        <h3>Harihar Waterfall</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d19005.121295657453!2d73.45449184062977!3d19.924175552582792!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8aacd103fc0f%3A0xba745c26b0057f3e!2sHarihar%20Waterfall!5e0!3m2!1sen!2sin!4v1751302844832!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  </div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/anjeneri.jpg" alt="Dudhsagar Falls">
    <div class="info">
        <h3>Anjeneri Waterfall</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.856311803768!2d73.56864007500045!3d19.930458981458088!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdd8d5acf776ebd%3A0xe91863f161aeeaca!2sAnjaneri%20waterfall!5e0!3m2!1sen!2sin!4v1751302887027!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>   </div>
    </div>
</div>

<div class="waterfall-card">
    <img src="/images/shitkada.jpg" alt="Dudhsagar Falls">
    <div class="info">
        <h3>Shitkada Waterfall</h3>
        <p>Nashik's iconic place Specially famous for Non-veg, surrounded by lush green forest.</p>
        <button onclick="toggleMap(this)">📍 View on Google Maps</button>
        <div class="map-frame" style="display:none;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.8532662995794!2d73.4392345750004!3d19.930587281458013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be75f4ad85d3d83%3A0x2f218895d62fb7ca!2sShitkada%20waterfall!5e0!3m2!1sen!2sin!4v1751302422869!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</div>

</div>

<footer>
    &copy; 2025 Visit Trimbakeshwar — Created with ❤️ by Anand
</footer>

<script>
    function toggleMap(button) {
        const mapDiv = button.nextElementSibling;
        if (mapDiv.style.display === "none") {
            mapDiv.style.display = "block";
            button.innerText = "📍 Hide Map";
        } else {
            mapDiv.style.display = "none";
            button.innerText = "📍 View on Google Maps";
        }
    }
</script>
<script>
function filterWaterfalls() {
    const input = document.getElementById("search").value.toLowerCase();
    const cards = document.querySelectorAll(".waterfall-card");
    
    cards.forEach(card => {
        const name = card.querySelector("h3").innerText.toLowerCase();
        card.style.display = name.includes(input) ? "block" : "none";
    });
}
</script>


</body>
</html>
