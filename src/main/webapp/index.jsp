<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>ShopSphere - Category Showcase</title>

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

            background:
                #f5f7fb;

            color: #172033;

            min-height: 100vh;

            padding-top: 82px;
        }

        button {
            font-family: inherit;
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

            gap: 25px;

            padding: 12px 30px;

            background:
                rgba(255, 255, 255, 0.96);

            backdrop-filter:
                blur(18px);

            -webkit-backdrop-filter:
                blur(18px);

            border-bottom:
                1px solid #e8edf5;

            box-shadow:
                0 4px 25px
                rgba(15, 23, 42, 0.07);

            z-index: 1000;
        }

        /* =========================================================
           brand
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

            letter-spacing: -0.5px;
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
                rgba(37, 99, 235, 0.25);
        }

        .brand span:last-child {
            color: #2563eb;
        }

        /* =========================================================
           NAV LINKS
        ========================================================= */

        .nav-links {
            display: flex;

            align-items: center;

            gap: 7px;

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

            padding: 9px 13px;

            border-radius: 9px;

            transition:
                all 0.25s ease;
        }

        nav a:hover {
            color: #2563eb;

            background: #eff6ff;
        }

        /* =========================================================
           CART BUTTON
        ========================================================= */

        .cart-btn {
            position: relative;

            display: flex;

            align-items: center;

            justify-content: center;

            gap: 8px;

            padding: 11px 17px;

            border: none;

            border-radius: 11px;

            color: #ffffff;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #4f46e5
                );

            font-size: 13px;

            font-weight: 800;

            cursor: pointer;

            white-space: nowrap;

            box-shadow:
                0 7px 18px
                rgba(37, 99, 235, 0.22);

            transition:
                all 0.25s ease;
        }

        .cart-btn:hover {
            transform:
                translateY(-2px);

            box-shadow:
                0 10px 25px
                rgba(37, 99, 235, 0.30);
        }

        .cart-btn:active {
            transform:
                scale(0.96);
        }

        #cart-count {
            min-width: 23px;

            height: 23px;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            border-radius: 7px;

            color: #2563eb;

            background: #ffffff;

            font-size: 11px;

            font-weight: 900;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            position: relative;

            overflow: hidden;

            margin-bottom: 45px;

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
                rgba(30, 41, 59, 0.18);
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
                rgba(255,255,255,0.09);
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
                rgba(255,255,255,0.07);
        }

        .hero-content {
            position: relative;

            z-index: 2;

            max-width: 700px;
        }

        .hero-label {
            display: inline-flex;

            align-items: center;

            gap: 7px;

            margin-bottom: 15px;

            padding: 7px 12px;

            border-radius: 30px;

            background:
                rgba(255,255,255,0.12);

            border:
                1px solid
                rgba(255,255,255,0.15);

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
            max-width: 620px;

            color:
                rgba(255,255,255,0.78);

            font-size: 15px;

            line-height: 1.7;
        }

        .hero-stats {
            position: relative;

            z-index: 2;

            display: flex;

            gap: 25px;

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
                rgba(255,255,255,0.65);

            font-size: 11px;
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

            background:
                #eff6ff;

            font-size: 19px;
        }

        .category-section h2 {
            position: relative;

            color: #111827;

            font-size: 24px;

            font-weight: 850;

            letter-spacing: -0.5px;
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
            padding:
                7px 12px;

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
                    minmax(
                        215px,
                        1fr
                    )
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

            background: #ffffff;

            box-shadow:
                0 5px 20px
                rgba(
                    15,
                    23,
                    42,
                    0.045
                );

            transition:
                transform 0.3s ease,
                box-shadow 0.3s ease,
                border-color 0.3s ease;
        }

        .item-card:hover {
            transform:
                translateY(-7px);

            border-color:
                #d7e3f7;

            box-shadow:
                0 18px 40px
                rgba(
                    15,
                    23,
                    42,
                    0.12
                );
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

            transition:
                opacity 0.3s ease;
        }

        .item-card:hover::before {
            opacity: 1;
        }

        /* =========================================================
           PRODUCT IMAGE
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
                transform 0.45s ease;
        }

        .item-card:hover
        .item-img img {
            transform:
                scale(1.08);
        }

        .image-overlay {
            position: absolute;

            left: 9px;
            bottom: 9px;

            padding:
                5px 9px;

            border-radius: 6px;

            color: #ffffff;

            background:
                rgba(
                    15,
                    23,
                    42,
                    0.72
                );

            backdrop-filter:
                blur(5px);

            font-size: 9px;

            font-weight: 800;
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

        /* =========================================================
           BUTTONS
        ========================================================= */

        .card-buttons {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 7px;

            margin-top: auto;
        }

        .btn {
            min-height: 40px;

            padding:
                8px 5px;

            border: none;

            border-radius: 9px;

            cursor: pointer;

            font-size: 10px;

            font-weight: 800;

            transition:
                all 0.2s ease;
        }

        .btn:active {
            transform:
                scale(0.95);
        }

        .add-cart-btn {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #1d4ed8
                );

            box-shadow:
                0 4px 10px
                rgba(
                    37,
                    99,
                    235,
                    0.15
                );
        }

        .add-cart-btn:hover {
            transform:
                translateY(-1px);

            box-shadow:
                0 7px 15px
                rgba(
                    37,
                    99,
                    235,
                    0.25
                );
        }

        .buy-now-btn {
            color: #92400e;

            background:
                #fef3c7;

            border:
                1px solid #fde68a;
        }

        .buy-now-btn:hover {
            color: #78350f;

            background:
                #fde68a;

            transform:
                translateY(-1px);
        }

        /* =========================================================
           MODAL
        ========================================================= */

        .modal-overlay {
            position: fixed;

            inset: 0;

            display: none;

            align-items: center;

            justify-content: center;

            padding: 20px;

            background:
                rgba(
                    15,
                    23,
                    42,
                    0.68
                );

            backdrop-filter:
                blur(8px);

            -webkit-backdrop-filter:
                blur(8px);

            z-index: 2000;
        }

        .modal-content {
            width: 100%;

            max-width: 650px;

            max-height: 88vh;

            overflow-y: auto;

            padding: 25px;

            border-radius: 20px;

            background:
                #ffffff;

            box-shadow:
                0 30px 80px
                rgba(
                    0,
                    0,
                    0,
                    0.28
                );

            animation:
                modalSlide
                0.25s ease;
        }

        @keyframes modalSlide {

            from {
                opacity: 0;

                transform:
                    translateY(20px)
                    scale(0.97);
            }

            to {
                opacity: 1;

                transform:
                    translateY(0)
                    scale(1);
            }
        }

        /* =========================================================
           MODAL HEADER
        ========================================================= */

        .modal-header {
            display: flex;

            align-items: center;

            justify-content: space-between;

            margin-bottom: 20px;

            padding-bottom: 16px;

            border-bottom:
                1px solid #e5e7eb;
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

            cursor: pointer;

            transition:
                all 0.2s ease;
        }

        .close-btn:hover {
            color: #dc2626;

            background:
                #fee2e2;

            transform:
                rotate(90deg);
        }

        /* =========================================================
           EMPTY CART
        ========================================================= */

        .empty-cart {
            padding:
                55px 15px;

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
           CART ITEM
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

            background:
                #ffffff;

            transition:
                all 0.2s ease;
        }

        .cart-item:hover {
            border-color:
                #d7e2f3;

            box-shadow:
                0 7px 20px
                rgba(
                    15,
                    23,
                    42,
                    0.06
                );
        }

        /* =========================================================
           CART IMAGE
        ========================================================= */

        .cart-item-image {
            width: 85px;
            height: 85px;

            overflow: hidden;

            border-radius: 10px;

            background:
                #f1f5f9;
        }

        .cart-item-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;
        }

        .cart-item-info {
            min-width: 0;
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

        /* =========================================================
           QUANTITY
        ========================================================= */

        .quantity-controls {
            display: flex;

            align-items: center;

            gap: 7px;

            margin-top: 9px;
        }

        .quantity-btn {
            width: 28px;
            height: 28px;

            border: none;

            border-radius: 7px;

            color: #2563eb;

            background:
                #eff6ff;

            font-size: 16px;

            font-weight: 900;

            cursor: pointer;

            transition:
                all 0.2s ease;
        }

        .quantity-btn:hover {
            color: #ffffff;

            background:
                #2563eb;
        }

        .quantity-value {
            min-width: 25px;

            text-align: center;

            color: #1e293b;

            font-size: 13px;

            font-weight: 800;
        }

        /* =========================================================
           CART ACTIONS
        ========================================================= */

        .cart-actions {
            display: flex;

            flex-direction: column;

            gap: 7px;
        }

        .cart-buy-btn,
        .remove-btn {
            padding:
                8px 12px;

            border: none;

            border-radius: 7px;

            cursor: pointer;

            font-size: 11px;

            font-weight: 800;

            white-space: nowrap;

            transition:
                all 0.2s ease;
        }

        .cart-buy-btn {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    #16a34a,
                    #15803d
                );
        }

        .cart-buy-btn:hover {
            transform:
                translateY(-1px);
        }

        .remove-btn {
            color: #dc2626;

            background:
                #fee2e2;
        }

        .remove-btn:hover {
            color: white;

            background:
                #dc2626;
        }

        /* =========================================================
           CART SUMMARY
        ========================================================= */

        .cart-summary {
            margin-top: 20px;

            padding-top: 18px;

            border-top:
                1px solid #e5e7eb;
        }

        .cart-total-row {
            display: flex;

            align-items: center;

            justify-content: space-between;

            color: #1e293b;

            font-size: 19px;

            font-weight: 900;
        }

        #cart-total-price {
            color: #2563eb;
        }

        .checkout-btn {
            width: 100%;

            margin-top: 15px;

            padding: 14px;

            border: none;

            border-radius: 10px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #16a34a,
                    #15803d
                );

            font-size: 14px;

            font-weight: 850;

            cursor: pointer;

            box-shadow:
                0 7px 18px
                rgba(
                    22,
                    163,
                    74,
                    0.18
                );

            transition:
                all 0.2s ease;
        }

        .checkout-btn:hover {
            transform:
                translateY(-2px);

            box-shadow:
                0 10px 23px
                rgba(
                    22,
                    163,
                    74,
                    0.28
                );
        }

        /* =========================================================
           TOAST
        ========================================================= */

        #toast-container {
            position: fixed;

            right: 20px;

            bottom: 20px;

            z-index: 5000;

            display: flex;

            flex-direction: column;

            gap: 10px;
        }

        .toast {
            min-width: 280px;

            max-width: 390px;

            display: flex;

            align-items: center;

            gap: 10px;

            padding:
                13px 16px;

            border-left:
                4px solid #22c55e;

            border-radius: 11px;

            color: #1e293b;

            background:
                #ffffff;

            box-shadow:
                0 12px 35px
                rgba(
                    15,
                    23,
                    42,
                    0.15
                );

            animation:
                toastIn
                0.3s ease;
        }

        .toast.error {
            border-left-color:
                #dc2626;
        }

        .toast-icon {
            font-size: 19px;
        }

        @keyframes toastIn {

            from {
                opacity: 0;

                transform:
                    translateX(30px);
            }

            to {
                opacity: 1;

                transform:
                    translateX(0);
            }
        }

        @keyframes toastOut {

            from {
                opacity: 1;

                transform:
                    translateX(0);
            }

            to {
                opacity: 0;

                transform:
                    translateX(30px);
            }
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            margin-top: 20px;

            padding:
                35px 20px;

            text-align: center;

            color: #cbd5e1;

            background:
                linear-gradient(
                    135deg,
                    #111827,
                    #0f172a
                );
        }

        footer .footer-brand {
            margin-bottom: 7px;

            color: white;

            font-size: 17px;

            font-weight: 850;
        }

        footer p {
            opacity: 0.75;

            font-size: 12px;
        }

        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 1100px) {

            .brand {
                display: none;
            }

            .item-grid {
                grid-template-columns:
                    repeat(
                        auto-fill,
                        minmax(
                            200px,
                            1fr
                        )
                    );
            }

        }

        @media (max-width: 850px) {

            nav {
                padding:
                    11px 16px;

                gap: 12px;
            }

            nav a {
                padding:
                    8px 11px;

                font-size: 11px;
            }

            .cart-btn {
                padding:
                    10px 13px;
            }

            main {
                padding:
                    24px 16px 45px;
            }

            .hero {
                padding:
                    35px 28px;
            }

            .hero h1 {
                font-size: 32px;
            }

            .item-grid {
                grid-template-columns:
                    repeat(
                        auto-fill,
                        minmax(
                            185px,
                            1fr
                        )
                    );
            }

        }

        @media (max-width: 600px) {

            body {
                padding-top: 126px;
            }

            nav {
                flex-direction: column;

                align-items: stretch;

                min-height: auto;

                padding:
                    10px 12px;
            }

            .nav-links {
                width: 100%;
            }

            .cart-btn {
                width: 100%;
            }

            .hero {
                padding:
                    30px 22px;

                border-radius: 18px;

                margin-bottom: 35px;
            }

            .hero h1 {
                font-size: 27px;
            }

            .hero p {
                font-size: 13px;
            }

            .hero-stats {
                gap: 18px;
            }

            .hero-stat strong {
                font-size: 17px;
            }

            .category-section {
                margin-bottom: 55px;
            }

            .category-section h2 {
                font-size: 20px;
            }

            .category-icon {
                width: 36px;
                height: 36px;

                font-size: 16px;
            }

            .category-badge {
                font-size: 9px;

                padding:
                    6px 9px;
            }

            .item-grid {
                grid-template-columns:
                    repeat(2, 1fr);

                gap: 10px;
            }

            .item-card {
                padding: 9px;

                border-radius: 12px;
            }

            .item-img {
                height: 130px;
            }

            .item-title {
                min-height: 38px;

                font-size: 13px;
            }

            .item-price {
                font-size: 16px;
            }

            .card-buttons {
                grid-template-columns: 1fr;

                gap: 5px;
            }

            .modal-content {
                padding: 18px;

                max-height: 90vh;

                border-radius: 16px;
            }

            .cart-item {
                grid-template-columns:
                    65px 1fr;

                gap: 10px;
            }

            .cart-item-image {
                width: 65px;
                height: 65px;
            }

            .cart-actions {
                grid-column:
                    1 / -1;

                flex-direction: row;
            }

            .cart-buy-btn,
            .remove-btn {
                flex: 1;
            }

            #toast-container {
                left: 12px;
                right: 12px;
                bottom: 12px;
            }

            .toast {
                min-width: 0;

                width: 100%;
            }

        }

        @media (max-width: 400px) {

            .item-grid {
                grid-template-columns:
                    1fr;
            }

            .item-img {
                height: 170px;
            }

            .card-buttons {
                grid-template-columns:
                    1fr 1fr;
            }

        }

    </style>

