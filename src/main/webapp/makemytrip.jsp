<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Make My Trip - Explore Nashik</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <style>
        :root {
            --brand-blue: #0b5fff;
            --brand-navy: #0c2340;
            --brand-orange: #ff7a00;
            --card: rgba(255, 255, 255, 0.92);
            --text-main: #1c2a39;
            --text-soft: #5e6b78;
        }

        body {
            margin: 0;
            min-height: 100vh;
            font-family: "Manrope", sans-serif;
            color: var(--text-main);
            background:
                radial-gradient(circle at top left, rgba(11, 95, 255, 0.18), transparent 32%),
                radial-gradient(circle at top right, rgba(255, 122, 0, 0.18), transparent 26%),
                linear-gradient(135deg, #edf6ff 0%, #f8fbff 45%, #fff5ea 100%);
        }

        .page-shell {
            max-width: 1240px;
        }

        .hero-panel {
            position: relative;
            overflow: hidden;
            padding: 42px;
            border-radius: 30px;
            background:
                linear-gradient(135deg, rgba(12, 35, 64, 0.95), rgba(11, 95, 255, 0.9)),
                linear-gradient(120deg, #0c2340, #1746a2);
            box-shadow: 0 30px 60px rgba(12, 35, 64, 0.2);
            color: #ffffff;
        }

        .hero-panel::before,
        .hero-panel::after {
            content: "";
            position: absolute;
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.08);
        }

        .hero-panel::before {
            width: 260px;
            height: 260px;
            top: -90px;
            right: -40px;
        }

        .hero-panel::after {
            width: 180px;
            height: 180px;
            bottom: -60px;
            left: 42%;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 14px;
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.14);
            font-size: 0.85rem;
            font-weight: 700;
            letter-spacing: 0.03em;
            text-transform: uppercase;
        }

        .hero-title {
            max-width: 700px;
            margin: 18px 0 12px;
            font-size: clamp(2rem, 4vw, 3.7rem);
            line-height: 1.05;
            font-weight: 800;
        }

        .hero-copy {
            max-width: 650px;
            color: rgba(255, 255, 255, 0.82);
            font-size: 1.02rem;
        }

        .search-panel {
            position: relative;
            margin-top: 28px;
            padding: 26px;
            border-radius: 24px;
            background: rgba(255, 255, 255, 0.98);
            box-shadow: 0 18px 35px rgba(12, 35, 64, 0.12);
            color: var(--text-main);
        }

        .search-panel .form-label {
            font-size: 0.9rem;
            font-weight: 700;
            color: var(--brand-navy);
        }

        .search-panel .form-control,
        .search-panel .form-select {
            min-height: 52px;
            border: 1px solid #d7e3f0;
            border-radius: 16px;
            box-shadow: none;
        }

        .search-panel .form-control:focus,
        .search-panel .form-select:focus {
            border-color: #7ea9ff;
            box-shadow: 0 0 0 0.2rem rgba(11, 95, 255, 0.12);
        }

        .search-btn {
            min-height: 52px;
            border: none;
            border-radius: 16px;
            background: linear-gradient(135deg, var(--brand-orange), #ff9f43);
            font-weight: 800;
            color: #fff;
            box-shadow: 0 14px 28px rgba(255, 122, 0, 0.24);
        }

        .hero-stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 14px;
            margin-top: 24px;
        }

        .stat-card {
            padding: 18px 20px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(10px);
        }

        .stat-card strong {
            display: block;
            font-size: 1.4rem;
            font-weight: 800;
        }

        .section-head {
            display: flex;
            justify-content: space-between;
            align-items: end;
            gap: 16px;
            margin: 34px 0 20px;
        }

        .section-head h2 {
            margin: 0;
            font-size: 1.8rem;
            font-weight: 800;
        }

        .section-head p {
            margin: 0;
            color: var(--text-soft);
        }

        .package-card {
            position: relative;
            overflow: hidden;
            height: 100%;
            border: 0;
            border-radius: 26px;
            background: var(--card);
            box-shadow: 0 18px 40px rgba(18, 41, 64, 0.08);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .package-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 24px 48px rgba(18, 41, 64, 0.14);
        }

        .package-top {
            padding: 24px 24px 14px;
            background: linear-gradient(160deg, rgba(11, 95, 255, 0.1), rgba(255, 122, 0, 0.08));
        }

        .pill {
            display: inline-block;
            padding: 7px 12px;
            border-radius: 999px;
            background: #eaf2ff;
            color: var(--brand-blue);
            font-size: 0.8rem;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.04em;
        }

        .package-card h4 {
            margin-top: 16px;
            margin-bottom: 10px;
            font-weight: 800;
        }

        .package-body {
            padding: 0 24px 24px;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            gap: 12px;
            padding: 10px 0;
            border-bottom: 1px solid #edf1f6;
            font-size: 0.95rem;
        }

        .detail-row span:first-child {
            color: var(--text-soft);
            font-weight: 600;
        }

        .detail-row span:last-child {
            font-weight: 700;
        }

        .price-band {
            margin: 18px 0 10px;
            padding: 16px 18px;
            border-radius: 18px;
            background: linear-gradient(135deg, #f2f7ff, #fff4ea);
        }

        .price-band small {
            display: block;
            color: var(--text-soft);
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .price-tag {
            font-size: 1.7rem;
            font-weight: 800;
            color: var(--brand-navy);
        }

        .booking-panel {
            margin-top: 16px;
            padding: 18px;
            border-radius: 20px;
            background: #f8fbff;
        }

        .booking-panel .form-control {
            min-height: 46px;
            border-radius: 14px;
            border: 1px solid #dbe5ef;
        }

        .book-btn {
            min-height: 48px;
            border: none;
            border-radius: 14px;
            background: linear-gradient(135deg, var(--brand-blue), #2c7dff);
            font-weight: 800;
            color: #fff;
        }

        .alert {
            border: 0;
            border-radius: 16px;
            font-weight: 700;
        }

        .empty-state {
            padding: 36px;
            border-radius: 24px;
            background: rgba(255, 255, 255, 0.86);
            text-align: center;
            box-shadow: 0 18px 40px rgba(18, 41, 64, 0.08);
        }

        @media (max-width: 768px) {
            .hero-panel {
                padding: 28px 20px;
                border-radius: 24px;
            }

            .search-panel {
                padding: 18px;
                border-radius: 20px;
            }

            .section-head {
                align-items: start;
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
<div class="container py-5 page-shell">
    <div class="hero-panel">
        <div class="eyebrow">Smart Tourism Booking</div>
        <h1 class="hero-title">Plan your Nashik getaway with a MakeMyTrip-style booking page.</h1>
        <p class="hero-copy">
            Search curated tours, compare categories like temples, forts, waterfalls, food trails and wineries,
            then submit your booking request from one clean travel dashboard.
        </p>

        <c:if test="${not empty message}">
            <div class="alert alert-info mt-4">${message}</div>
        </c:if>

        <c:if test="${not empty bookingSuccess}">
            <div class="alert alert-success mt-4">${bookingSuccess}</div>
        </c:if>

        <div class="search-panel">
            <form action="${pageContext.request.contextPath}/makemytrip/search" method="post" class="row g-3">
                <div class="col-md-4">
                    <label class="form-label">Source City</label>
                    <input type="text" name="sourceCity" class="form-control" value="${sourceCity}" placeholder="Mumbai, Pune, Surat..." required>
                </div>

                <div class="col-md-4">
                    <label class="form-label">Destination</label>
                    <select name="destination" class="form-select">
                        <option value="all" <c:if test="${selectedDestination == 'all'}">selected</c:if>>All Destinations</option>
                        <option value="Nashik" <c:if test="${selectedDestination == 'Nashik'}">selected</c:if>>Nashik</option>
                    </select>
                </div>

                <div class="col-md-4">
                    <label class="form-label">Category</label>
                    <select name="category" class="form-select">
                        <option value="all" <c:if test="${selectedCategory == 'all'}">selected</c:if>>All Categories</option>
                        <option value="Temple" <c:if test="${selectedCategory == 'Temple'}">selected</c:if>>Temple Tour</option>
                        <option value="Fort" <c:if test="${selectedCategory == 'Fort'}">selected</c:if>>Fort Trek</option>
                        <option value="Nature" <c:if test="${selectedCategory == 'Nature'}">selected</c:if>>Nature Trip</option>
                        <option value="Food" <c:if test="${selectedCategory == 'Food'}">selected</c:if>>Food Trail</option>
                        <option value="Winery" <c:if test="${selectedCategory == 'Winery'}">selected</c:if>>Winery Stay</option>
                    </select>
                </div>

                <div class="col-md-3">
                    <label class="form-label">Budget</label>
                    <select name="budget" class="form-select">
                        <option value="all" <c:if test="${selectedBudget == 'all'}">selected</c:if>>All Budget</option>
                        <option value="low" <c:if test="${selectedBudget == 'low'}">selected</c:if>>Budget Friendly</option>
                        <option value="medium" <c:if test="${selectedBudget == 'medium'}">selected</c:if>>Standard</option>
                        <option value="high" <c:if test="${selectedBudget == 'high'}">selected</c:if>>Premium</option>
                    </select>
                </div>

                <div class="col-md-3">
                    <label class="form-label">Travellers</label>
                    <input type="number" name="persons" class="form-control" min="1" value="${persons}" required>
                </div>

                <div class="col-md-3">
                    <label class="form-label">Travel Date</label>
                    <input type="date" name="travelDate" class="form-control" value="${travelDate}" required>
                </div>

                <div class="col-md-3 d-grid">
                    <label class="form-label invisible">Search</label>
                    <button type="submit" class="search-btn">Search Packages</button>
                </div>
            </form>
        </div>

        <div class="hero-stats">
            <div class="stat-card">
                <strong>50+</strong>
                <span>Tourist attractions across Nashik</span>
            </div>
            <div class="stat-card">
                <strong>5</strong>
                <span>Curated package categories</span>
            </div>
            <div class="stat-card">
                <strong>1 Day-2 Days</strong>
                <span>Flexible travel durations</span>
            </div>
            <div class="stat-card">
                <strong>Easy Booking</strong>
                <span>Search, compare and request instantly</span>
            </div>
        </div>
    </div>

    <div class="section-head">
        <div>
            <h2>Best Packages For Your Nashik Trip</h2>
            <p>Travel-card layout inspired by modern booking portals, adapted for your college Java project.</p>
        </div>
        <p>Category-wise tours with quick booking forms</p>
    </div>

    <c:choose>
        <c:when test="${not empty packages}">
            <div class="row g-4">
                <c:forEach var="trip" items="${packages}">
                    <div class="col-md-6 col-xl-4">
                        <div class="package-card">
                            <div class="package-top">
                                <span class="pill">${trip.category}</span>
                                <h4>${trip.packageName}</h4>
                                <p class="mb-0 text-secondary">${trip.description}</p>
                            </div>

                            <div class="package-body">
                                <div class="detail-row">
                                    <span>Destination</span>
                                    <span>${trip.destination}</span>
                                </div>
                                <div class="detail-row">
                                    <span>Duration</span>
                                    <span>${trip.duration}</span>
                                </div>
                                <div class="detail-row">
                                    <span>Trip Style</span>
                                    <span>Guided & curated</span>
                                </div>

                                <div class="price-band">
                                    <small>Starting Price</small>
                                    <div class="price-tag">Rs. ${trip.pricePerPerson}</div>
                                    <div class="text-secondary">per person including basic inclusions</div>
                                </div>

                                <div class="booking-panel">
                                    <form action="${pageContext.request.contextPath}/makemytrip/book" method="post">
                                        <input type="hidden" name="packageName" value="${trip.packageName}">

                                        <div class="mb-2">
                                            <input type="text" name="customerName" class="form-control" placeholder="Enter your name" required>
                                        </div>

                                        <div class="mb-2">
                                            <input type="email" name="email" class="form-control" placeholder="Enter email address" required>
                                        </div>

                                        <div class="mb-2">
                                            <input type="text" name="phone" class="form-control" placeholder="Enter mobile number" required>
                                        </div>

                                        <div class="mb-3">
                                            <input type="number" name="persons" class="form-control" min="1" value="1" required>
                                        </div>

                                        <button type="submit" class="book-btn w-100">Book This Package</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>

        <c:otherwise>
            <div class="empty-state">
                <h4 class="mb-2">No packages found</h4>
                <p class="mb-0 text-secondary">Try changing category, budget, or travel date to see more options.</p>
            </div>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>
