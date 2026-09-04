<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Category Showcase App</title>

    <style>

        /* =========================================================
           GLOBAL STYLES
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
                'Segoe UI',
                Tahoma,
                Geneva,
                Verdana,
                sans-serif;

            background:
                linear-gradient(
                    135deg,
                    #f8faff 0%,
                    #f4f7fb 50%,
                    #eef3ff 100%
                );

            color: #333;

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

            background:
                rgba(255, 255, 255, 0.95);

            backdrop-filter: blur(15px);

            -webkit-backdrop-filter: blur(15px);

            box-shadow:
                0 4px 25px
                rgba(0, 0, 0, 0.08);

            display: flex;

            justify-content:
                space-between;

            align-items: center;

            gap: 20px;

            padding: 12px 30px;

            z-index: 1000;
        }


        .nav-links {

            display: flex;

            align-items: center;

            gap: 10px;

            overflow-x: auto;

            scrollbar-width: none;

            flex: 1;

            padding: 3px;
        }


        .nav-links::-webkit-scrollbar {
            display: none;
        }


        nav a {

            text-decoration: none;

            color: #4b5563;

            font-weight: 600;

            font-size: 14px;

            white-space: nowrap;

            padding: 9px 15px;

            border-radius: 25px;

            background: #f1f5f9;

            border: 1px solid transparent;

            transition:
                all 0.25s ease;
        }


        nav a:hover {

            background:
                linear-gradient(
                    135deg,
                    #007bff,
                    #0056d6
                );

            color: #ffffff;

            transform:
                translateY(-2px);

            box-shadow:
                0 5px 12px
                rgba(
                    0,
                    123,
                    255,
                    0.25
                );
        }


        /* =========================================================
           CART BUTTON
        ========================================================= */

        .cart-btn {

            position: relative;

            background:
                linear-gradient(
                    135deg,
                    #22c55e,
                    #16a34a
                );

            color: white;

            border: none;

            padding:
                11px 18px;

            border-radius: 25px;

            font-weight: 700;

            cursor: pointer;

            display: flex;

            align-items: center;

            justify-content: center;

            gap: 8px;

            transition:
                all 0.25s ease;

            white-space: nowrap;

            box-shadow:
                0 5px 15px
                rgba(
                    34,
                    197,
                    94,
                    0.25
                );
        }


        .cart-btn:hover {

            transform:
                translateY(-2px);

            background:
                linear-gradient(
                    135deg,
                    #16a34a,
                    #15803d
                );

            box-shadow:
                0 8px 20px
                rgba(
                    34,
                    197,
                    94,
                    0.35
                );
        }


        .cart-btn:active {
            transform: scale(0.96);
        }


        #cart-count {

            min-width: 23px;

            height: 23px;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            background: #ffffff;

            color: #16a34a;

            border-radius: 50%;

            font-size: 12px;

            font-weight: 800;

            padding: 2px 5px;
        }


        /* =========================================================
           MAIN
        ========================================================= */

        main {

            max-width: 1250px;

            margin: 0 auto;

            padding:
                30px 20px 50px;
        }


        /* =========================================================
           CATEGORY
        ========================================================= */

        .category-section {

            margin-bottom: 70px;

            scroll-margin-top: 100px;
        }


        .category-header {

            display: flex;

            align-items: center;

            justify-content:
                space-between;

            margin-bottom: 22px;
        }


        .category-section h2 {

            font-size: 26px;

            color: #172033;

            position: relative;

            padding-bottom: 8px;
        }


        .category-section h2::after {

            content: "";

            position: absolute;

            left: 0;

            bottom: 0;

            width: 55px;

            height: 4px;

            border-radius: 10px;

            background:
                linear-gradient(
                    90deg,
                    #007bff,
                    #7c3aed
                );
        }


        .category-badge {

            background: #eaf2ff;

            color: #0066d6;

            padding:
                7px 13px;

            border-radius: 20px;

            font-size: 12px;

            font-weight: 700;
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
                        210px,
                        1fr
                    )
                );

            gap: 22px;
        }


        /* =========================================================
           PRODUCT CARD
        ========================================================= */

        .item-card {

            position: relative;

            background:
                rgba(
                    255,
                    255,
                    255,
                    0.98
                );

            border-radius: 16px;

            padding: 15px;

            box-shadow:
                0 6px 25px
                rgba(
                    31,
                    41,
                    55,
                    0.07
                );

            border:
                1px solid
                rgba(
                    226,
                    232,
                    240,
                    0.9
                );

            transition:
                transform 0.3s ease,
                box-shadow 0.3s ease;

            display: flex;

            flex-direction: column;

            justify-content:
                space-between;

            overflow: hidden;
        }


        .item-card::before {

            content: "";

            position: absolute;

            top: 0;
            left: 0;

            width: 100%;
            height: 4px;

            background:
                linear-gradient(
                    90deg,
                    #007bff,
                    #7c3aed,
                    #ec4899
                );

            opacity: 0;

            transition:
                opacity 0.3s ease;
        }


        .item-card:hover {

            transform:
                translateY(-7px);

            box-shadow:
                0 15px 35px
                rgba(
                    31,
                    41,
                    55,
                    0.13
                );
        }


        .item-card:hover::before {
            opacity: 1;
        }


        /* =========================================================
           PRODUCT IMAGE
        ========================================================= */

        .item-img {

            width: 100%;

            height: 170px;

            background:
                linear-gradient(
                    135deg,
                    #eef5ff,
                    #f4f0ff
                );

            border-radius: 12px;

            display: flex;

            align-items: center;

            justify-content: center;

            color: #64748b;

            font-size: 13px;

            font-weight: 700;

            margin-bottom: 15px;

            position: relative;

            overflow: hidden;
        }


        .item-img img {

            width: 100%;

            height: 100%;

            object-fit: cover;

            display: block;

            transition:
                transform 0.35s ease;
        }


        .item-card:hover
        .item-img img {

            transform: scale(1.07);
        }


        .image-overlay {

            position: absolute;

            left: 0;
            bottom: 0;

            width: 100%;

            padding: 8px 10px;

            background:
                linear-gradient(
                    transparent,
                    rgba(
                        0,
                        0,
                        0,
                        0.55
                    )
                );

            color: white;

            font-size: 12px;

            text-align: center;

            font-weight: 700;
        }


        /* =========================================================
           PRODUCT INFO
        ========================================================= */

        .item-title {

            font-size: 16px;

            font-weight: 700;

            margin-bottom: 7px;

            color: #1e293b;

            min-height: 40px;

            line-height: 1.4;
        }


        .item-price {

            font-size: 18px;

            color: #007bff;

            font-weight: 800;

            margin-bottom: 14px;
        }


        /* =========================================================
           BUTTONS
        ========================================================= */

        .card-buttons {

            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 8px;
        }


        .btn {

            min-height: 40px;

            padding:
                8px 6px;

            border: none;

            border-radius: 9px;

            cursor: pointer;

            font-weight: 700;

            font-size: 12px;

            transition:
                all 0.2s ease;

            text-align: center;
        }


        .btn:active {
            transform: scale(0.95);
        }


        .add-cart-btn {

            background:
                linear-gradient(
                    135deg,
                    #007bff,
                    #0056d6
                );

            color: white;

            box-shadow:
                0 4px 10px
                rgba(
                    0,
                    123,
                    255,
                    0.18
                );
        }


        .add-cart-btn:hover {

            background:
                linear-gradient(
                    135deg,
                    #0069d9,
                    #0046b8
                );

            box-shadow:
                0 7px 15px
                rgba(
                    0,
                    123,
                    255,
                    0.28
                );

            transform:
                translateY(-1px);
        }


        .buy-now-btn {

            background:
                linear-gradient(
                    135deg,
                    #ffc107,
                    #ffb300
                );

            color: #3d2f00;

            box-shadow:
                0 4px 10px
                rgba(
                    255,
                    193,
                    7,
                    0.18
                );
        }


        .buy-now-btn:hover {

            background:
                linear-gradient(
                    135deg,
                    #ffca2c,
                    #f59e0b
                );

            box-shadow:
                0 7px 15px
                rgba(
                    255,
                    193,
                    7,
                    0.28
                );

            transform:
                translateY(-1px);
        }


        /* =========================================================
           MODAL
        ========================================================= */

        .modal-overlay {

            position: fixed;

            top: 0;
            left: 0;

            width: 100%;
            height: 100%;

            background:
                rgba(
                    15,
                    23,
                    42,
                    0.65
                );

            backdrop-filter:
                blur(5px);

            -webkit-backdrop-filter:
                blur(5px);

            display: none;

            justify-content:
                center;

            align-items:
                center;

            padding: 20px;

            z-index: 2000;
        }


        .modal-content {

            background: #ffffff;

            padding: 24px;

            border-radius: 18px;

            width: 100%;

            max-width: 600px;

            max-height: 88vh;

            overflow-y: auto;

            box-shadow:
                0 25px 70px
                rgba(
                    0,
                    0,
                    0,
                    0.25
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

            justify-content:
                space-between;

            align-items: center;

            margin-bottom: 18px;

            border-bottom:
                1px solid #e5e7eb;

            padding-bottom: 15px;
        }


        .modal-header h3 {

            font-size: 21px;

            color: #111827;
        }


        .close-btn {

            background: #f1f5f9;

            border: none;

            width: 36px;

            height: 36px;

            border-radius: 50%;

            font-size: 22px;

            cursor: pointer;

            color: #475569;

            display: flex;

            align-items: center;

            justify-content: center;

            transition:
                all 0.2s ease;
        }


        .close-btn:hover {

            background: #fee2e2;

            color: #dc2626;

            transform:
                rotate(90deg);
        }


        /* =========================================================
           EMPTY CART
        ========================================================= */

        .empty-cart {

            text-align: center;

            padding:
                45px 10px;

            color: #64748b;
        }


        .empty-cart-icon {

            font-size: 55px;

            margin-bottom: 12px;
        }


        .empty-cart h4 {

            color: #334155;

            font-size: 18px;

            margin-bottom: 6px;
        }


        /* =========================================================
           CART ITEM
        ========================================================= */

        .cart-item {

            display: grid;

            grid-template-columns:
                90px 1fr auto;

            gap: 14px;

            align-items: center;

            margin-bottom: 12px;

            border:
                1px solid #e5e7eb;

            padding: 12px;

            border-radius: 14px;

            background:
                linear-gradient(
                    135deg,
                    #ffffff,
                    #f8fafc
                );

            transition:
                all 0.2s ease;
        }


        .cart-item:hover {

            box-shadow:
                0 6px 18px
                rgba(
                    0,
                    0,
                    0,
                    0.07
                );

            transform:
                translateY(-1px);
        }


        /* =========================================================
           CART IMAGE
        ========================================================= */

        .cart-item-image {

            width: 90px;

            height: 90px;

            border-radius: 10px;

            overflow: hidden;

            background:
                #eef2ff;
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

            font-weight: 800;

            color: #1e293b;

            margin-bottom: 5px;

            font-size: 15px;
        }


        .cart-item-price {

            color: #007bff;

            font-size: 13px;

            font-weight: 700;
        }


        .cart-item-total {

            color: #111827;

            font-size: 13px;

            font-weight: 800;

            margin-top: 5px;
        }


        /* =========================================================
           QUANTITY
        ========================================================= */

        .quantity-controls {

            display: flex;

            align-items: center;

            gap: 7px;

            margin-top: 10px;
        }


        .quantity-btn {

            width: 28px;

            height: 28px;

            border: none;

            border-radius: 7px;

            background:
                #e8f0ff;

            color: #0066d6;

            font-size: 16px;

            font-weight: 800;

            cursor: pointer;

            transition:
                all 0.2s ease;
        }


        .quantity-btn:hover {

            background: #007bff;

            color: white;
        }


        .quantity-value {

            min-width: 25px;

            text-align: center;

            font-weight: 700;
        }


        /* =========================================================
           CART ACTIONS
        ========================================================= */

        .cart-actions {

            display: flex;

            flex-direction: column;

            gap: 7px;
        }


        .cart-buy-btn {

            background:
                linear-gradient(
                    135deg,
                    #22c55e,
                    #16a34a
                );

            color: white;

            border: none;

            padding:
                8px 12px;

            border-radius: 7px;

            cursor: pointer;

            font-size: 12px;

            font-weight: 700;

            white-space: nowrap;

            transition:
                all 0.2s ease;
        }


        .cart-buy-btn:hover {

            transform:
                translateY(-1px);

            background:
                linear-gradient(
                    135deg,
                    #16a34a,
                    #15803d
                );
        }


        .remove-btn {

            background: #fee2e2;

            color: #dc2626;

            border: none;

            padding:
                8px 12px;

            border-radius: 7px;

            cursor: pointer;

            font-size: 12px;

            font-weight: 700;

            white-space: nowrap;

            transition:
                all 0.2s ease;
        }


        .remove-btn:hover {

            background: #dc3545;

            color: white;
        }


        /* =========================================================
           CART SUMMARY
        ========================================================= */

        .cart-summary {

            border-top:
                1px solid #e5e7eb;

            margin-top: 18px;

            padding-top: 16px;
        }


        .cart-total-row {

            display: flex;

            justify-content:
                space-between;

            align-items: center;

            font-size: 19px;

            font-weight: 800;

            color: #1e293b;
        }


        #cart-total-price {

            color: #007bff;
        }


        .checkout-btn {

            width: 100%;

            background:
                linear-gradient(
                    135deg,
                    #22c55e,
                    #15803d
                );

            color: white;

            border: none;

            padding: 13px;

            border-radius: 9px;

            font-size: 15px;

            font-weight: 800;

            cursor: pointer;

            margin-top: 15px;

            transition:
                all 0.2s ease;

            box-shadow:
                0 6px 15px
                rgba(
                    34,
                    197,
                    94,
                    0.2
                );
        }


        .checkout-btn:hover {

            transform:
                translateY(-2px);

            box-shadow:
                0 9px 20px
                rgba(
                    34,
                    197,
                    94,
                    0.3
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

            min-width: 270px;

            max-width: 380px;

            background: #ffffff;

            color: #1e293b;

            border-radius: 12px;

            padding:
                13px 16px;

            box-shadow:
                0 10px 30px
                rgba(
                    0,
                    0,
                    0,
                    0.16
                );

            border-left:
                4px solid #22c55e;

            display: flex;

            align-items: center;

            gap: 10px;

            animation:
                toastIn
                0.3s ease;
        }


        .toast.error {
            border-left-color:
                #dc3545;
        }


        .toast-icon {
            font-size: 20px;
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

            text-align: center;

            padding: 30px;

            background:
                linear-gradient(
                    135deg,
                    #1e293b,
                    #0f172a
                );

            color: #fff;

            margin-top: 20px;
        }


        footer p {

            opacity: 0.85;

            font-size: 14px;
        }


        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 850px) {

            nav {

                padding:
                    10px 15px;

                gap: 10px;
            }


            nav a {

                font-size: 12px;

                padding:
                    8px 11px;
            }


            .cart-btn {

                padding:
                    9px 13px;

                font-size: 13px;
            }


            main {

                padding:
                    25px 15px 40px;
            }


            .item-grid {

                grid-template-columns:
                    repeat(
                        auto-fill,
                        minmax(
                            180px,
                            1fr
                        )
                    );
            }

        }


        @media (max-width: 600px) {

            body {
                padding-top: 125px;
            }


            nav {

                flex-direction: column;

                align-items: stretch;

                min-height: auto;
            }


            .nav-links {

                width: 100%;
            }


            .cart-btn {

                width: 100%;
            }


            .category-section h2 {

                font-size: 22px;
            }


            .item-grid {

                grid-template-columns:
                    repeat(2, 1fr);

                gap: 12px;
            }


            .item-card {

                padding: 11px;

                border-radius: 12px;
            }


            .item-img {

                height: 125px;
            }


            .card-buttons {

                grid-template-columns: 1fr;

                gap: 6px;
            }


            .modal-content {

                padding: 18px;

                max-height: 90vh;
            }


            .cart-item {

                grid-template-columns:
                    70px 1fr;

                gap: 10px;
            }


            .cart-item-image {

                width: 70px;

                height: 70px;
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

                left: 15px;

                right: 15px;

                bottom: 15px;
            }


            .toast {

                min-width: 0;

                width: 100%;
            }

        }


        @media (max-width: 400px) {

            .item-grid {

                grid-template-columns: 1fr;
            }


            .item-img {

                height: 160px;
            }

        }

    </style>