</head>


<body>


    <!-- =========================================================
         NAVIGATION
    ========================================================= -->

    <nav>

        <a
            href="#top"
            class="brand">

            <span class="brand-icon">
                🛍️
            </span>

            <span>
                Shop<span>Sphere</span>
            </span>

        </a>


        <div
            class="nav-links"
            id="navbar">
        </div>


        <button
            class="cart-btn"
            onclick="toggleCartModal(true)">

            🛒 Cart

            <span id="cart-count">
                0
            </span>

        </button>

    </nav>


    <!-- =========================================================
         MAIN
    ========================================================= -->

    <main id="top">


        <!-- =====================================================
             HERO
        ===================================================== -->

        <section class="hero">

            <div class="hero-content">

                <div class="hero-label">
                    ✨ Welcome to ShopSphere
                </div>

                <h1>
                    Everything you need,
                    all in one place.
                </h1>

                <p>
                    Explore electronics, fashion, home essentials,
                    books, sports products, beauty items and more.
                    Find your favorites and add them to your cart.
                </p>


                <div class="hero-stats">

                    <div class="hero-stat">

                        <strong>
                            12
                        </strong>

                        <span>
                            Categories
                        </span>

                    </div>


                    <div class="hero-stat">

                        <strong>
                            240+
                        </strong>

                        <span>
                            Products
                        </span>

                    </div>


                    <div class="hero-stat">

                        <strong>
                            24/7
                        </strong>

                        <span>
                            Shopping
                        </span>

                    </div>

                </div>

            </div>

        </section>


        <!-- =====================================================
             PRODUCTS
        ===================================================== -->

        <div id="content-container">
        </div>

    </main>


    <!-- =========================================================
         CART MODAL
    ========================================================= -->

    <div
        class="modal-overlay"
        id="cart-modal"
        onclick="handleModalClick(event)">


        <div
            class="modal-content"
            id="modal-content">


            <div class="modal-header">

                <h3>
                    🛒 Your Cart
                </h3>


                <button
                    class="close-btn"
                    onclick="toggleCartModal(false)"
                    aria-label="Close cart">

                    &times;

                </button>

            </div>


            <div
                id="cart-items-container">
            </div>


            <div class="cart-summary">

                <div class="cart-total-row">

                    <span>
                        Total
                    </span>

                    <span id="cart-total-price">
                        $0.00
                    </span>

                </div>


                <button
                    class="checkout-btn"
                    onclick="checkout()">

                    💳 Proceed to Checkout

                </button>

            </div>

        </div>

    </div>


    <!-- =========================================================
         TOAST
    ========================================================= -->

    <div id="toast-container">
    </div>


    <!-- =========================================================
         FOOTER
    ========================================================= -->

    <footer>

        <div class="footer-brand">
            🛍️ ShopSphere
        </div>

        <p>
            &copy; 2026 ShopSphere.
            All rights reserved.
        </p>

    </footer>


    <script>

        /* =========================================================
           CATEGORY DATA
        ========================================================= */

        const categoriesData = [

            {
                id: "electronics",
                name: "Electronics",
                icon: "💻"
            },

            {
                id: "clothing",
                name: "Clothing",
                icon: "👕"
            },

            {
                id: "home",
                name: "Home & Kitchen",
                icon: "🏠"
            },

            {
                id: "books",
                name: "Books",
                icon: "📚"
            },

            {
                id: "sports",
                name: "Sports",
                icon: "⚽"
            },

            {
                id: "beauty",
                name: "Beauty",
                icon: "💄"
            },

            {
                id: "toys",
                name: "Toys & Games",
                icon: "🧸"
            },

            {
                id: "groceries",
                name: "Groceries",
                icon: "🛒"
            },

            {
                id: "footwear",
                name: "Footwear",
                icon: "👟"
            },

            {
                id: "automotive",
                name: "Automotive",
                icon: "🚗"
            },

            {
                id: "jewellery",
                name: "Jewellery",
                icon: "💎"
            },

            {
                id: "stationery",
                name: "Stationery",
                icon: "✏️"
            }

        ];


        /* =========================================================
           PRODUCT DATA
        ========================================================= */

        const categoryItems = {

            electronics: [
                "Laptop",
                "Smartphone",
                "Tablet",
                "Headphones",
                "Smart Watch",
                "Bluetooth Speaker",
                "Keyboard",
                "Wireless Mouse",
                "Digital Camera",
                "Power Bank",
                "Monitor",
                "Gaming Laptop",
                "USB Hub",
                "Webcam",
                "Microphone",
                "Earbuds",
                "Smart TV",
                "Printer",
                "External Hard Drive",
                "SSD Drive"
            ],

            clothing: [
                "T-Shirt",
                "Jeans",
                "Formal Shirt",
                "Jacket",
                "Hoodie",
                "Sweater",
                "Shorts",
                "Track Pants",
                "Saree",
                "Kurta",
                "Blazer",
                "Cargo Pants",
                "Polo Shirt",
                "Denim Jacket",
                "Skirt",
                "Dress",
                "Lehenga",
                "Ethnic Wear",
                "Winter Coat",
                "Sports T-Shirt"
            ],

            home: [
                "Dining Table",
                "Sofa",
                "Bed Sheet",
                "Curtains",
                "Coffee Maker",
                "Mixer Grinder",
                "Dinner Set",
                "Wall Clock",
                "Table Lamp",
                "Storage Box",
                "Pillow",
                "Blanket",
                "Bedsheet Set",
                "Kitchen Rack",
                "Water Bottle",
                "Cookware Set",
                "Frying Pan",
                "Pressure Cooker",
                "Floor Mat",
                "Cushion"
            ],

            books: [
                "Java Programming",
                "Python Programming",
                "JavaScript Guide",
                "HTML & CSS",
                "Spring Boot",
                "Data Structures",
                "Database Fundamentals",
                "Computer Networks",
                "Software Engineering",
                "Web Development",
                "Machine Learning",
                "Artificial Intelligence",
                "Cloud Computing",
                "Operating Systems",
                "Computer Architecture",
                "React Development",
                "Node.js Guide",
                "C Programming",
                "C++ Programming",
                "Algorithms"
            ],

            sports: [
                "Football",
                "Cricket Bat",
                "Cricket Ball",
                "Tennis Racket",
                "Basketball",
                "Badminton Racket",
                "Yoga Mat",
                "Skipping Rope",
                "Gym Gloves",
                "Sports Shoes",
                "Volleyball",
                "Table Tennis Bat",
                "Hockey Stick",
                "Boxing Gloves",
                "Fitness Band",
                "Dumbbells",
                "Football Shoes",
                "Cricket Helmet",
                "Tennis Ball",
                "Gym Bag"
            ],

            beauty: [
                "Face Wash",
                "Moisturizer",
                "Sunscreen",
                "Shampoo",
                "Conditioner",
                "Body Lotion",
                "Lip Balm",
                "Perfume",
                "Face Cream",
                "Hair Oil",
                "Face Serum",
                "Body Wash",
                "Hair Serum",
                "Makeup Kit",
                "Foundation",
                "Mascara",
                "Lipstick",
                "Face Mask",
                "Hand Cream",
                "Beauty Brush"
            ],

            toys: [
                "Remote Control Car",
                "Building Blocks",
                "Toy Train",
                "Teddy Bear",
                "Puzzle Game",
                "Toy Robot",
                "Doll House",
                "Board Game",
                "Action Figure",
                "Educational Kit",
                "Toy Helicopter",
                "Toy Gun",
                "Stuffed Animal",
                "Coloring Set",
                "Magic Cube",
                "Play Kitchen",
                "Toy Dinosaur",
                "Mini Piano",
                "Kids Bicycle",
                "Toy Truck"
            ],

            groceries: [
                "Rice",
                "Wheat Flour",
                "Sugar",
                "Salt",
                "Cooking Oil",
                "Tea",
                "Coffee",
                "Biscuits",
                "Pasta",
                "Breakfast Cereal",
                "Toor Dal",
                "Moong Dal",
                "Chickpeas",
                "Corn Flakes",
                "Oats",
                "Noodles",
                "Tomato Ketchup",
                "Jam",
                "Spices",
                "Dry Fruits"
            ],

            footwear: [
                "Running Shoes",
                "Casual Shoes",
                "Formal Shoes",
                "Sneakers",
                "Sandals",
                "Slippers",
                "Boots",
                "Sports Shoes",
                "Loafers",
                "Flip Flops",
                "Hiking Shoes",
                "School Shoes",
                "Party Shoes",
                "Canvas Shoes",
                "Leather Shoes",
                "Walking Shoes",
                "Training Shoes",
                "Kids Shoes",
                "Heels",
                "Ethnic Footwear"
            ],

            automotive: [
                "Car Cover",
                "Car Vacuum Cleaner",
                "Air Freshener",
                "Tyre Inflator",
                "Dashboard Camera",
                "Car Phone Holder",
                "Seat Cushion",
                "Car Cleaning Kit",
                "Emergency Kit",
                "Sun Shade",
                "Car Charger",
                "Steering Cover",
                "Car Perfume",
                "Floor Mats",
                "LED Car Lights",
                "Jump Starter",
                "Tool Kit",
                "Windshield Cleaner",
                "Bike Cover",
                "Bike Phone Holder"
            ],

            jewellery: [
                "Gold Necklace",
                "Silver Necklace",
                "Diamond Ring",
                "Gold Ring",
                "Bracelet",
                "Bangle",
                "Earrings",
                "Pendant",
                "Anklet",
                "Jewellery Box",
                "Pearl Necklace",
                "Gold Earrings",
                "Silver Ring",
                "Charm Bracelet",
                "Diamond Pendant",
                "Gold Chain",
                "Silver Bracelet",
                "Nose Pin",
                "Toe Ring",
                "Jewellery Set"
            ],

            stationery: [
                "Notebook",
                "Ball Pen",
                "Pencil",
                "Eraser",
                "Sharpener",
                "Marker",
                "Highlighter",
                "Geometry Box",
                "Sticky Notes",
                "File Folder",
                "Drawing Book",
                "Sketch Pens",
                "Color Pencils",
                "Stapler",
                "Paper Clips",
                "Calculator",
                "Whiteboard Marker",
                "Diary",
                "Glue Stick",
                "Scissors"
            ]

        };


        /* =========================================================
           PRODUCT IMAGES
        ========================================================= */

        const productImages = {

            "Laptop":
                "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=700&q=80",

            "Smartphone":
                "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=80",

            "Tablet":
                "https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=700&q=80",

            "Headphones":
                "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80",

            "Smart Watch":
                "https://images.unsplash.com/photo-1544117519-31a4b719223d?auto=format&fit=crop&w=700&q=80",

            "Bluetooth Speaker":
                "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=700&q=80",

            "Keyboard":
                "https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=700&q=80",

            "Wireless Mouse":
                "https://images.unsplash.com/photo-1527814050087-3793815479db?auto=format&fit=crop&w=700&q=80",

            "Digital Camera":
                "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80",

            "Power Bank":
                "https://images.unsplash.com/photo-1609592424528-0f4c48b4a9f0?auto=format&fit=crop&w=700&q=80",

            "T-Shirt":
                "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80",

            "Jeans":
                "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=80",

            "Formal Shirt":
                "https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?auto=format&fit=crop&w=700&q=80",

            "Jacket":
                "https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=700&q=80",

            "Hoodie":
                "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=700&q=80",

            "Saree":
                "https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=700&q=80",

            "Kurta":
                "https://images.unsplash.com/photo-1597983073493-88cd35cf93a0?auto=format&fit=crop&w=700&q=80",

            "Sofa":
                "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=700&q=80",

            "Dining Table":
                "https://images.unsplash.com/photo-1618220179428-22790b461013?auto=format&fit=crop&w=700&q=80",

            "Coffee Maker":
                "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=700&q=80",

            "Table Lamp":
                "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=80",

            "Football":
                "https://images.unsplash.com/photo-1579952363873-27f3bade9f55?auto=format&fit=crop&w=700&q=80",

            "Basketball":
                "https://images.unsplash.com/photo-1546519638-68e109498ffc?auto=format&fit=crop&w=700&q=80",

            "Tennis Racket":
                "https://images.unsplash.com/photo-1622279457486-62dcc4a431d6?auto=format&fit=crop&w=700&q=80",

            "Yoga Mat":
                "https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?auto=format&fit=crop&w=700&q=80",

            "Running Shoes":
                "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80",

            "Sneakers":
                "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?auto=format&fit=crop&w=700&q=80",

            "Sandals":
                "https://images.unsplash.com/photo-1603487742131-4160ec999306?auto=format&fit=crop&w=700&q=80",

            "Perfume":
                "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=80",

            "Lipstick":
                "https://images.unsplash.com/photo-1586495777744-4413f21062fa?auto=format&fit=crop&w=700&q=80",

            "Face Cream":
                "https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=700&q=80",

            "Teddy Bear":
                "https://images.unsplash.com/photo-1559454403-b8fb88521f11?auto=format&fit=crop&w=700&q=80",

            "Building Blocks":
                "https://images.unsplash.com/photo-1587654780291-39c9404d746b?auto=format&fit=crop&w=700&q=80",

            "Puzzle Game":
                "https://images.unsplash.com/photo-1606503153255-59d8b8b8218f?auto=format&fit=crop&w=700&q=80",

            "Rice":
                "https://images.unsplash.com/photo-1586201375761-83865001e31c?auto=format&fit=crop&w=700&q=80",

            "Coffee":
                "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=700&q=80",

            "Biscuits":
                "https://images.unsplash.com/photo-1558961363-fa8fdf82db35?auto=format&fit=crop&w=700&q=80",

            "Gold Necklace":
                "https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?auto=format&fit=crop&w=700&q=80",

            "Diamond Ring":
                "https://images.unsplash.com/photo-1605100804763-247f67b3557e?auto=format&fit=crop&w=700&q=80",

            "Bracelet":
                "https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=700&q=80",

            "Notebook":
                "https://images.unsplash.com/photo-1531346680769-a1d79b57de5b?auto=format&fit=crop&w=700&q=80",

            "Ball Pen":
                "https://images.unsplash.com/photo-1585336261022-680e295ce3fe?auto=format&fit=crop&w=700&q=80",

            "Pencil":
                "https://images.unsplash.com/photo-1516962215378-7fa2e137ae93?auto=format&fit=crop&w=700&q=80"

        };


        const fallbackImage =
            "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80";


        function getImageForProduct(
            productName
        ) {

            return (
                productImages[
                    productName
                ] ||
                fallbackImage
            );

        }


        /* =========================================================
           APPLICATION VARIABLES
        ========================================================= */

        let cart = [];


        const navbar =
            document.getElementById(
                "navbar"
            );


        const contentContainer =
            document.getElementById(
                "content-container"
            );


        /* =========================================================
           PRICE
        ========================================================= */

        function generatePrice() {

            return parseFloat(

                (
                    Math.random() *
                    150 +
                    10
                ).toFixed(2)

            );

        }


        /* =========================================================
           INITIALIZE APPLICATION
        ========================================================= */

        function initApp() {

            categoriesData.forEach(
                cat => {

                    /* NAV LINK */

                    const navLink =
                        document.createElement(
                            "a"
                        );

                    navLink.href =
                        `#${cat.id}`;

                    navLink.textContent =
                        cat.name;

                    navbar.appendChild(
                        navLink
                    );


                    /* CATEGORY SECTION */

                    const section =
                        document.createElement(
                            "section"
                        );

                    section.id =
                        cat.id;

                    section.className =
                        "category-section";


                    /* CATEGORY HEADER */

                    const categoryHeader =
                        document.createElement(
                            "div"
                        );

                    categoryHeader.className =
                        "category-header";


                    const headingArea =
                        document.createElement(
                            "div"
                        );

                    headingArea.className =
                        "category-heading-area";


                    const icon =
                        document.createElement(
                            "div"
                        );

                    icon.className =
                        "category-icon";

                    icon.textContent =
                        cat.icon;


                    const heading =
                        document.createElement(
                            "h2"
                        );

                    heading.textContent =
                        cat.name;


                    headingArea.appendChild(
                        icon
                    );

                    headingArea.appendChild(
                        heading
                    );


                    const badge =
                        document.createElement(
                            "span"
                        );

                    badge.className =
                        "category-badge";

                    badge.textContent =
                        `${categoryItems[cat.id].length} Products`;


                    categoryHeader.appendChild(
                        headingArea
                    );

                    categoryHeader.appendChild(
                        badge
                    );


                    section.appendChild(
                        categoryHeader
                    );


                    /* PRODUCT GRID */

                    const grid =
                        document.createElement(
                            "div"
                        );

                    grid.className =
                        "item-grid";


                    categoryItems[
                        cat.id
                    ].forEach(
                        (
                            itemName
                        ) => {

                            const card =
                                document.createElement(
                                    "div"
                                );

                            card.className =
                                "item-card";


                            const price =
                                generatePrice();


                            const image =
                                getImageForProduct(
                                    itemName
                                );


                            card.innerHTML = `

                                <div class="item-img">

                                    <img
                                        src="${image}"
                                        alt="${itemName}"
                                        loading="lazy"
                                        onerror="this.src='${fallbackImage}'">

                                    <div class="image-overlay">
                                        ${cat.name}
                                    </div>

                                </div>


                                <div class="item-title">
                                    ${itemName}
                                </div>


                                <div class="item-price">
                                    $${price.toFixed(2)}
                                </div>


                                <div class="card-buttons">

                                    <button
                                        class="btn add-cart-btn"
                                        onclick="addToCart(
                                            '${escapeQuotes(itemName)}',
                                            ${price},
                                            '${escapeQuotes(image)}'
                                        )">

                                        🛒 Add to Cart

                                    </button>


                                    <button
                                        class="btn buy-now-btn"
                                        onclick="buyNow(
                                            '${escapeQuotes(itemName)}',
                                            ${price},
                                            '${escapeQuotes(image)}'
                                        )">

                                        ⚡ Buy Now

                                    </button>

                                </div>

                            `;


                            grid.appendChild(
                                card
                            );

                        }
                    );


                    section.appendChild(
                        grid
                    );


                    contentContainer.appendChild(
                        section
                    );

                }
            );


            updateCartUI();

        }


        /* =========================================================
           ESCAPE QUOTES
        ========================================================= */

        function escapeQuotes(
            text
        ) {

            return text
                .replace(
                    /\\/g,
                    "\\\\"
                )
                .replace(
                    /'/g,
                    "\\'"
                );

        }


        /* =========================================================
           ADD TO CART
        ========================================================= */

        function addToCart(
            name,
            price,
            image
        ) {

            const existingItem =
                cart.find(
                    item =>
                        item.name === name
                );


            if (existingItem) {

                existingItem.quantity++;

            } else {

                cart.push({

                    name:
                        name,

                    price:
                        price,

                    image:
                        image,

                    quantity:
                        1

                });

            }


            updateCartUI();


            showToast(
                `🛒 ${name} added to your cart!`
            );

        }


        /* =========================================================
           BUY NOW
        ========================================================= */

        function buyNow(
            name,
            price,
            image
        ) {

            showToast(
                `🎉 Order placed for ${name} — $${price.toFixed(2)}`
            );

        }


        /* =========================================================
           BUY CART ITEM
        ========================================================= */

        function buyCartItem(
            index
        ) {

            const item =
                cart[index];


            if (!item) {
                return;
            }


            const total =
                item.price *
                item.quantity;


            showToast(
                `🎉 Order placed for ${item.name} × ${item.quantity} — $${total.toFixed(2)}`
            );


            cart.splice(
                index,
                1
            );


            updateCartUI();


            if (
                cart.length === 0
            ) {

                setTimeout(
                    () => {

                        toggleCartModal(
                            false
                        );

                    },
                    700
                );

            }

        }


        /* =========================================================
           REMOVE
        ========================================================= */

        function removeFromCart(
            index
        ) {

            if (
                index < 0 ||
                index >= cart.length
            ) {
                return;
            }


            const removedItem =
                cart[index];


            cart.splice(
                index,
                1
            );


            updateCartUI();


            showToast(
                `🗑️ ${removedItem.name} removed from cart.`
            );

        }


        /* =========================================================
           INCREASE
        ========================================================= */

        function increaseQuantity(
            index
        ) {

            if (!cart[index]) {
                return;
            }


            cart[index].quantity++;


            updateCartUI();

        }


        /* =========================================================
           DECREASE
        ========================================================= */

        function decreaseQuantity(
            index
        ) {

            if (!cart[index]) {
                return;
            }


            cart[index].quantity--;


            if (
                cart[index].quantity <= 0
            ) {

                const itemName =
                    cart[index].name;


                cart.splice(
                    index,
                    1
                );


                showToast(
                    `🗑️ ${itemName} removed from cart.`
                );

            }


            updateCartUI();

        }


        /* =========================================================
           CHECKOUT
        ========================================================= */

        function checkout() {

            if (
                cart.length === 0
            ) {

                showToast(
                    "Your cart is empty!",
                    true
                );

                return;

            }


            let total = 0;


            cart.forEach(
                item => {

                    total +=
                        item.price *
                        item.quantity;

                }
            );


            showToast(
                `🎉 Order placed successfully! Total: $${total.toFixed(2)}`
            );


            cart = [];


            updateCartUI();


            setTimeout(
                () => {

                    toggleCartModal(
                        false
                    );

                },
                800
            );

        }


        /* =========================================================
           UPDATE CART
        ========================================================= */

        function updateCartUI() {

            const totalQuantity =
                cart.reduce(
                    (
                        total,
                        item
                    ) => {

                        return (
                            total +
                            item.quantity
                        );

                    },
                    0
                );


            document.getElementById(
                "cart-count"
            ).textContent =
                totalQuantity;


            const cartContainer =
                document.getElementById(
                    "cart-items-container"
                );


            const totalContainer =
                document.getElementById(
                    "cart-total-price"
                );


            if (
                cart.length === 0
            ) {

                cartContainer.innerHTML = `

                    <div class="empty-cart">

                        <div class="empty-cart-icon">
                            🛒
                        </div>

                        <h4>
                            Your cart is empty
                        </h4>

                        <p>
                            Add some products to get started.
                        </p>

                    </div>

                `;


                totalContainer.textContent =
                    "$0.00";


                return;

            }


            cartContainer.innerHTML =
                "";


            let total = 0;


            cart.forEach(
                (
                    item,
                    index
                ) => {

                    const itemTotal =
                        item.price *
                        item.quantity;


                    total +=
                        itemTotal;


                    const itemDiv =
                        document.createElement(
                            "div"
                        );


                    itemDiv.className =
                        "cart-item";


                    itemDiv.innerHTML = `

                        <div class="cart-item-image">

                            <img
                                src="${item.image}"
                                alt="${item.name}"
                                onerror="this.src='${fallbackImage}'">

                        </div>


                        <div class="cart-item-info">

                            <div class="cart-item-name">
                                ${item.name}
                            </div>


                            <div class="cart-item-price">
                                $${item.price.toFixed(2)} each
                            </div>


                            <div class="cart-item-total">
                                Subtotal:
                                $${itemTotal.toFixed(2)}
                            </div>


                            <div class="quantity-controls">

                                <button
                                    class="quantity-btn"
                                    onclick="decreaseQuantity(${index})">

                                    −

                                </button>


                                <span class="quantity-value">
                                    ${item.quantity}
                                </span>


                                <button
                                    class="quantity-btn"
                                    onclick="increaseQuantity(${index})">

                                    +

                                </button>

                            </div>

                        </div>


                        <div class="cart-actions">

                            <button
                                class="cart-buy-btn"
                                onclick="buyCartItem(${index})">

                                ⚡ Buy Now

                            </button>


                            <button
                                class="remove-btn"
                                onclick="removeFromCart(${index})">

                                🗑️ Remove

                            </button>

                        </div>

                    `;


                    cartContainer.appendChild(
                        itemDiv
                    );

                }
            );


            totalContainer.textContent =
                `$${total.toFixed(2)}`;

        }


        /* =========================================================
           CART MODAL
        ========================================================= */

        function toggleCartModal(
            open
        ) {

            const modal =
                document.getElementById(
                    "cart-modal"
                );


            if (open) {

                updateCartUI();


                modal.style.display =
                    "flex";


                document.body.style.overflow =
                    "hidden";

            } else {

                modal.style.display =
                    "none";


                document.body.style.overflow =
                    "";

            }

        }


        /* =========================================================
           MODAL BACKDROP
        ========================================================= */

        function handleModalClick(
            event
        ) {

            const modal =
                document.getElementById(
                    "cart-modal"
                );


            if (
                event.target === modal
            ) {

                toggleCartModal(
                    false
                );

            }

        }


        /* =========================================================
           ESCAPE KEY
        ========================================================= */

        document.addEventListener(
            "keydown",
            function(event) {

                if (
                    event.key === "Escape"
                ) {

                    toggleCartModal(
                        false
                    );

                }

            }
        );


        /* =========================================================
           TOAST
        ========================================================= */

        function showToast(
            message,
            isError = false
        ) {

            const container =
                document.getElementById(
                    "toast-container"
                );


            const toast =
                document.createElement(
                    "div"
                );


            toast.className =
                "toast";


            if (isError) {

                toast.classList.add(
                    "error"
                );

            }


            toast.innerHTML = `

                <span class="toast-icon">

                    ${isError
                        ? "⚠️"
                        : "✅"}

                </span>


                <span>
                    ${message}
                </span>

            `;


            container.appendChild(
                toast
            );


            setTimeout(
                () => {

                    toast.style.animation =
                        "toastOut 0.3s ease";


                    setTimeout(
                        () => {

                            toast.remove();

                        },
                        300
                    );

                },
                2500
            );

        }


        /* =========================================================
           START
        ========================================================= */

        window.addEventListener(
            "DOMContentLoaded",
            initApp
        );

    </script>

</body>

</html>
