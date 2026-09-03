<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NovaShop - Modern E-Commerce</title>

    <style>
        /* =====================================================
           RESET & VARIABLES
        ===================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary: #6c5ce7;
            --primary-dark: #5849d1;
            --secondary: #00cec9;
            --accent: #ff7675;

            --bg: #f6f7fb;
            --card: #ffffff;
            --text: #1e1e2f;
            --muted: #777b87;
            --border: #e7e8ef;

            --success: #00b894;
            --warning: #fdcb6e;

            --shadow:
                0 10px 30px rgba(31, 38, 135, 0.08);

            --radius: 18px;
        }

        body.dark {
            --bg: #11131a;
            --card: #1b1e27;
            --text: #f5f5f5;
            --muted: #a8acb8;
            --border: #303441;

            --shadow:
                0 10px 30px rgba(0, 0, 0, 0.3);
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family:
                Inter,
                Arial,
                Helvetica,
                sans-serif;

            background:
                radial-gradient(
                    circle at top left,
                    rgba(108, 92, 231, 0.12),
                    transparent 30%
                ),
                radial-gradient(
                    circle at bottom right,
                    rgba(0, 206, 201, 0.10),
                    transparent 30%
                ),
                var(--bg);

            color: var(--text);

            min-height: 100vh;

            transition:
                background 0.3s ease,
                color 0.3s ease;
        }

        button,
        input,
        select {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        img {
            max-width: 100%;
            display: block;
        }

        /* =====================================================
           HEADER
        ===================================================== */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background:
                rgba(255, 255, 255, 0.88);

            backdrop-filter: blur(18px);

            border-bottom:
                1px solid var(--border);

            transition: 0.3s;
        }

        body.dark header {
            background:
                rgba(17, 19, 26, 0.88);
        }

        .navbar {
            max-width: 1400px;
            margin: auto;

            height: 75px;

            padding:
                0 25px;

            display: flex;
            align-items: center;

            gap: 25px;
        }

        /* LOGO */

        .logo {
            text-decoration: none;

            color: var(--text);

            font-size: 25px;

            font-weight: 800;

            white-space: nowrap;
        }

        .logo span {
            color: var(--primary);
        }

        /* SEARCH */

        .search-wrapper {
            flex: 1;

            max-width: 650px;

            position: relative;
        }

        .search-box {
            width: 100%;

            height: 46px;

            border:
                1px solid var(--border);

            border-radius: 30px;

            padding:
                0 50px 0 20px;

            outline: none;

            background: var(--card);

            color: var(--text);

            box-shadow:
                0 5px 20px rgba(0,0,0,0.04);

            transition: 0.25s;
        }

        .search-box:focus {
            border-color: var(--primary);

            box-shadow:
                0 0 0 4px
                rgba(108,92,231,0.12);
        }

        .search-icon {
            position: absolute;

            right: 18px;
            top: 50%;

            transform:
                translateY(-50%);

            color: var(--muted);
        }

        /* HEADER ACTIONS */

        .header-actions {
            display: flex;

            align-items: center;

            gap: 10px;
        }

        .icon-btn {
            width: 43px;
            height: 43px;

            border: 1px solid var(--border);

            border-radius: 50%;

            background: var(--card);

            color: var(--text);

            display: grid;
            place-items: center;

            position: relative;

            transition: 0.2s;
        }

        .icon-btn:hover {
            transform: translateY(-2px);

            color: var(--primary);

            border-color: var(--primary);
        }

        .badge {
            position: absolute;

            top: -5px;
            right: -3px;

            background: var(--accent);

            color: white;

            min-width: 20px;
            height: 20px;

            border-radius: 50%;

            font-size: 11px;

            display: grid;
            place-items: center;

            font-weight: 700;
        }

        /* =====================================================
           HERO
        ===================================================== */

        .hero {
            max-width: 1400px;

            margin:
                35px auto 20px;

            padding:
                0 25px;
        }

        .hero-card {
            min-height: 390px;

            border-radius: 30px;

            overflow: hidden;

            position: relative;

            display: flex;

            align-items: center;

            padding:
                55px;

            background:
                linear-gradient(
                    120deg,
                    #6c5ce7,
                    #8e7cf0 50%,
                    #00cec9
                );

            color: white;

            box-shadow:
                0 25px 60px
                rgba(108,92,231,0.25);
        }

        .hero-card::before {
            content: "";

            position: absolute;

            width: 350px;
            height: 350px;

            border-radius: 50%;

            background:
                rgba(255,255,255,0.08);

            right: 12%;
            top: -100px;
        }

        .hero-card::after {
            content: "";

            position: absolute;

            width: 220px;
            height: 220px;

            border-radius: 50%;

            background:
                rgba(255,255,255,0.08);

            right: 2%;
            bottom: -100px;
        }

        .hero-content {
            max-width: 650px;

            position: relative;

            z-index: 2;
        }

        .hero-small {
            font-size: 14px;

            text-transform: uppercase;

            letter-spacing: 2px;

            opacity: 0.85;

            margin-bottom: 12px;
        }

        .hero h1 {
            font-size:
                clamp(38px, 6vw, 68px);

            line-height: 1;

            margin-bottom: 20px;
        }

        .hero p {
            font-size: 17px;

            line-height: 1.7;

            max-width: 550px;

            opacity: 0.9;

            margin-bottom: 28px;
        }

        .hero-btn {
            border: none;

            background: white;

            color: var(--primary);

            padding:
                14px 25px;

            border-radius: 30px;

            font-weight: 700;

            box-shadow:
                0 10px 25px
                rgba(0,0,0,0.15);

            transition: 0.2s;
        }

        .hero-btn:hover {
            transform:
                translateY(-3px);

            box-shadow:
                0 15px 30px
                rgba(0,0,0,0.2);
        }

        /* =====================================================
           CATEGORY SECTION
        ===================================================== */

        .section {
            max-width: 1400px;

            margin:
                45px auto;

            padding:
                0 25px;
        }

        .section-header {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 22px;
        }

        .section-title {
            font-size: 28px;

            font-weight: 800;
        }

        .section-subtitle {
            color: var(--muted);

            margin-top: 5px;
        }

        .categories {
            display: grid;

            grid-template-columns:
                repeat(6, 1fr);

            gap: 15px;
        }

        .category {
            border: 1px solid var(--border);

            background: var(--card);

            border-radius: var(--radius);

            padding: 22px 12px;

            text-align: center;

            transition: 0.25s;

            box-shadow: var(--shadow);
        }

        .category:hover,
        .category.active {
            transform:
                translateY(-5px);

            border-color:
                var(--primary);

            color:
                var(--primary);
        }

        .category-icon {
            font-size: 34px;

            margin-bottom: 10px;
        }

        .category-name {
            font-size: 14px;

            font-weight: 700;
        }

        /* =====================================================
           SHOP CONTROLS
        ===================================================== */

        .shop-layout {
            display: grid;

            grid-template-columns:
                240px 1fr;

            gap: 25px;
        }

        .filters {
            background: var(--card);

            border:
                1px solid var(--border);

            border-radius:
                var(--radius);

            padding: 22px;

            height: fit-content;

            box-shadow:
                var(--shadow);

            position: sticky;

            top: 100px;
        }

        .filter-title {
            font-size: 18px;

            font-weight: 800;

            margin-bottom: 20px;
        }

        .filter-group {
            margin-bottom: 25px;
        }

        .filter-group label {
            display: block;

            font-size: 13px;

            font-weight: 700;

            margin-bottom: 9px;
        }

        .filter-select {
            width: 100%;

            padding: 11px;

            border:
                1px solid var(--border);

            border-radius: 10px;

            outline: none;

            background: var(--bg);

            color: var(--text);
        }

        .range-value {
            color: var(--primary);

            font-weight: 700;

            margin-top: 8px;

            font-size: 13px;
        }

        input[type="range"] {
            width: 100%;

            accent-color:
                var(--primary);
        }

        .clear-btn {
            width: 100%;

            border:
                1px solid var(--border);

            background: transparent;

            color: var(--text);

            padding: 11px;

            border-radius: 10px;

            transition: 0.2s;
        }

        .clear-btn:hover {
            border-color:
                var(--primary);

            color:
                var(--primary);
        }

        /* =====================================================
           PRODUCT GRID
        ===================================================== */

        .products-area {
            min-width: 0;
        }

        .products-top {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 18px;

            gap: 15px;
        }

        .result-count {
            color: var(--muted);

            font-size: 14px;
        }

        .sort-select {
            padding:
                10px 15px;

            border:
                1px solid var(--border);

            border-radius: 10px;

            background:
                var(--card);

            color:
                var(--text);

            outline: none;
        }

        .products {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 20px;
        }

        /* =====================================================
           PRODUCT CARD
        ===================================================== */

        .product-card {
            background:
                var(--card);

            border:
                1px solid var(--border);

            border-radius:
                var(--radius);

            overflow: hidden;

            position: relative;

            box-shadow:
                var(--shadow);

            transition:
                transform 0.25s,
                box-shadow 0.25s;
        }

        .product-card:hover {
            transform:
                translateY(-7px);

            box-shadow:
                0 20px 40px
                rgba(0,0,0,0.12);
        }

        .product-image-container {
            height: 230px;

            background:
                linear-gradient(
                    135deg,
                    #f8f9fc,
                    #eef0f7
                );

            position: relative;

            overflow: hidden;
        }

        body.dark
        .product-image-container {
            background:
                #242832;
        }

        .product-image {
            width: 100%;

            height: 100%;

            object-fit: cover;

            transition:
                transform 0.5s;
        }

        .product-card:hover
        .product-image {
            transform:
                scale(1.08);
        }

        .discount {
            position: absolute;

            top: 13px;
            left: 13px;

            background:
                var(--accent);

            color: white;

            padding:
                5px 9px;

            border-radius: 7px;

            font-size: 11px;

            font-weight: 800;
        }

        .wishlist {
            position: absolute;

            top: 12px;
            right: 12px;

            width: 38px;
            height: 38px;

            border: none;

            border-radius: 50%;

            background:
                rgba(255,255,255,0.92);

            display: grid;
            place-items: center;

            font-size: 18px;

            transition: 0.2s;
        }

        .wishlist:hover,
        .wishlist.active {
            color:
                var(--accent);

            transform:
                scale(1.1);
        }

        .product-info {
            padding: 18px;
        }

        .product-category {
            font-size: 11px;

            text-transform: uppercase;

            color:
                var(--primary);

            font-weight: 800;

            letter-spacing: 1px;

            margin-bottom: 7px;
        }

        .product-name {
            font-size: 16px;

            font-weight: 700;

            line-height: 1.4;

            margin-bottom: 8px;
        }

        .rating {
            color:
                #f39c12;

            font-size: 13px;

            margin-bottom: 12px;
        }

        .rating span {
            color:
                var(--muted);

            margin-left: 4px;
        }

        .price-row {
            display: flex;

            align-items: center;

            gap: 9px;

            margin-bottom: 15px;
        }

        .price {
            font-size: 21px;

            font-weight: 800;
        }

        .old-price {
            color:
                var(--muted);

            text-decoration:
                line-through;

            font-size: 13px;
        }

        .add-cart {
            width: 100%;

            border: none;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    #8e7cf0
                );

            color: white;

            padding: 12px;

            border-radius: 11px;

            font-weight: 700;

            transition: 0.2s;
        }

        .add-cart:hover {
            transform:
                translateY(-2px);

            box-shadow:
                0 8px 18px
                rgba(108,92,231,0.3);
        }

        /* =====================================================
           CART DRAWER
        ===================================================== */

        .overlay {
            position: fixed;

            inset: 0;

            background:
                rgba(0,0,0,0.45);

            backdrop-filter:
                blur(4px);

            z-index: 1100;

            opacity: 0;

            visibility: hidden;

            transition: 0.3s;
        }

        .overlay.show {
            opacity: 1;

            visibility: visible;
        }

        .cart-drawer {
            position: fixed;

            top: 0;
            right: -450px;

            width: 430px;

            max-width: 100%;

            height: 100vh;

            background:
                var(--card);

            z-index: 1200;

            display: flex;

            flex-direction: column;

            box-shadow:
                -15px 0 50px
                rgba(0,0,0,0.18);

            transition:
                right 0.35s ease;
        }

        .cart-drawer.show {
            right: 0;
        }

        .cart-header {
            padding: 22px;

            display: flex;

            justify-content:
                space-between;

            align-items: center;

            border-bottom:
                1px solid var(--border);
        }

        .cart-header h2 {
            font-size: 21px;
        }

        .close-btn {
            width: 38px;
            height: 38px;

            border: none;

            border-radius: 50%;

            background:
                var(--bg);

            color:
                var(--text);

            font-size: 20px;
        }

        .cart-items {
            flex: 1;

            overflow-y: auto;

            padding: 20px;
        }

        .cart-item {
            display: flex;

            gap: 13px;

            padding:
                13px 0;

            border-bottom:
                1px solid var(--border);
        }

        .cart-item-image {
            width: 70px;
            height: 70px;

            border-radius: 10px;

            object-fit: cover;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-name {
            font-size: 14px;

            font-weight: 700;

            line-height: 1.4;

            margin-bottom: 6px;
        }

        .cart-item-price {
            color:
                var(--primary);

            font-weight: 800;

            font-size: 14px;
        }

        .cart-controls {
            display: flex;

            align-items: center;

            gap: 8px;

            margin-top: 9px;
        }

        .quantity-btn {
            width: 26px;
            height: 26px;

            border:
                1px solid var(--border);

            background:
                var(--bg);

            color:
                var(--text);

            border-radius: 6px;
        }

        .delete-btn {
            margin-left: auto;

            border: none;

            background: transparent;

            color: var(--accent);

            font-size: 12px;
        }

        .cart-footer {
            padding: 22px;

            border-top:
                1px solid var(--border);
        }

        .subtotal {
            display: flex;

            justify-content:
                space-between;

            font-size: 18px;

            font-weight: 800;

            margin-bottom: 15px;
        }

        .checkout-btn {
            width: 100%;

            padding: 14px;

            border: none;

            border-radius: 12px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    #8e7cf0
                );

            font-weight: 800;
        }

        /* =====================================================
           EMPTY CART
        ===================================================== */

        .empty-cart {
            text-align: center;

            color:
                var(--muted);

            padding:
                60px 20px;
        }

        .empty-cart-icon {
            font-size: 55px;

            margin-bottom: 15px;
        }

        /* =====================================================
           CHECKOUT MODAL
        ===================================================== */

        .modal {
            position: fixed;

            inset: 0;

            background:
                rgba(0,0,0,0.55);

            backdrop-filter:
                blur(5px);

            display: flex;

            align-items: center;

            justify-content: center;

            z-index: 2000;

            opacity: 0;

            visibility: hidden;

            transition: 0.25s;
        }

        .modal.show {
            opacity: 1;

            visibility: visible;
        }

        .modal-content {
            width:
                min(520px, 92%);

            background:
                var(--card);

            border-radius:
                22px;

            padding:
                28px;

            box-shadow:
                0 30px 80px
                rgba(0,0,0,0.25);

            transform:
                translateY(20px);

            transition:
                0.25s;
        }

        .modal.show
        .modal-content {
            transform:
                translateY(0);
        }

        .modal-header {
            display: flex;

            justify-content:
                space-between;

            align-items: center;

            margin-bottom: 20px;
        }

        .modal-header h2 {
            font-size: 23px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;

            font-size: 13px;

            font-weight: 700;

            margin-bottom: 7px;
        }

        .form-control {
            width: 100%;

            padding: 12px 14px;

            border:
                1px solid var(--border);

            border-radius: 10px;

            background:
                var(--bg);

            color:
                var(--text);

            outline: none;
        }

        .form-control:focus {
            border-color:
                var(--primary);

            box-shadow:
                0 0 0 3px
                rgba(108,92,231,0.1);
        }

        .modal-buttons {
            display: flex;

            gap: 10px;

            margin-top: 20px;
        }

        .modal-buttons button {
            flex: 1;

            padding: 12px;

            border-radius: 10px;

            font-weight: 700;
        }

        .cancel-btn {
            background:
                var(--bg);

            border:
                1px solid var(--border);

            color:
                var(--text);
        }

        .place-order {
            background:
                var(--primary);

            border:
                1px solid var(--primary);

            color: white;
        }

        /* =====================================================
           TOAST
        ===================================================== */

        .toast {
            position: fixed;

            right: 25px;
            bottom: 25px;

            background:
                var(--text);

            color:
                var(--card);

            padding:
                14px 20px;

            border-radius:
                12px;

            z-index: 3000;

            transform:
                translateY(100px);

            opacity: 0;

            transition:
                0.3s;

            box-shadow:
                0 10px 30px
                rgba(0,0,0,0.2);

            font-size: 14px;
        }

        .toast.show {
            transform:
                translateY(0);

            opacity: 1;
        }

        /* =====================================================
           FOOTER
        ===================================================== */

        footer {
            margin-top: 70px;

            background:
                #151722;

            color:
                white;

            padding:
                50px 25px 25px;
        }

        .footer-grid {
            max-width: 1400px;

            margin: auto;

            display: grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap: 40px;
        }

        .footer-logo {
            font-size: 25px;

            font-weight: 800;

            margin-bottom: 15px;
        }

        .footer-logo span {
            color:
                #8e7cf0;
        }

        .footer-text {
            color:
                #a5a8b4;

            line-height:
                1.7;

            max-width: 400px;
        }

        .footer-column h3 {
            margin-bottom: 15px;
        }

        .footer-column a {
            display: block;

            color:
                #a5a8b4;

            text-decoration:
                none;

            margin-bottom: 10px;

            font-size: 14px;
        }

        .footer-column a:hover {
            color:
                white;
        }

        .copyright {
            max-width: 1400px;

            margin:
                40px auto 0;

            padding-top:
                20px;

            border-top:
                1px solid #30323e;

            color:
                #858895;

            font-size: 13px;

            text-align: center;
        }

        /* =====================================================
           NO RESULTS
        ===================================================== */

        .no-results {
            grid-column:
                1 / -1;

            text-align:
                center;

            padding:
                70px 20px;

            color:
                var(--muted);
        }

        .no-results-icon {
            font-size: 50px;

            margin-bottom:
                15px;
        }

        /* =====================================================
           RESPONSIVE
        ===================================================== */

        @media (max-width: 1100px) {

            .categories {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .products {
                grid-template-columns:
                    repeat(2, 1fr);
            }
        }

        @media (max-width: 800px) {

            .navbar {
                height: auto;

                padding:
                    15px;

                flex-wrap: wrap;
            }

            .logo {
                order: 1;
            }

            .header-actions {
                order: 2;

                margin-left: auto;
            }

            .search-wrapper {
                order: 3;

                flex-basis: 100%;

                max-width: none;
            }

            .hero {
                margin-top:
                    20px;
            }

            .hero-card {
                padding:
                    35px 25px;

                min-height:
                    350px;

                border-radius:
                    22px;
            }

            .shop-layout {
                grid-template-columns:
                    1fr;
            }

            .filters {
                position:
                    static;
            }

            .products {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .footer-grid {
                grid-template-columns:
                    1fr 1fr;
            }
        }

        @media (max-width: 550px) {

            .categories {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .products {
                grid-template-columns:
                    1fr;
            }

            .section {
                padding:
                    0 15px;
            }

            .hero {
                padding:
                    0 15px;
            }

            .hero-card {
                padding:
                    30px 22px;
            }

            .hero h1 {
                font-size:
                    40px;
            }

            .section-title {
                font-size:
                    23px;
            }

            .products-top {
                align-items:
                    flex-start;

                flex-direction:
                    column;
            }

            .sort-select {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns:
                    1fr;
            }
        }
    </style>
</head>

<body>

    <!-- =====================================================
         HEADER
    ===================================================== -->

    <header>

        <div class="navbar">

            <a href="#" class="logo">
                Nova<span>Shop</span>
            </a>

            <div class="search-wrapper">

                <input
                    type="text"
                    id="searchInput"
                    class="search-box"
                    placeholder="Search for products..."
                >

                <span class="search-icon">
                    🔍
                </span>

            </div>

            <div class="header-actions">

                <button
                    class="icon-btn"
                    id="themeBtn"
                    title="Toggle theme">

                    🌙

                </button>

                <button
                    class="icon-btn"
                    id="wishlistBtn"
                    title="Wishlist">

                    ❤️

                    <span
                        class="badge"
                        id="wishlistCount">

                        0

                    </span>

                </button>

                <button
                    class="icon-btn"
                    id="cartBtn"
                    title="Shopping Cart">

                    🛒

                    <span
                        class="badge"
                        id="cartCount">

                        0

                    </span>

                </button>

            </div>

        </div>

    </header>


    <!-- =====================================================
         HERO
    ===================================================== -->

    <section class="hero">

        <div class="hero-card">

            <div class="hero-content">

                <div class="hero-small">
                    New Collection 2026
                </div>

                <h1>
                    Upgrade Your
                    Everyday.
                </h1>

                <p>
                    Discover premium products designed
                    for modern living. Shop the latest
                    technology, fashion, lifestyle and
                    accessories at amazing prices.
                </p>

                <button
                    class="hero-btn"
                    onclick="scrollToProducts()">

                    Shop Now →
                    
                </button>

            </div>

        </div>

    </section>


    <!-- =====================================================
         CATEGORIES
    ===================================================== -->

    <section class="section">

        <div class="section-header">

            <div>

                <h2 class="section-title">
                    Shop by Category
                </h2>

                <p class="section-subtitle">
                    Find exactly what you're looking for
                </p>

            </div>

        </div>


        <div class="categories">

            <div
                class="category active"
                data-category="all">

                <div class="category-icon">
                    ✨
                </div>

                <div class="category-name">
                    All
                </div>

            </div>

            <div
                class="category"
                data-category="electronics">

                <div class="category-icon">
                    💻
                </div>

                <div class="category-name">
                    Electronics
                </div>

            </div>

            <div
                class="category"
                data-category="fashion">

                <div class="category-icon">
                    👕
                </div>

                <div class="category-name">
                    Fashion
                </div>

            </div>

            <div
                class="category"
                data-category="home">

                <div class="category-icon">
                    🏠
                </div>

                <div class="category-name">
                    Home
                </div>

            </div>

            <div
                class="category"
                data-category="sports">

                <div class="category-icon">
                    ⚽
                </div>

                <div class="category-name">
                    Sports
                </div>

            </div>

            <div
                class="category"
                data-category="accessories">

                <div class="category-icon">
                    🎧
                </div>

                <div class="category-name">
                    Accessories
                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         PRODUCTS
    ===================================================== -->

    <section
        class="section"
        id="productsSection">

        <div class="shop-layout">

            <!-- FILTERS -->

            <aside class="filters">

                <div class="filter-title">
                    Filters
                </div>

                <div class="filter-group">

                    <label>
                        Category
                    </label>

                    <select
                        id="categoryFilter"
                        class="filter-select">

                        <option value="all">
                            All Categories
                        </option>

                        <option value="electronics">
                            Electronics
                        </option>

                        <option value="fashion">
                            Fashion
                        </option>

                        <option value="home">
                            Home
                        </option>

                        <option value="sports">
                            Sports
                        </option>

                        <option value="accessories">
                            Accessories
                        </option>

                    </select>

                </div>


                <div class="filter-group">

                    <label>
                        Maximum Price
                    </label>

                    <input
                        type="range"
                        id="priceFilter"
                        min="20"
                        max="1500"
                        value="1500"
                        step="10"
                    >

                    <div
                        class="range-value"
                        id="priceValue">

                        Up to $1500

                    </div>

                </div>


                <div class="filter-group">

                    <label>
                        Minimum Rating
                    </label>

                    <select
                        id="ratingFilter"
                        class="filter-select">

                        <option value="0">
                            Any Rating
                        </option>

                        <option value="4">
                            4★ & above
                        </option>

                        <option value="4.5">
                            4.5★ & above
                        </option>

                    </select>

                </div>


                <button
                    class="clear-btn"
                    id="clearFilters">

                    Reset Filters

                </button>

            </aside>


            <!-- PRODUCTS AREA -->

            <div class="products-area">

                <div class="products-top">

                    <div
                        class="result-count"
                        id="resultCount">

                        Showing products

                    </div>

                    <select
                        id="sortFilter"
                        class="sort-select">

                        <option value="featured">
                            Featured
                        </option>

                        <option value="low">
                            Price: Low to High
                        </option>

                        <option value="high">
                            Price: High to Low
                        </option>

                        <option value="rating">
                            Highest Rated
                        </option>

                    </select>

                </div>


                <div
                    class="products"
                    id="productGrid">
                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         CART OVERLAY
    ===================================================== -->

    <div
        class="overlay"
        id="overlay">
    </div>


    <!-- =====================================================
         CART DRAWER
    ===================================================== -->

    <aside
        class="cart-drawer"
        id="cartDrawer">

        <div class="cart-header">

            <h2>
                Your Cart
            </h2>

            <button
                class="close-btn"
                id="closeCart">

                ×

            </button>

        </div>


        <div
            class="cart-items"
            id="cartItems">
        </div>


        <div class="cart-footer">

            <div class="subtotal">

                <span>
                    Subtotal
                </span>

                <span id="cartTotal">
                    $0.00
                </span>

            </div>

            <button
                class="checkout-btn"
                id="checkoutBtn">

                Proceed to Checkout

            </button>

        </div>

    </aside>


    <!-- =====================================================
         CHECKOUT MODAL
    ===================================================== -->

    <div
        class="modal"
        id="checkoutModal">

        <div class="modal-content">

            <div class="modal-header">

                <h2>
                    Checkout
                </h2>

                <button
                    class="close-btn"
                    id="closeCheckout">

                    ×

                </button>

            </div>


            <form id="checkoutForm">

                <div class="form-group">

                    <label>
                        Full Name
                    </label>

                    <input
                        type="text"
                        class="form-control"
                        id="customerName"
                        placeholder="John Doe"
                        required
                    >

                </div>


                <div class="form-group">

                    <label>
                        Email
                    </label>

                    <input
                        type="email"
                        class="form-control"
                        placeholder="john@example.com"
                        required
                    >

                </div>


                <div class="form-group">

                    <label>
                        Phone Number
                    </label>

                    <input
                        type="tel"
                        class="form-control"
                        placeholder="+91 98765 43210"
                        required
                    >

                </div>


                <div class="form-group">

                    <label>
                        Delivery Address
                    </label>

                    <textarea
                        class="form-control"
                        rows="3"
                        placeholder="Enter your complete address"
                        required>
                    </textarea>

                </div>


                <div class="modal-buttons">

                    <button
                        type="button"
                        class="cancel-btn"
                        id="cancelCheckout">

                        Cancel

                    </button>

                    <button
                        type="submit"
                        class="place-order">

                        Place Order

                    </button>

                </div>

            </form>

        </div>

    </div>


    <!-- =====================================================
         TOAST
    ===================================================== -->

    <div
        class="toast"
        id="toast">

        Product added to cart!

    </div>


    <!-- =====================================================
         FOOTER
    ===================================================== -->

    <footer>

        <div class="footer-grid">

            <div>

                <div class="footer-logo">
                    Nova<span>Shop</span>
                </div>

                <p class="footer-text">
                    A modern shopping experience built
                    for people who love beautiful products,
                    great prices and simple shopping.
                </p>

            </div>


            <div class="footer-column">

                <h3>
                    Shop
                </h3>

                <a href="#">
                    Electronics
                </a>

                <a href="#">
                    Fashion
                </a>

                <a href="#">
                    Home
                </a>

                <a href="#">
                    Sports
                </a>

            </div>


            <div class="footer-column">

                <h3>
                    Support
                </h3>

                <a href="#">
                    Contact Us
                </a>

                <a href="#">
                    Shipping
                </a>

                <a href="#">
                    Returns
                </a>

                <a href="#">
                    FAQ
                </a>

            </div>


            <div class="footer-column">

                <h3>
                    Company
                </h3>

                <a href="#">
                    About Us
                </a>

                <a href="#">
                    Careers
                </a>

                <a href="#">
                    Privacy
                </a>

                <a href="#">
                    Terms
                </a>

            </div>

        </div>


        <div class="copyright">

            © 2026 NovaShop. All rights reserved.

        </div>

    </footer>


    <!-- =====================================================
         JAVASCRIPT
    ===================================================== -->

    <script>

        /* =====================================================
           PRODUCT DATA
        ===================================================== */

        const products = [

            {
                id: 1,
                name: "Premium Wireless Headphones",
                category: "electronics",
                price: 149.99,
                oldPrice: 199.99,
                rating: 4.8,
                reviews: 245,
                discount: 25,
                image:
                    "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600"
            },

            {
                id: 2,
                name: "Smart Watch Pro",
                category: "electronics",
                price: 129.99,
                oldPrice: 179.99,
                rating: 4.7,
                reviews: 189,
                discount: 28,
                image:
                    "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600"
            },

            {
                id: 3,
                name: "Minimalist White Sneakers",
                category: "fashion",
                price: 79.99,
                oldPrice: 109.99,
                rating: 4.6,
                reviews: 320,
                discount: 27,
                image:
                    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600"
            },

            {
                id: 4,
                name: "Modern Desk Lamp",
                category: "home",
                price: 45.99,
                oldPrice: 65.99,
                rating: 4.5,
                reviews: 126,
                discount: 30,
                image:
                    "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=600"
            },

            {
                id: 5,
                name: "Professional Running Shoes",
                category: "sports",
                price: 99.99,
                oldPrice: 139.99,
                rating: 4.9,
                reviews: 412,
                discount: 29,
                image:
                    "https://images.unsplash.com/photo-1552674605-db6ffd4facb5?w=600"
            },

            {
                id: 6,
                name: "Mechanical RGB Keyboard",
                category: "accessories",
                price: 89.99,
                oldPrice: 119.99,
                rating: 4.7,
                reviews: 215,
                discount: 25,
                image:
                    "https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600"
            },

            {
                id: 7,
                name: "Portable Bluetooth Speaker",
                category: "electronics",
                price: 59.99,
                oldPrice: 79.99,
                rating: 4.5,
                reviews: 174,
                discount: 25,
                image:
                    "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=600"
            },

            {
                id: 8,
                name: "Classic Denim Jacket",
                category: "fashion",
                price: 69.99,
                oldPrice: 99.99,
                rating: 4.4,
                reviews: 98,
                discount: 30,
                image:
                    "https://images.unsplash.com/photo-1551537482-f2075a1d41f2?w=600"
            },

            {
                id: 9,
                name: "Ergonomic Office Chair",
                category: "home",
                price: 249.99,
                oldPrice: 329.99,
                rating: 4.8,
                reviews: 167,
                discount: 24,
                image:
                    "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=600"
            },

            {
                id: 10,
                name: "Fitness Resistance Bands",
                category: "sports",
                price: 29.99,
                oldPrice: 44.99,
                rating: 4.6,
                reviews: 276,
                discount: 33,
                image:
                    "https://images.unsplash.com/photo-1598289431512-b97b0917affc?w=600"
            },

            {
                id: 11,
                name: "True Wireless Earbuds",
                category: "accessories",
                price: 119.99,
                oldPrice: 159.99,
                rating: 4.8,
                reviews: 354,
                discount: 25,
                image:
                    "https://images.unsplash.com/photo-1590658268037-6bf12165