</head>


<body>


    <!-- =========================================================
         NAVIGATION
    ========================================================= -->

    <nav>

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
         MAIN CONTENT
    ========================================================= -->

    <main id="content-container">
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

        <p>
            &copy; 2026 Category Showcase App.
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
                name: "Electronics"
            },

            {
                id: "clothing",
                name: "Clothing"
            },

            {
                id: "home",
                name: "Home & Kitchen"
            },

            {
                id: "books",
                name: "Books"
            },

            {
                id: "sports",
                name: "Sports"
            },

            {
                id: "beauty",
                name: "Beauty"
            },

            {
                id: "toys",
                name: "Toys & Games"
            },

            {
                id: "groceries",
                name: "Groceries"
            },

            {
                id: "footwear",
                name: "Footwear"
            },

            {
                id: "automotive",
                name: "Automotive"
            },

            {
                id: "jewellery",
                name: "Jewellery"
            },

            {
                id: "stationery",
                name: "Stationery"
            }

        ];


        /* =========================================================
           PRODUCT DATA
           More products added to each category
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
           IMAGE DATA
        =========================================================
           Images are generated automatically from product names
           using Unsplash Source.
        ========================================================= */

        function getProductImage(productName) {

            const searchName =
                encodeURIComponent(
                    productName
                );

            return `https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80`;

        }


        /*
         * Better image mapping using category/product keywords.
         */

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


        /* =========================================================
           FALLBACK IMAGE
        ========================================================= */

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
           GENERATE RANDOM PRICE
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

                    /*
                     * NAVIGATION LINK
                     */

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


                    /*
                     * CATEGORY SECTION
                     */

                    const section =
                        document.createElement(
                            "section"
                        );

                    section.id =
                        cat.id;

                    section.className =
                        "category-section";


                    /*
                     * CATEGORY HEADER
                     */

                    const categoryHeader =
                        document.createElement(
                            "div"
                        );

                    categoryHeader.className =
                        "category-header";


                    const heading =
                        document.createElement(
                            "h2"
                        );

                    heading.textContent =
                        cat.name;


                    const badge =
                        document.createElement(
                            "span"
                        );

                    badge.className =
                        "category-badge";


                    badge.textContent =
                        `${categoryItems[cat.id].length} Products`;


                    categoryHeader.appendChild(
                        heading
                    );

                    categoryHeader.appendChild(
                        badge
                    );


                    section.appendChild(
                        categoryHeader
                    );


                    /*
                     * PRODUCT GRID
                     */

                    const grid =
                        document.createElement(
                            "div"
                        );

                    grid.className =
                        "item-grid";


                    /*
                     * GENERATE PRODUCTS
                     */

                    categoryItems[
                        cat.id
                    ].forEach(
                        (
                            itemName,
                            index
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

                                    <div
                                        class="image-overlay">

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

                    name: name,

                    price: price,

                    image: image,

                    quantity: 1

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
           BUY ITEM FROM CART
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
           REMOVE FROM CART
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
           INCREASE QUANTITY
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
           DECREASE QUANTITY
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
           UPDATE CART UI
        ========================================================= */

        function updateCartUI() {

            /*
             * TOTAL QUANTITY
             */

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


            /*
             * EMPTY CART
             */

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


            /*
             * CART ITEMS
             */

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

                        <!-- PRODUCT IMAGE -->

                        <div
                            class="cart-item-image">

                            <img
                                src="${item.image}"
                                alt="${item.name}"
                                onerror="this.src='${fallbackImage}'">

                        </div>


                        <!-- PRODUCT INFORMATION -->

                        <div
                            class="cart-item-info">

                            <div
                                class="cart-item-name">

                                ${item.name}

                            </div>


                            <div
                                class="cart-item-price">

                                $${item.price.toFixed(2)}
                                each

                            </div>


                            <div
                                class="cart-item-total">

                                Subtotal:
                                $${itemTotal.toFixed(2)}

                            </div>


                            <!-- QUANTITY -->

                            <div
                                class="quantity-controls">

                                <button
                                    class="quantity-btn"
                                    onclick="decreaseQuantity(${index})">

                                    −

                                </button>


                                <span
                                    class="quantity-value">

                                    ${item.quantity}

                                </span>


                                <button
                                    class="quantity-btn"
                                    onclick="increaseQuantity(${index})">

                                    +

                                </button>

                            </div>

                        </div>


                        <!-- ACTIONS -->

                        <div
                            class="cart-actions">

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


            /*
             * TOTAL
             */

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
           CLOSE MODAL BACKDROP
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
           START APPLICATION
        ========================================================= */

        window.addEventListener(
            "DOMContentLoaded",
            initApp
        );

    </script>

</body>

</html>
