<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Explore Temples</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ffe0e0, #ffffff);
            margin: 0;
        }

        header {
            background: linear-gradient(to right, #8e44ad, #9b59b6);
            color: white;
            padding: 25px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .search-box {
            text-align: center;
            margin: 20px;
        }

        .search-box input {
            padding: 10px 20px;
            width: 300px;
            border-radius: 20px;
            border: 1px solid #aaa;
        }

        .temple-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            padding: 40px;
        }

        .temple-card {
            background: white;
            border-radius: 18px;
            overflow: hidden;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            animation: fadeUp 1s ease forwards;
            opacity: 0;
        }

        @keyframes fadeUp {
            0% { opacity: 0; transform: translateY(40px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .temple-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .info {
            padding: 20px;
        }

        .info h3 {
            margin: 0;
            font-size: 20px;
            color: #2c3e50;
        }

        .info p {
            color: #555;
            margin: 10px 0;
            font-size: 14px;
        }

        button {
            background: #8e44ad;
            color: white;
            padding: 10px 20px;
            border: none;
            margin-top: 10px;
            border-radius: 20px;
            cursor: pointer;
        }

        button:hover {
            background: #732d91;
        }

        .map-frame {
            margin-top: 10px;
            display: none;
        }

        footer {
            background: #2c3e50;
            color: #fff;
            text-align: center;
            padding: 20px;
        }
    </style>
    <script>
        function toggleMap(button) {
            const map = button.nextElementSibling;
            map.style.display = map.style.display === 'none' ? 'block' : 'none';
        }

        function filterTemples() {
            const input = document.getElementById("search").value.toLowerCase();
            const cards = document.querySelectorAll(".temple-card");
            cards.forEach(card => {
                const name = card.querySelector("h3").textContent.toLowerCase();
                card.style.display = name.includes(input) ? "block" : "none";
            });
        }
    </script>
</head>
<body>

<header>
    <h2>🛕 Explore Famous Temples of Nashik</h2>
</header>

<div class="search-box">
    <input type="text" id="search" placeholder="Search Temples..." onkeyup="filterTemples()" />
</div>

<div class="temple-list">
    <div class="temple-card">
        <img src="/images/kalaram.jpg" alt="Kalaram Mandir">
        <div class="info">
            <h3>Kalaram Mandir</h3>
            <p>Historic black stone temple dedicated to Lord Rama, built in the 18th century.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.8818274990993!2d73.7876484!3d19.9325426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb44953efea3%3A0x379798a63196fe92!2sShri%20Kalaram%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>

    <div class="temple-card">
        <img src="/images/panch.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Panchamukhi Hanuman Mandir</h3>
            <p>Temple with rare five-faced idol of Lord Hanuman, known for spiritual vibes and peace.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
        <img src="/images/someshvar.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Shri Someshvar Mandir</h3>
            <p>This Hindu temple honoring Lord Shiva also features scenic grounds & river boating.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
<img src="/images/sapt.jpg">
<div class="info">
<h3>Saptashrungi Devi Temple</h3>
<p>पूर्वी दक्षाने बृहस्पती सव नावाचा मोठा यज्ञ केला.यज्ञात शिवाला अविर्भाव दिला गेला नाही. त्यामुळे सतीने यज्ञात उडी घेतली. शंकरजींना हे कळाल्यानंतर त्यांनी यज्ञाचा विध्वंस केला. सतीचे कलेवर हातात घेऊन श्री शंकर ञिलोकात हिंडू लागले. ही स्थिती पाहुन विष्णुने सुदर्शन चक्र सोडले व सतीच्या शरीराचे ५१ तुकडे केले. हे तुकडे ५१ ठिकाणी पडले. हीच ५१ शक्तीपीठे म्हणुन गणली जाऊ लागली. महाराष्ट्रात शक्तीचे साडेतीन शक्तीपीठे आहेत.</p>
</div>
</div>
    
    <div class="temple-card">
        <img src="/images/kapaleshvar.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Kapaleshvar Mandir</h3>
            <p>Built in the 18th century, this unassuming Hindu temple is dedicated to Lord Shiva.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
        <img src="/images/laxminarayan.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Shri Laxminarayan Mandir</h3>
            <p>Hindu temple in Nashik, Maharashtra known for spiritual vibes and peace.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
        <img src="/images/naroshankar.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Naroshankar Mandir</h3>
            <p>This famous, 18th-century Hindu temple built for Shiva on the riverbank features a large bell.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
        <img src="/images/navshya.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Navshya ganpati Mandir</h3>
            <p>Built in the 18th century, this Ganapati Hindu temple sits on the banks of the Godavari River.
</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
        <img src="/images/laxmanrekha.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Shree Laxman Rekha Mandir</h3>
            <p>Historical place, with a small temple. You can cover it in 10 minutes</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
        <img src="/images/iskon.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>ISKCON Sri Sri Radha Madan Gopal Mandir</h3>
            <p>Small temple, but the idols are really beautiful. Little inside so be sure about road directions. Bathroom is horrendous</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="temple-card">
        <img src="/images/vedmandir.jpg" alt="Panchamukhi Hanuman Mandir">
        <div class="info">
            <h3>Shri Ved Mandir</h3>
            <p>The temple is really like a heaven with nice quotes in the walls of it. known for spiritual vibes and peace.</p>
            <button onclick="toggleMap(this)">📍 View on Google Maps</button>
            <div class="map-frame">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3750.681093928405!2d73.788292!3d19.9398001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb6a07e87bb5%3A0x7e9d0ab4f1ac553f!2sPanchamukhi%20Hanuman%20Mandir!5e0!3m2!1sen!2sin!4v1651234567890!5m2!1sen!2sin"
                        width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
</div>

<footer>
    &copy; 2025 Visit Nashik — Temples Edition by Anand
</footer>

</body>
</html>
