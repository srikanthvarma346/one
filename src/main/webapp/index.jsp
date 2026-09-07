<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>ShopSphere - Smart Shopping</title>

    <style>

        /* =========================================================
           GLOBAL
        ========================================================= */

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family:
                Inter,
                "Segoe UI",
                Tahoma,
                Geneva,
                Verdana,
                sans-serif;

            background: #f5f7fb;
            color: #172033;
            min-height: 100vh;
            padding-top: 82px;

            transition:
                background .3s ease,
                color .3s ease;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* =========================================================
           DARK MODE
        ========================================================= */

        body.dark {
            background: #0f172a;
            color: #e5e7eb;
        }

        body.dark nav {
            background: rgba(15, 23, 42, .96);
            border-color: #263247;
        }

        body.dark .brand {
            color: white;
        }

        body.dark nav a {
            color: #cbd5e1;
        }

        body.dark nav a:hover {
            color: #60a5fa;
            background: #172554;
        }

        body.dark .search-area,
        body.dark .category-filter {
            background: #1e293b;
            border-color: #334155;
            color: white;
        }

        body.dark .item-card,
        body.dark .modal-content,
        body.dark .cart-item {
            background: #1e293b;
            border-color: #334155;
            color: #e5e7eb;
        }

        body.dark .item-title,
        body.dark .category-section h2,
        body.dark .modal-header h3,
        body.dark .cart-item-name,
        body.dark .empty-cart h4 {
            color: #f8fafc;
        }

        body.dark .category-header {
            border-color: #334155;
        }

        body.dark .item-img {
            background:
                linear-gradient(
                    135deg,
                    #172554,
                    #312e81
                );
        }

        body.dark .cart-item:hover {
            border-color: #475569;
        }

        /* =========================================================
           NAVIGATION
        ========================================================= */

        nav {
            position: fixed;
            top: 0;
            left: 0;

            width: 100%;
            min-height: 78px;

            display: flex;
            align-items: center;
            gap: 18px;

            padding: 12px 25px;

            background:
                rgba(255,255,255,.96);

            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);

            border-bottom: 1px solid #e8edf5;

            box-shadow:
                0 4px 25px
                rgba(15,23,42,.07);

            z-index: 1000;
        }

        /* =========================================================
           BRAND
        ========================================================= */

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;

            flex-shrink: 0;

            color: #111827;

            font-size: 20px;
            font-weight: 900;

            text-decoration: none;
            letter-spacing: -.5px;
        }

        .brand-icon {
            width: 38px;
            height: 38px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 11px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #7c3aed
                );

            box-shadow:
                0 7px 18px
                rgba(37,99,235,.25);
        }

        .brand span:last-child span {
            color: #2563eb;
        }

        /* =========================================================
           NAV LINKS
        ========================================================= */

        .nav-links {
            display: flex;
            align-items: center;

            gap: 5px;

            flex: 1;

            overflow-x: auto;

            scrollbar-width: none;

            padding: 3px;
        }

        .nav-links::-webkit-scrollbar {
            display: none;
        }

        nav a {
            text-decoration: none;

            color: #64748b;

            font-size: 12px;
            font-weight: 750;

            white-space: nowrap;

            padding: 9px 12px;

            border-radius: 9px;

            transition: all .25s ease;
        }

        nav a:hover {
            color: #2563eb;
            background: #eff6ff;
        }

        /* =========================================================
           NAV ACTIONS
        ========================================================= */

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;

            border: none;
            border-radius: 10px;

            background: #f1f5f9;
            color: #334155;

            font-size: 17px;

            transition: all .2s ease;
        }

        .icon-btn:hover {
            background: #e2e8f0;
            transform: translateY(-1px);
        }

        body.dark .icon-btn {
            background: #1e293b;
            color: #f8fafc;
        }

        .cart-btn {
            position: relative;

            display: flex;
            align-items: center;
            justify-content: center;

            gap: 8px;

            padding: 11px 15px;

            border: none;
            border-radius: 11px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #4f46e5
                );

            font-size: 13px;
            font-weight: 800;

            white-space: nowrap;

            box-shadow:
                0 7px 18px
                rgba(37,99,235,.22);

            transition: all .25s ease;
        }

        .cart-btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 10px 25px
                rgba(37,99,235,.3);
        }

        #cart-count {
            min-width: 23px;
            height: 23px;

            display: inline-flex;
            align-items: center;
            justify-content: center;

            border-radius: 7px;

            color: #2563eb;
            background: white;

            font-size: 11px;
            font-weight: 900;
        }

        /* =========================================================
           MAIN
        ========================================================= */

        main {
            max-width: 1350px;

            margin: 0 auto;

            padding:
                28px 24px 60px;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            position: relative;

            overflow: hidden;

            margin-bottom: 28px;

            padding: 45px;

            border-radius: 24px;

            background:
                linear-gradient(
                    135deg,
                    #172554,
                    #312e81,
                    #4c1d95
                );

            color: white;

            box-shadow:
                0 20px 50px
                rgba(30,41,59,.18);
        }

        .hero::before {
            content: "";

            position: absolute;

            width: 300px;
            height: 300px;

            right: -100px;
            top: -120px;

            border-radius: 50%;

            background:
                rgba(255,255,255,.09);
        }

        .hero::after {
            content: "";

            position: absolute;

            width: 180px;
            height: 180px;

            right: 180px;
            bottom: -100px;

            border-radius: 50%;

            background:
                rgba(255,255,255,.07);
        }

        .hero-content {
            position: relative;
            z-index: 2;

            max-width: 760px;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 7px;

            margin-bottom: 15px;

            padding: 7px 12px;

            border-radius: 30px;

            background:
                rgba(255,255,255,.12);

            border:
                1px solid
                rgba(255,255,255,.15);

            font-size: 11px;
            font-weight: 800;
        }

        .hero h1 {
            margin-bottom: 12px;

            font-size: 38px;
            line-height: 1.15;

            letter-spacing: -1px;
        }

        .hero p {
            max-width: 650px;

            color:
                rgba(255,255,255,.78);

            font-size: 15px;
            line-height: 1.7;
        }

        .hero-stats {
            position: relative;
            z-index: 2;

            display: flex;
            gap: 30px;

            margin-top: 25px;
        }

        .hero-stat {
            display: flex;
            flex-direction: column;
            gap: 3px;
        }

        .hero-stat strong {
            font-size: 21px;
        }

        .hero-stat span {
            color:
                rgba(255,255,255,.65);

            font-size: 11px;
        }

        /* =========================================================
           SEARCH PANEL
        ========================================================= */

        .search-panel {
            display: grid;

            grid-template-columns:
                minmax(250px, 1fr)
                220px;

            gap: 12px;

            margin-bottom: 35px;
        }

        .search-wrapper {
            position: relative;
        }

        .search-area {
            width: 100%;

            height: 50px;

            padding:
                0 48px 0 45px;

            border:
                1px solid #dfe6f0;

            border-radius: 13px;

            outline: none;

            background: white;

            color: #172033;

            font-size: 14px;

            box-shadow:
                0 5px 20px
                rgba(15,23,42,.04);

            transition:
                border .2s ease,
                box-shadow .2s ease;
        }

        .search-area:focus {
            border-color: #2563eb;

            box-shadow:
                0 0 0 4px
                rgba(37,99,235,.1);
        }

        .search-icon {
            position: absolute;

            left: 16px;
            top: 50%;

            transform:
                translateY(-50%);

            font-size: 17px;
        }

        .clear-search {
            position: absolute;

            right: 12px;
            top: 50%;

            transform:
                translateY(-50%);

            width: 28px;
            height: 28px;

            border: none;

            border-radius: 7px;

            background: #f1f5f9;
            color: #64748b;

            display: none;
        }

        .category-filter {
            height: 50px;

            padding:
                0 14px;

            border:
                1px solid #dfe6f0;

            border-radius: 13px;

            outline: none;

            background: white;

            color: #172033;

            font-size: 13px;
            font-weight: 700;

            cursor: pointer;
        }

        /* =========================================================
           RESULTS BAR
        ========================================================= */

        .results-bar {
            display: flex;

            align-items: center;
            justify-content: space-between;

            gap: 15px;

            margin-bottom: 28px;
        }

        .results-text {
            color: #64748b;
            font-size: 13px;
            font-weight: 700;
        }

        body.dark .results-text {
            color: #94a3b8;
        }

        .clear-filters {
            border: none;

            padding:
                8px 12px;

            border-radius: 8px;

            background: #fee2e2;
            color: #dc2626;

            font-size: 11px;
            font-weight: 800;

            display: none;
        }

        /* =========================================================
           CATEGORY
        ========================================================= */

        .category-section {
            margin-bottom: 70px;

            scroll-margin-top: 105px;
        }

        .category-header {
            display: flex;

            align-items: flex-end;
            justify-content: space-between;

            margin-bottom: 22px;
            padding-bottom: 13px;

            border-bottom:
                1px solid #e5eaf2;
        }

        .category-heading-area {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .category-icon {
            width: 42px;
            height: 42px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 11px;

            color: #2563eb;
            background: #eff6ff;

            font-size: 19px;
        }

        .category-section h2 {
            position: relative;

            color: #111827;

            font-size: 24px;
            font-weight: 850;

            letter-spacing: -.5px;
        }

        .category-section h2::after {
            content: "";

            position: absolute;

            left: 0;
            bottom: -18px;

            width: 45px;
            height: 4px;

            border-radius: 10px;

            background:
                linear-gradient(
                    90deg,
                    #2563eb,
                    #7c3aed
                );
        }

        .category-badge {
            padding: 7px 12px;

            border-radius: 8px;

            color: #2563eb;
            background: #eff6ff;

            font-size: 11px;
            font-weight: 800;
        }

        /* =========================================================
           PRODUCT GRID
        ========================================================= */

        .item-grid {
            display: grid;

            grid-template-columns:
                repeat(
                    auto-fill,
                    minmax(215px, 1fr)
                );

            gap: 20px;
        }

        /* =========================================================
           PRODUCT CARD
        ========================================================= */

        .item-card {
            position: relative;

            display: flex;
            flex-direction: column;

            overflow: hidden;

            padding: 11px;

            border:
                1px solid #e7ebf2;

            border-radius: 17px;

            background: white;

            box-shadow:
                0 5px 20px
                rgba(15,23,42,.045);

            transition:
                transform .3s ease,
                box-shadow .3s ease,
                border-color .3s ease;
        }

        .item-card:hover {
            transform: translateY(-7px);

            border-color: #d7e3f7;

            box-shadow:
                0 18px 40px
                rgba(15,23,42,.12);
        }

        .item-card::before {
            content: "";

            position: absolute;

            top: 0;
            left: 0;

            width: 100%;
            height: 3px;

            background:
                linear-gradient(
                    90deg,
                    #2563eb,
                    #7c3aed,
                    #ec4899
                );

            opacity: 0;

            transition: opacity .3s ease;
        }

        .item-card:hover::before {
            opacity: 1;
        }

        /* =========================================================
           IMAGE
        ========================================================= */

        .item-img {
            position: relative;

            width: 100%;
            height: 175px;

            display: flex;
            align-items: center;
            justify-content: center;

            overflow: hidden;

            margin-bottom: 14px;

            border-radius: 12px;

            background:
                linear-gradient(
                    135deg,
                    #f1f5ff,
                    #f7f3ff
                );
        }

        .item-img img {
            width: 100%;
            height: 100%;

            display: block;

            object-fit: cover;

            transition:
                transform .45s ease;
        }

        .item-card:hover
        .item-img img {
            transform: scale(1.08);
        }

        .image-overlay {
            position: absolute;

            left: 9px;
            bottom: 9px;

            padding: 5px 9px;

            border-radius: 6px;

            color: white;

            background:
                rgba(15,23,42,.72);

            backdrop-filter: blur(5px);

            font-size: 9px;
            font-weight: 800;
        }

        .wishlist-btn {
            position: absolute;

            right: 9px;
            top: 9px;

            width: 34px;
            height: 34px;

            display: flex;
            align-items: center;
            justify-content: center;

            border: none;

            border-radius: 9px;

            color: #64748b;

            background:
                rgba(255,255,255,.92);

            font-size: 17px;

            box-shadow:
                0 4px 12px
                rgba(15,23,42,.12);

            z-index: 3;

            transition: all .2s ease;
        }

        .wishlist-btn:hover {
            transform: scale(1.08);
        }

        .wishlist-btn.active {
            color: #ef4444;
        }

        /* =========================================================
           PRODUCT INFO
        ========================================================= */

        .item-title {
            min-height: 42px;

            margin-bottom: 5px;

            color: #1e293b;

            font-size: 15px;
            font-weight: 750;

            line-height: 1.4;
        }

        .item-price {
            margin-bottom: 13px;

            color: #2563eb;

            font-size: 19px;
            font-weight: 900;
        }

        .product-rating {
            margin-bottom: 9px;

            color: #f59e0b;

            font-size: 11px;
        }

        .card-buttons {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 7px;

            margin-top: auto;
        }

        .btn {
            min-height: 40px;

            padding: 8px 5px;

            border: none;

            border-radius: 9px;

            font-size: 10px;
            font-weight: 800;

            transition: all .2s ease;
        }

        .btn:active {
            transform: scale(.95);
        }

        .add-cart-btn {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #1d4ed8
                );
        }

        .add-cart-btn:hover {
            transform: translateY(-1px);

            box-shadow:
                0 7px 15px
                rgba(37,99,235,.25);
        }

        .details-btn {
            color: #475569;

            background: #f1f5f9;

            border:
                1px solid #e2e8f0;
        }

        .details-btn:hover {
            color: #2563eb;
            background: #eff6ff;
        }

        .buy-now-btn {
            color: #92400e;

            background: #fef3c7;

            border:
                1px solid #fde68a;
        }

        .buy-now-btn:hover {
            color: #78350f;
            background: #fde68a;
        }

        /* =========================================================
           NO RESULTS
        ========================================================= */

        .no-results {
            display: none;

            padding: 70px 20px;

            text-align: center;
        }

        .no-results-icon {
            margin-bottom: 12px;

            font-size: 50px;
        }

        .no-results h3 {
            margin-bottom: 7px;

            color: #1e293b;

            font-size: 20px;
        }

        body.dark .no-results h3 {
            color: white;
        }

        .no-results p {
            color: #64748b;
            font-size: 13px;
        }

        /* =========================================================
           MODALS
        ========================================================= */

        .modal-overlay {
            position: fixed;

            inset: 0;

            display: none;

            align-items: center;
            justify-content: center;

            padding: 20px;

            background:
                rgba(15,23,42,.68);

            backdrop-filter: blur(8px);

            z-index: 2000;
        }

        .modal-content {
            width: 100%;
            max-width: 650px;

            max-height: 88vh;

            overflow-y: auto;

            padding: 25px;

            border-radius: 20px;

            background: white;

            box-shadow:
                0 30px 80px
                rgba(0,0,0,.28);

            animation:
                modalSlide .25s ease;
        }

        .modal-content.large {
            max-width: 850px;
        }

        @keyframes modalSlide {

            from {
                opacity: 0;
                transform:
                    translateY(20px)
                    scale(.97);
            }

            to {
                opacity: 1;
                transform:
                    translateY(0)
                    scale(1);
            }
        }

        .modal-header {
            display: flex;

            align-items: center;
            justify-content: space-between;

            margin-bottom: 20px;

            padding-bottom: 16px;

            border-bottom:
                1px solid #e5e7eb;
        }

        body.dark .modal-header {
            border-color: #334155;
        }

        .modal-header h3 {
            color: #111827;

            font-size: 21px;
            font-weight: 850;
        }

        .close-btn {
            width: 37px;
            height: 37px;

            display: flex;
            align-items: center;
            justify-content: center;

            border: none;

            border-radius: 10px;

            color: #64748b;
            background: #f1f5f9;

            font-size: 22px;

            transition: all .2s ease;
        }

        .close-btn:hover {
            color: #dc2626;
            background: #fee2e2;

            transform: rotate(90deg);
        }

        /* =========================================================
           PRODUCT DETAILS
        ========================================================= */

        .details-layout {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 25px;
        }

        .details-image {
            width: 100%;
            height: 360px;

            overflow: hidden;

            border-radius: 15px;

            background: #f1f5f9;
        }

        .details-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;
        }

        .details-info {
            display: flex;
            flex-direction: column;
        }

        .details-category {
            display: inline-flex;

            width: fit-content;

            margin-bottom: 10px;

            padding: 6px 10px;

            border-radius: 7px;

            color: #2563eb;
            background: #eff6ff;

            font-size: 10px;
            font-weight: 800;
        }

        .details-info h2 {
            margin-bottom: 10px;

            color: #111827;

            font-size: 28px;
        }

        body.dark .details-info h2 {
            color: white;
        }

        .details-price {
            margin-bottom: 12px;

            color: #2563eb;

            font-size: 26px;
            font-weight: 900;
        }

        .details-rating {
            margin-bottom: 20px;

            color: #f59e0b;

            font-size: 13px;
        }

        .details-description {
            margin-bottom: 25px;

            color: #64748b;

            font-size: 14px;
            line-height: 1.7;
        }

        body.dark .details-description {
            color: #94a3b8;
        }

        .details-actions {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 10px;

            margin-top: auto;
        }

        .details-actions button {
            min-height: 45px;

            border: none;

            border-radius: 10px;

            font-weight: 800;
        }

        /* =========================================================
           EMPTY CART
        ========================================================= */

        .empty-cart {
            padding: 55px 15px;

            text-align: center;

            color: #64748b;
        }

        .empty-cart-icon {
            margin-bottom: 15px;

            font-size: 52px;
        }

        .empty-cart h4 {
            margin-bottom: 7px;

            color: #1e293b;

            font-size: 18px;
        }

        .empty-cart p {
            font-size: 13px;
        }

        /* =========================================================
           CART
        ========================================================= */

        .cart-item {
            display: grid;

            grid-template-columns:
                85px 1fr auto;

            align-items: center;

            gap: 14px;

            margin-bottom: 12px;

            padding: 12px;

            border:
                1px solid #e5eaf1;

            border-radius: 13px;

            background: white;

            transition: all .2s ease;
        }

        .cart-item-image {
            width: 85px;
            height: 85px;

            overflow: hidden;

            border-radius: 10px;

            background: #f1f5f9;
        }

        .cart-item-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;
        }

        .cart-item-name {
            margin-bottom: 5px;

            color: #1e293b;

            font-size: 14px;
            font-weight: 850;
        }

        .cart-item-price {
            color: #2563eb;

            font-size: 12px;
            font-weight: 700;
        }

        .cart-item-total {
            margin-top: 5px;

            color: #111827;

            font-size: 12px;
            font-weight: 800;
        }

        .quantity-controls {
            display: flex;
            align-items: center;

            gap: 7px;

            margin-top: 9px;
        }

        .quantity-btn {
            width: 28px;
            height: 28px;

            display: flex;
            align-items: center;
            justify-content: center;

            border: 1px solid #cbd5e1;
            border-radius: 6px;

            background: #f8fafc;
            color: #1e293b;

            font-weight: 800;
            font-size: 14px;

            transition: all .2s ease;
        }

        .quantity-btn:hover {
            background: #e2e8f0;
        }

        .cart-footer {
            margin-top: 20px;
            padding-top: 18px;

            border-top: 1px solid #e2e8f0;

            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .cart-total-row {
            display: flex;
            justify-content: space-between;
            align-items: center;

            font-size: 18px;
            font-weight: 850;
        }

        .checkout-btn {
            width: 100%;
            height: 48px;

            border: none;
            border-radius: 12px;

            color: white;

            background: linear-gradient(135deg, #2563eb, #1d4ed8);

            font-size: 15px;
            font-weight: 800;

            transition: all .25s ease;
        }

        .checkout-btn:hover {
            box-shadow: 0 8px 20px rgba(37,99,235,.3);
            transform: translateY(-1px);
        }

        /* =========================================================
           RESPONSIVE DESIGN
        ========================================================= */

        @media (max-width: 768px) {
            .search-panel {
                grid-template-columns: 1fr;
            }

            .details-layout {
                grid-template-columns: 1fr;
            }

            .hero {
                padding: 25px;
            }

            .hero h1 {
                font-size: 28px;
            }

            .hero-stats {
                flex-wrap: wrap;
                gap: 15px;
            }
        }

    </style>

</head>

<body>

    <!-- NAVIGATION -->
    <nav>
        <a href="#" class="brand">
            <div class="brand-icon">🛒</div>
            <span>Shop<span>Sphere</span></span>
        </a>

        <div class="nav-links">
            <a href="#electronics">Electronics</a>
            <a href="#fashion">Fashion</a>
            <a href="#home">Home & Living</a>
            <a href="#beauty">Beauty</a>
        </div>

        <div class="nav-actions">
            <button class="icon-btn" id="theme-toggle" title="Toggle Dark/Light Mode">🌙</button>
            <button class="cart-btn" id="open-cart-btn">
                🛒 Cart <span id="cart-count">0</span>
            </button>
        </div>
    </nav>

    <!-- MAIN CONTENT -->
    <main>

        <!-- HERO SECTION -->
        <section class="hero">
            <div class="hero-content">
                <div class="hero-label">⚡ Supercharged Deals</div>
                <h1>Discover Next-Gen Products at Unbeatable Prices.</h1>
                <p>Explore curated high-quality gear, fashion, and home accessories engineered for modern living.</p>

                <div class="hero-stats">
                    <div class="hero-stat">
                        <strong>10k+</strong>
                        <span>Products</span>
                    </div>
                    <div class="hero-stat">
                        <strong>24/7</strong>
                        <span>Support</span>
                    </div>
                    <div class="hero-stat">
                        <strong>99.8%</strong>
                        <span>Satisfaction</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- SEARCH AND FILTER -->
        <section class="search-panel">
            <div class="search-wrapper">
                <span class="search-icon">🔍</span>
                <input type="text" id="search-input" class="search-area" placeholder="Search products, brands, categories...">
                <button id="clear-search-btn" class="clear-search">✕</button>
            </div>

            <select id="category-select" class="category-filter">
                <option value="all">All Categories</option>
                <option value="electronics">Electronics</option>
                <option value="fashion">Fashion</option>
                <option value="home">Home & Living</option>
                <option value="beauty">Beauty</option>
            </select>
        </section>

        <!-- RESULTS BAR -->
        <div class="results-bar">
            <span id="results-count" class="results-text">Showing all items</span>
            <button id="clear-filters-btn" class="clear-filters">Clear Filters</button>
        </div>

        <!-- CATEGORIES & PRODUCTS -->
        <div id="products-container">

            <!-- ELECTRONICS -->
            <section id="electronics" class="category-section">
                <div class="category-header">
                    <div class="category-heading-area">
                        <div class="category-icon">💻</div>
                        <h2>Electronics</h2>
                    </div>
                    <span class="category-badge">Trending</span>
                </div>

                <div class="item-grid">
                    <!-- Product 1 -->
                    <div class="item-card" data-id="1" data-category="electronics" data-name="Wireless Noise-Canceling Headphones" data-price="199.99">
                        <div class="item-img">
                            <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80" alt="Headphones">
                            <span class="image-overlay">Audio</span>
                            <button class="wishlist-btn">♥</button>
                        </div>
                        <div class="item-title">Wireless Noise-Canceling Headphones</div>
                        <div class="product-rating">★★★★★ (4.8)</div>
                        <div class="item-price">$199.99</div>
                        <div class="card-buttons">
                            <button class="btn add-cart-btn">Add to Cart</button>
                            <button class="btn details-btn">Details</button>
                        </div>
                    </div>

                    <!-- Product 2 -->
                    <div class="item-card" data-id="2" data-category="electronics" data-name="Smart Fitness Watch V2" data-price="149.50">
                        <div class="item-img">
                            <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&q=80" alt="Smartwatch">
                            <span class="image-overlay">Wearables</span>
                            <button class="wishlist-btn">♥</button>
                        </div>
                        <div class="item-title">Smart Fitness Watch V2</div>
                        <div class="product-rating">★★★★☆ (4.5)</div>
                        <div class="item-price">$149.50</div>
                        <div class="card-buttons">
                            <button class="btn add-cart-btn">Add to Cart</button>
                            <button class="btn details-btn">Details</button>
                        </div>
                    </div>
                </div>
            </section>

            <!-- FASHION -->
            <section id="fashion" class="category-section">
                <div class="category-header">
                    <div class="category-heading-area">
                        <div class="category-icon">👕</div>
                        <h2>Fashion</h2>
                    </div>
                    <span class="category-badge">Popular</span>
                </div>

                <div class="item-grid">
                    <!-- Product 3 -->
                    <div class="item-card" data-id="3" data-category="fashion" data-name="Classic Minimalist Leather Watch" data-price="89.00">
                        <div class="item-img">
                            <img src="https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=500&q=80" alt="Leather Watch">
                            <span class="image-overlay">Accessories</span>
                            <button class="wishlist-btn">♥</button>
                        </div>
                        <div class="item-title">Classic Minimalist Leather Watch</div>
                        <div class="product-rating">★★★★★ (4.9)</div>
                        <div class="item-price">$89.00</div>
                        <div class="card-buttons">
                            <button class="btn add-cart-btn">Add to Cart</button>
                            <button class="btn details-btn">Details</button>
                        </div>
                    </div>
                </div>
            </section>

        </div>

        <!-- NO RESULTS MESSAGE -->
        <div id="no-results" class="no-results">
            <div class="no-results-icon">🔎</div>
            <h3>No products found</h3>
            <p>Try searching for a different keyword or filter.</p>
        </div>

    </main>

    <!-- PRODUCT DETAILS MODAL -->
    <div id="details-modal" class="modal-overlay">
        <div class="modal-content large">
            <div class="modal-header">
                <h3>Product Overview</h3>
                <button class="close-btn" id="close-details">✕</button>
            </div>
            <div class="details-layout">
                <div class="details-image">
                    <img id="modal-img" src="" alt="Product Detail Image">
                </div>
                <div class="details-info">
                    <span id="modal-category" class="details-category">Category</span>
                    <h2 id="modal-title">Product Title</h2>
                    <div id="modal-rating" class="details-rating">★★★★★</div>
                    <div id="modal-price" class="details-price">$0.00</div>
                    <p id="modal-desc" class="details-description">High quality product engineered to perfection with premium craftsmanship and ultra-durable materials.</p>
                    <div class="details-actions">
                        <button id="modal-add-cart" class="btn add-cart-btn">Add to Cart</button>
                        <button id="modal-buy-now" class="btn buy-now-btn">Buy Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- CART MODAL -->
    <div id="cart-modal" class="modal-overlay">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Your Shopping Cart</h3>
                <button class="close-btn" id="close-cart">✕</button>
            </div>

            <div id="cart-items-container">
                <!-- Cart items will render here via JS -->
                <div class="empty-cart">
                    <div class="empty-cart-icon">🛒</div>
                    <h4>Your Cart is Empty</h4>
                    <p>Looks like you haven't added anything to your cart yet.</p>
                </div>
            </div>

            <div id="cart-summary" class="cart-footer" style="display: none;">
                <div class="cart-total-row">
                    <span>Total:</span>
                    <span id="cart-total-price">$0.00</span>
                </div>
                <button class="checkout-btn">Proceed to Checkout</button>
            </div>
        </div>
    </div>

    <!-- JAVASCRIPT LOGIC -->
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            // State
            let cart = [];
            const darkThemeKey = 'shopsphere_dark_theme';

            // DOM Elements
            const themeToggleBtn = document.getElementById('theme-toggle');
            const searchInput = document.getElementById('search-input');
            const clearSearchBtn = document.getElementById('clear-search-btn');
            const categorySelect = document.getElementById('category-select');
            const clearFiltersBtn = document.getElementById('clear-filters-btn');
            const resultsCount = document.getElementById('results-count');
            const noResults = document.getElementById('no-results');
            const itemCards = document.querySelectorAll('.item-card');
            const categorySections = document.querySelectorAll('.category-section');

            // Cart Elements
            const cartBtn = document.getElementById('open-cart-btn');
            const cartModal = document.getElementById('cart-modal');
            const closeCartBtn = document.getElementById('close-cart');
            const cartItemsContainer = document.getElementById('cart-items-container');
            const cartCountBadge = document.getElementById('cart-count');
            const cartSummary = document.getElementById('cart-summary');
            const cartTotalPrice = document.getElementById('cart-total-price');

            // Details Modal Elements
            const detailsModal = document.getElementById('details-modal');
            const closeDetailsBtn = document.getElementById('close-details');
            const modalImg = document.getElementById('modal-img');
            const modalTitle = document.getElementById('modal-title');
            const modalCategory = document.getElementById('modal-category');
            const modalPrice = document.getElementById('modal-price');
            const modalAddCartBtn = document.getElementById('modal-add-cart');

            let currentActiveModalProduct = null;

            /* =========================================================
               THEME TOGGLE
            ========================================================= */
            if (localStorage.getItem(darkThemeKey) === 'enabled') {
                document.body.classList.add('dark');
                themeToggleBtn.textContent = '☀️';
            }

            themeToggleBtn.addEventListener('click', () => {
                document.body.classList.toggle('dark');
                const isDark = document.body.classList.contains('dark');
                themeToggleBtn.textContent = isDark ? '☀️' : '🌙';
                localStorage.setItem(darkThemeKey, isDark ? 'enabled' : 'disabled');
            });

            /* =========================================================
               SEARCH & FILTERING
            ========================================================= */
            function filterProducts() {
                const query = searchInput.value.trim().toLowerCase();
                const selectedCat = categorySelect.value;
                let visibleCount = 0;

                clearSearchBtn.style.display = query ? 'block' : 'none';
                clearFiltersBtn.style.display = (query || selectedCat !== 'all') ? 'inline-block' : 'none';

                categorySections.forEach(section => {
                    let sectionVisibleCount = 0;
                    const cards = section.querySelectorAll('.item-card');

                    cards.forEach(card => {
                        const name = card.dataset.name.toLowerCase();
                        const cat = card.dataset.category;

                        const matchesQuery = name.includes(query);
                        const matchesCategory = selectedCat === 'all' || cat === selectedCat;

                        if (matchesQuery && matchesCategory) {
                            card.style.display = 'flex';
                            sectionVisibleCount++;
                            visibleCount++;
                        } else {
                            card.style.display = 'none';
                        }
                    });

                    section.style.display = sectionVisibleCount > 0 ? 'block' : 'none';
                });

                noResults.style.display = visibleCount === 0 ? 'block' : 'none';
                resultsCount.textContent = `Showing ${visibleCount} item${visibleCount !== 1 ? 's' : ''}`;
            }

            searchInput.addEventListener('input', filterProducts);
            categorySelect.addEventListener('change', filterProducts);

            clearSearchBtn.addEventListener('click', () => {
                searchInput.value = '';
                filterProducts();
            });

            clearFiltersBtn.addEventListener('click', () => {
                searchInput.value = '';
                categorySelect.value = 'all';
                filterProducts();
            });

            /* =========================================================
               WISHLIST TOGGLE
            ========================================================= */
            document.querySelectorAll('.wishlist-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    btn.classList.toggle('active');
                });
            });

            /* =========================================================
               CART SYSTEM
            ========================================================= */
            function updateCartUI() {
                const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
                cartCountBadge.textContent = totalItems;

                if (cart.length === 0) {
                    cartItemsContainer.innerHTML = `
                        <div class="empty-cart">
                            <div class="empty-cart-icon">🛒</div>
                            <h4>Your Cart is Empty</h4>
                            <p>Looks like you haven't added anything to your cart yet.</p>
                        </div>`;
                    cartSummary.style.display = 'none';
                    return;
                }

                cartSummary.style.display = 'flex';
                let totalCost = 0;

                cartItemsContainer.innerHTML = cart.map(item => {
                    const itemTotal = item.price * item.quantity;
                    totalCost += itemTotal;
                    return `
                        <div class="cart-item">
                            <div class="cart-item-image">
                                <img src="${item.img}" alt="${item.name}">
                            </div>
                            <div>
                                <div class="cart-item-name">${item.name}</div>
                                <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                                <div class="quantity-controls">
                                    <button class="quantity-btn" onclick="changeQty(${item.id}, -1)">-</button>
                                    <span>${item.quantity}</span>
                                    <button class="quantity-btn" onclick="changeQty(${item.id}, 1)">+</button>
                                </div>
                            </div>
                            <div class="cart-item-total">$${itemTotal.toFixed(2)}</div>
                        </div>
                    `;
                }).join('');

                cartTotalPrice.textContent = `$${totalCost.toFixed(2)}`;
            }

            function addToCart(id, name, price, img) {
                const existing = cart.find(i => i.id === id);
                if (existing) {
                    existing.quantity++;
                } else {
                    cart.push({ id, name, price: parseFloat(price), img, quantity: 1 });
                }
                updateCartUI();
            }

            window.changeQty = function (id, delta) {
                const item = cart.find(i => i.id === id);
                if (item) {
                    item.quantity += delta;
                    if (item.quantity <= 0) {
                        cart = cart.filter(i => i.id !== id);
                    }
                    updateCartUI();
                }
            };

            // Card Action Buttons
            itemCards.forEach(card => {
                const id = card.dataset.id;
                const name = card.dataset.name;
                const price = card.dataset.price;
                const img = card.querySelector('img').src;
                const cat = card.dataset.category;

                card.querySelector('.add-cart-btn').addEventListener('click', () => {
                    addToCart(id, name, price, img);
                });

                card.querySelector('.details-btn').addEventListener('click', () => {
                    currentActiveModalProduct = { id, name, price, img, cat };
                    modalImg.src = img;
                    modalTitle.textContent = name;
                    modalPrice.textContent = `$${parseFloat(price).toFixed(2)}`;
                    modalCategory.textContent = cat.toUpperCase();
                    detailsModal.style.display = 'flex';
                });
            });

            modalAddCartBtn.addEventListener('click', () => {
                if (currentActiveModalProduct) {
                    const { id, name, price, img } = currentActiveModalProduct;
                    addToCart(id, name, price, img);
                    detailsModal.style.display = 'none';
                }
            });

            /* =========================================================
               MODAL CONTROLS
            ========================================================= */
            cartBtn.addEventListener('click', () => cartModal.style.display = 'flex');
            closeCartBtn.addEventListener('click', () => cartModal.style.display = 'none');
            closeDetailsBtn.addEventListener('click', () => detailsModal.style.display = 'none');

            window.addEventListener('click', (e) => {
                if (e.target === cartModal) cartModal.style.display = 'none';
                if (e.target === detailsModal) detailsModal.style.display = 'none';
            });
        });
    </script>
</body>

</html>
