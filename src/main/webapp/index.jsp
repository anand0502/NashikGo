```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NashikGo | Explore Nashik</title>

<style>
* {
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, sans-serif;
    margin: 0;
    padding: 0;
    background: #ecf0f1;
}

/* NAVBAR */

header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background: rgba(0, 76, 115, 0.88);
    backdrop-filter: blur(10px);
    color: white;
    z-index: 1000;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 5%;
    gap: 25px;
}

.logo {
    font-size: 30px;
    font-weight: 800;
    letter-spacing: 0.5px;
    white-space: nowrap;
}

.logo-link {
    color: white;
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    gap: 5px;
}

.logo-icon {
    color: #ffeb3b;
    font-size: 27px;
    margin-right: 3px;
}

.logo-highlight {
    color: #ffeb3b;
}

.logo-link:hover {
    opacity: 0.9;
}

nav ul {
    list-style: none;
    display: flex;
    align-items: center;
    gap: 25px;
    margin: 0;
    padding: 0;
}

nav ul li {
    position: relative;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-weight: bold;
    font-size: 17px;
    transition: 0.3s;
    white-space: nowrap;
}

nav ul li a:hover {
    color: #ffeb3b;
}

/* DROPDOWN */

.dropdown-menu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    padding-top: 12px;
    background: white;
    border-radius: 6px;
    min-width: 180px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
    overflow: hidden;
}

.dropdown-menu li {
    padding: 10px 14px;
}

.dropdown-menu li a {
    color: #2c3e50;
    font-size: 15px;
    display: block;
}

.dropdown-menu li:hover {
    background: #f2f2f2;
}

.dropdown:hover .dropdown-menu,
.dropdown:focus-within .dropdown-menu {
    display: block;
}

/* HERO */

.hero {
    background: url('/images/rand_09.jpg') no-repeat center/cover;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    color: white;
    text-align: center;
    padding: 130px 20px 60px;
}

.hero::before {
    content: "";
    position: absolute;
    inset: 0;
    background: rgba(0, 0, 0, 0.45);
}

.hero-content {
    position: relative;
    z-index: 2;
    max-width: 1000px;
    animation: fadeInUp 1s ease-out;
}

.hero-content h1 {
    font-size: 52px;
    margin-bottom: 15px;
    text-shadow: 3px 3px 10px #000;
}

.hero-content p {
    font-size: 22px;
    margin-bottom: 30px;
    text-shadow: 1px 1px 4px black;
}

/* HERO BUTTONS */

.hero-buttons a {
    background: #1abc9c;
    color: white;
    padding: 12px 20px;
    border-radius: 25px;
    margin: 8px;
    display: inline-block;
    text-decoration: none;
    font-weight: bold;
    transition: 0.3s;
}

.hero-buttons a:hover {
    background: #148f77;
    transform: translateY(-3px);
}

/* ANIMATION */

@keyframes fadeInUp {
    0% {
        opacity: 0;
        transform: translateY(40px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* GALLERY */

.gallery-section {
    padding: 60px 40px;
    background: #f8f9fa;
    text-align: center;
}

.gallery-section h2 {
    font-size: 36px;
    margin-bottom: 40px;
    color: #2c3e50;
}

.gallery-cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: stretch;
    gap: 30px;
}

.card {
    background: white;
    border-radius: 12px;
    overflow: hidden;
    width: 300px;
    max-width: 100%;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s;
}

.card:hover {
    transform: translateY(-8px);
}

.card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
}

.card-info {
    padding: 20px;
}

.card-info h3 {
    margin: 0 0 10px;
    font-size: 22px;
    color: #2c3e50;
}

.card-info p {
    font-size: 15px;
    line-height: 1.6;
    color: #666;
    margin-bottom: 20px;
}

.card-info a {
    padding: 10px 20px;
    background: #1abc9c;
    color: white;
    border-radius: 20px;
    text-decoration: none;
    font-weight: bold;
    display: inline-block;
}

.card-info a:hover {
    background: #148f77;
}

/* FOOTER */

footer {
    background: #34495e;
    color: #fff;
    text-align: center;
    padding: 20px;
}

footer p {
    margin: 0;
}

/* TABLET AND MOBILE */

@media (max-width: 900px) {
    header {
        flex-direction: column;
        padding: 15px 20px;
        gap: 15px;
    }

    nav ul {
        flex-wrap: wrap;
        justify-content: center;
        gap: 15px 20px;
    }

    nav ul li a {
        font-size: 16px;
    }

    .hero {
        padding-top: 170px;
    }

    .hero-content h1 {
        font-size: 38px;
    }

    .hero-content p {
        font-size: 19px;
    }
}

@media (max-width: 600px) {
    .logo {
        font-size: 27px;
    }

    nav ul {
        gap: 12px;
    }

    nav ul li a {
        font-size: 14px;
    }

    .hero-content h1 {
        font-size: 32px;
    }

    .hero-content p {
        font-size: 17px;
    }

    .hero-buttons a {
        display: block;
        max-width: 260px;
        margin: 12px auto;
    }

    .gallery-section {
        padding: 40px 15px;
    }

    .gallery-section h2 {
        font-size: 28px;
    }

    .card {
        width: 100%;
        max-width: 350px;
    }
}
</style>
</head>

<body>

<!-- NAVBAR -->

<header>
    <div class="logo">
        <a href="/home" class="logo-link">
            <span class="logo-icon">✦</span>
            Nashik<span class="logo-highlight">Go</span>
        </a>
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

<!-- HERO SECTION -->

<div class="hero">
    <div class="hero-content">
        <h1>Welcome to NashikGo!</h1>

        <p>Explore Nashik. Experience Nature, Heritage &amp; Devotion.</p>

        <div class="hero-buttons">
            <a href="/waterfalls">🌊 Explore Waterfalls</a>
            <a href="/forts">🏰 Explore Forts</a>
            <a href="/temples">🛕 Explore Temples</a>
            <a href="/food">🍛 Food</a>
            <a href="/hotels">🏨 Stay</a>
            <a href="/shopping">🛍️ Shop</a>
            <a href="/transport">🚕 Transport</a>
            <a href="/makemytrip">🗓️ Plan My Trip</a>
        </div>
    </div>
</div>

<!-- POPULAR DESTINATIONS -->

<section class="gallery-section">
    <h2>Explore Popular Destinations</h2>

    <div class="gallery-cards">

        <div class="card">
            <img src="/images/dugarwadi.jpg" alt="Dugarwadi Waterfall">
            <div class="card-info">
                <h3>Dugarwadi Waterfall</h3>
                <p>Scenic monsoon spot near Trimbak surrounded by dense forest.</p>
                <a href="/waterfalls">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/anjfort.jpg" alt="Anjaneri Fort">
            <div class="card-info">
                <h3>Anjaneri Fort</h3>
                <p>Famous trekking destination in the Nashik-Trimbakeshwar region.</p>
                <a href="/forts">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/shitkada.jpg" alt="Shitkada Waterfall">
            <div class="card-info">
                <h3>Shitkada Waterfall</h3>
                <p>Enjoy lush green surroundings and a refreshing nature getaway.</p>
                <a href="/waterfalls">View More</a>
            </div>
        </div>

    </div>
</section>

<!-- TOP ATTRACTIONS -->

<section class="gallery-section">
    <h2>Top Attractions in Nashik</h2>

    <div class="gallery-cards">

        <div class="card">
            <img src="/images/sula.jpg" alt="Sula Vineyards">
            <div class="card-info">
                <h3>Sula Vineyards</h3>
                <p>Discover Nashik's well-known vineyard destination and scenic surroundings.</p>
                <a href="/food">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/sapt.jpg" alt="Saptashrungi Devi Temple">
            <div class="card-info">
                <h3>Saptashrungi Devi Temple</h3>
                <p>A renowned pilgrimage destination in the Nashik region, surrounded by the Sahyadri hills.</p>
                <a href="/temples">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/pandav.jpg" alt="Pandavleni Caves">
            <div class="card-info">
                <h3>Pandavleni Caves</h3>
                <p>Explore ancient Buddhist rock-cut caves known for their historical and architectural significance.</p>
                <a href="/forts">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/anjfort.jpg" alt="Anjaneri Hill">
            <div class="card-info">
                <h3>Anjaneri Hill</h3>
                <p>A popular trekking destination near Trimbakeshwar, associated with the birthplace of Lord Hanuman.</p>
                <a href="/forts">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/somavine.jpg" alt="Soma Vine Village">
            <div class="card-info">
                <h3>Soma Vine Village</h3>
                <p>Enjoy a vineyard setting surrounded by the beautiful landscape of Nashik.</p>
                <a href="/food">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/muktidham.jpg" alt="Muktidham Temple">
            <div class="card-info">
                <h3>Muktidham Temple</h3>
                <p>A popular marble temple in Nashik known for its distinctive architecture and religious significance.</p>
                <a href="/temples">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/mangitungi.jpg" alt="Mangi Tungi">
            <div class="card-info">
                <h3>Mangi Tungi</h3>
                <p>A significant Jain pilgrimage site featuring sacred hills and impressive religious monuments.</p>
                <a href="/temples">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/kalaram.jpg" alt="Kalaram Temple">
            <div class="card-info">
                <h3>Kalaram Temple</h3>
                <p>A historic temple dedicated to Lord Rama in the Panchavati area of Nashik.</p>
                <a href="/temples">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/harihar.jpg" alt="Harihar Fort">
            <div class="card-info">
                <h3>Harihar Fort</h3>
                <p>A famous hill fort known for its distinctive rock-cut staircase and trekking route.</p>
                <a href="/forts">View More</a>
            </div>
        </div>

        <div class="card">
            <img src="/images/Brahmfort.jpg" alt="Brahmagiri Hill">
            <div class="card-info">
                <h3>Brahmagiri Hill</h3>
                <p>A sacred hill near Trimbakeshwar associated with the origin of the Godavari River.</p>
                <a href="/temples">View More</a>
            </div>
        </div>

    </div>
</section>

<!-- FOOTER -->

<footer>
    <p>&copy; 2026 NashikGo — Explore Nashik with ❤️ | Created by Anand</p>
</footer>

</body>
</html>
```