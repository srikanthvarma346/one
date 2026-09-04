<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
           NAVIGATION BAR
        ========================================================= */

        nav {
            position: fixed;
            top: 0;
            left: 0;

            width: 100%;

            min-height: 78px;

            background: rgba(255, 255, 255, 0.94);

            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);

            box-shadow:
                0 4px 25px rgba(0, 0, 0, 0.08);

            display: flex;

            justify-content: space-between;
            align-items: center;

            gap: 20px;

            padding: 12px 30px;

            z-index: 1000;
        }


        /* Navigation links */

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

            transform: translateY(-2px);

            box-shadow:
                0 5px 12px
                rgba(0, 123, 255, 0.25);
        }


        /* =========================================================
           CART NAVIGATION BUTTON
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

            padding: 11px 18px;

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
                rgba(34, 197, 94, 0.25);
        }

        .cart-btn:hover {
            transform: translateY(-2px);

            background:
                linear-gradient(
                    135deg,
                    #16a34a,
                    #15803d
                );

            box-shadow:
                0 8px 20px
                rgba(34, 197, 94, 0.35);
        }

        .cart-btn:active {
            transform: scale(0.96);
        }


        /* Cart count */

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
           MAIN CONTAINER
        ========================================================= */

        main {
            max-width: 1250px;

            margin: 0 auto;

            padding: 30px 20px 50px;
        }


        /* =========================================================
           CATEGORY SECTION
        ========================================================= */

        .category-section {
            margin-bottom: 70px;

            scroll-margin-top: 100px;
        }


        .category-header {
            display: flex;

            align-items: center;

            justify-content: space-between;

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

            padding: 7px 13px;

            border-radius: 20px;

            font-size: 12px;

            font-weight: 700;
        }


        /* =========================================================
           ITEM GRID
        ========================================================= */

        .item-grid {
            display: grid;

            grid-template-columns:
                repeat(
                    auto-fill,
                    minmax(210px, 1fr)
                );

            gap: 22px;
        }


        /* =========================================================
           PRODUCT CARD
        ========================================================= */

        .item-card {
            position: relative;

            background: rgba(255, 255, 255, 0.96);

            border-radius: 16px;

            padding: 15px;

            box-shadow:
                0 6px 25px
                rgba(31, 41, 55, 0.07);

            border:
                1px solid
                rgba(226, 232, 240, 0.9);

            transition:
                transform 0.3s ease,
                box-shadow 0.3s ease;

            display: flex;

            flex-direction: column;

            justify-content: space-between;

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

            transition: opacity 0.3s ease;
        }


        .item-card:hover {
            transform: translateY(-7px);

            box-shadow:
                0 15px 35px
                rgba(31, 41, 55, 0.13);
        }


        .item-card:hover::before {
            opacity: 1;
        }


        /* =========================================================
           PRODUCT IMAGE
        ========================================================= */

        .item-img {
            width: 100%;

            height: 145px;

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


        .item-img::before {
            content: "🛍️";

            font-size: 42px;

            opacity: 0.25;

            position: absolute;
        }


        .item-img span {
            position: relative;

            z-index: 1;

            margin-top: 60px;
        }


        /* =========================================================
           PRODUCT INFORMATION
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
           CARD BUTTONS
        ========================================================= */

        .card-buttons {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 8px;
        }


        .btn {
            min-height: 40px;

            padding: 8px 6px;

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


        /* Add cart */

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
                rgba(0, 123, 255, 0.18);
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
                rgba(0, 123, 255, 0.28);

            transform: translateY(-1px);
        }


        /* Buy now */

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
                rgba(255, 193, 7, 0.18);
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
                rgba(255, 193, 7, 0.28);

            transform: translateY(-1px);
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
                rgba(15, 23, 42, 0.62);

            backdrop-filter: blur(5px);

            -webkit-backdrop-filter: blur(5px);

            display: none;

            justify-content: center;

            align-items: center;

            padding: 20px;

            z-index: 2000;

            animation:
                fadeIn 0.2s ease;
        }


        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }


        .modal-content {
            background: #ffffff;

            padding: 24px;

            border-radius: 18px;

            width: 100%;

            max-width: 540px;

            max-height: 85vh;

            overflow-y: auto;

            box-shadow:
                0 25px 70px
                rgba(0, 0, 0, 0.25);

            animation:
                modalSlide 0.25s ease;
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

            justify-content: space-between;

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

            transform: rotate(90deg);
        }


        /* =========================================================
           EMPTY CART
        ========================================================= */

        .empty-cart {
            text-align: center;

            padding: 35px 10px;

            color: #64748b;
        }


        .empty-cart-icon {
            font-size: 48px;

            margin-bottom: 12px;
        }


        .empty-cart h4 {
            color: #334155;

            font-size: 17px;

            margin-bottom: 5px;
        }


        /* =========================================================
           CART ITEM
        ========================================================= */

        .cart-item {
            display: grid;

            grid-template-columns:
                1fr auto;

            gap: 15px;

            align-items: center;

            margin-bottom: 12px;

            border:
                1px solid #e5e7eb;

            padding: 14px;

            border-radius: 12px;

            background:
                linear-gradient(
                    135deg,
                    #ffffff,
                    #f8fafc
                );

            transition:
                box-shadow 0.2s ease,
                transform 0.2s ease;
        }


        .cart-item:hover {
            box-shadow:
                0 5px 15px
                rgba(0, 0, 0, 0.07);

            transform: translateY(-1px);
        }


        .cart-item-info {
            min-width: 0;
        }


        .cart-item-name {
            font-weight: 700;

            color: #1e293b;

            margin-bottom: 5px;
        }


        .cart-item-price {
            color: #007bff;

            font-size: 13px;

            font-weight: 700;
        }


        /* =========================================================
           QUANTITY CONTROLS
        ========================================================= */

        .quantity-controls {
            display: flex;

            align-items: center;

            gap: 7px;

            margin-top: 10px;
        }


        .quantity-btn {
            width: 27px;
            height: 27px;

            border: none;

            border-radius: 7px;

            background: #e8f0ff;

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

            padding: 7px 11px;

            border-radius: 7px;

            cursor: pointer;

            font-size: 12px;

            font-weight: 700;

            white-space: nowrap;

            transition:
                all 0.2s ease;
        }


        .cart-buy-btn:hover {
            transform: translateY(-1px);

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

            padding: 7px 11px;

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

            justify-content: space-between;

            align-items: center;

            font-size: 18px;

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
                rgba(34, 197, 94, 0.2);
        }


        .checkout-btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 9px 20px
                rgba(34, 197, 94, 0.3);
        }


        .checkout-btn:active {
            transform: scale(0.98);
        }


        /* =========================================================
           TOAST NOTIFICATION
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

            max-width: 360px;

            background: #ffffff;

            color: #1e293b;

            border-radius: 12px;

            padding: 13px 16px;

            box-shadow:
                0 10px 30px
                rgba(0, 0, 0, 0.16);

            border-left:
                4px solid #22c55e;

            display: flex;

            align-items: center;

            gap: 10px;

            animation:
                toastIn 0.3s ease;
        }


        .toast.error {
            border-left-color: #dc3545;
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
           RESPONSIVE DESIGN
        ========================================================= */

        @media (max-width: 850px) {

            nav {
                padding: 10px 15px;

                gap: 10px;
            }

            nav a {
                font-size: 12px;

                padding: 8px 11px;
            }

            .cart-btn {
                padding: 9px 13px;

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
                        minmax(180px, 1fr)
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
                height: 110px;
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
                grid-template-columns: 1fr;

                gap: 10px;
            }

            .cart-actions {
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
                height: 130px;
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
         TOAST CONTAINER
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

        /*
         * =========================================================
         * CATEGORY DATA
         * =========================================================
         */

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


        /*
         * =========================================================
         * PRODUCT DATA
         * =========================================================
         */

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
                "Power Bank"
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
                "Kurta"
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
                "Storage Box"
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
                "Web Development"
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
                "Sports Shoes"
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
                "Hair Oil"
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
                "Educational Kit"
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
                "Breakfast Cereal"
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
                "Flip Flops"
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
                "Sun Shade"
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
                "Jewellery Box"
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
                "File Folder"
            ]

        };


        /*
         * =========================================================
         * APPLICATION VARIABLES
         * =========================================================
         */

        let cart = [];


        const navbar =
            document.getElementById("navbar");


        const contentContainer =
            document.getElementById(
                "content-container"
            );


        /*
         * =========================================================
         * INITIALIZE APPLICATION
         * =========================================================
         */

        function initApp() {

            categoriesData.forEach(cat => {

                /*
                 * Create navigation link
                 */

                const navLink =
                    document.createElement("a");

                navLink.href =
                    `#${cat.id}`;

                navLink.textContent =
                    cat.name;

                navbar.appendChild(
                    navLink
                );


                /*
                 * Create category section
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
                 * Category header
                 */

                const categoryHeader =
                    document.createElement(
                        "div"
                    );

                categoryHeader.className =
                    "category-header";


                const heading =
                    document.createElement("h2");

                heading.textContent =
                    cat.name;


                const badge =
                    document.createElement("span");

                badge.className =
                    "category-badge";

                badge.textContent =
                    "10 Products";


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
                 * Create item grid
                 */

                const grid =
                    document.createElement(
                        "div"
                    );

                grid.className =
                    "item-grid";


                /*
                 * Generate 10 products
                 */

                for (
                    let i = 1;
                    i <= 10;
                    i++
                ) {

                    const card =
                        document.createElement(
                            "div"
                        );

                    card.className =
                        "item-card";


                    /*
                     * Generate product price
                     */

                    const price =
                        parseFloat(
                            (
                                Math.random() *
                                50 +
                                10
                            ).toFixed(2)
                        );


                    /*
                     * Product name
                     */

                    const itemName =
                        categoryItems[
                            cat.id
                        ][i - 1];


                    /*
                     * Create product card
                     */

                    card.innerHTML = `

                        <div class="item-img">

                            <span>
                                ${cat.name}
                            </span>

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
                                    ${price}
                                )">

                                🛒 Add to Cart

                            </button>


                            <button
                                class="btn buy-now-btn"
                                onclick="buyNow(
                                    '${escapeQuotes(itemName)}',
                                    ${price}
                                )">

                                ⚡ Buy Now

                            </button>

                        </div>

                    `;


                    grid.appendChild(
                        card
                    );

                }


                section.appendChild(
                    grid
                );


                contentContainer.appendChild(
                    section
                );

            });


            updateCartUI();

        }


        /*
         * =========================================================
         * ESCAPE QUOTES
         * =========================================================
         */

        function escapeQuotes(text) {

            return text
                .replace(/\\/g, "\\\\")
                .replace(/'/g, "\\'");

        }


        /*
         * =========================================================
         * ADD TO CART
         * =========================================================
         *
         * If item already exists:
         * increase quantity.
         *
         * Otherwise:
         * add a new item.
         */

        function addToCart(name, price) {

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

                    quantity: 1

                });

            }


            updateCartUI();


            showToast(
                `🛒 ${name} added to your cart!`
            );

        }


        /*
         * =========================================================
         * BUY NOW FROM PRODUCT CARD
         * =========================================================
         */

        function buyNow(name, price) {

            showToast(
                `⚡ Order placed for ${name} — $${price.toFixed(2)}`
            );

        }


        /*
         * =========================================================
         * BUY NOW FROM CART
         * =========================================================
         */

        function buyCartItem(index) {

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


            /*
             * Remove purchased item
             */

            cart.splice(
                index,
                1
            );


            updateCartUI();


            /*
             * Close modal if cart becomes empty
             */

            if (cart.length === 0) {

                setTimeout(
                    () => {
                        toggleCartModal(false);
                    },
                    700
                );

            }

        }


        /*
         * =========================================================
         * REMOVE ITEM FROM CART
         * =========================================================
         */

        function removeFromCart(index) {

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


        /*
         * =========================================================
         * INCREASE QUANTITY
         * =========================================================
         */

        function increaseQuantity(index) {

            if (!cart[index]) {
                return;
            }


            cart[index].quantity++;


            updateCartUI();

        }


        /*
         * =========================================================
         * DECREASE QUANTITY
         * =========================================================
         */

        function decreaseQuantity(index) {

            if (!cart[index]) {
                return;
            }


            cart[index].quantity--;


            /*
             * Remove item if quantity reaches zero
             */

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


        /*
         * =========================================================
         * CHECKOUT
         * =========================================================
         */

        function checkout() {

            if (cart.length === 0) {

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


            /*
             * Empty cart after checkout
             */

            cart = [];


            updateCartUI();


            setTimeout(
                () => {
                    toggleCartModal(false);
                },
                800
            );

        }


        /*
         * =========================================================
         * UPDATE CART UI
         * =========================================================
         */

        function updateCartUI() {

            /*
             * Calculate total quantity
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
             * Empty cart
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


            /*
             * Clear existing cart
             */

            cartContainer.innerHTML =
                "";


            let total = 0;


            /*
             * Generate cart items
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

                        <div class="cart-item-info">

                            <div class="cart-item-name">
                                ${item.name}
                            </div>


                            <div class="cart-item-price">

                                $${item.price.toFixed(2)}
                                each

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


            /*
             * Update total
             */

            totalContainer.textContent =
                `$${total.toFixed(2)}`;

        }


        /*
         * =========================================================
         * CART MODAL
         * =========================================================
         */

        function toggleCartModal(open) {

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


        /*
         * =========================================================
         * CLOSE MODAL WHEN CLICKING BACKDROP
         * =========================================================
         */

        function handleModalClick(event) {

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


        /*
         * =========================================================
         * ESCAPE KEY CLOSES CART
         * =========================================================
         */

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


        /*
         * =========================================================
         * TOAST NOTIFICATION
         * =========================================================
         */

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
                    ${isError ? "⚠️" : "✅"}
                </span>

                <span>
                    ${message}
                </span>

            `;


            container.appendChild(
                toast
            );


            /*
             * Automatically remove toast
             */

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


        /*
         * =========================================================
         * START APPLICATION
         * =========================================================
         */

        window.addEventListener(
            "DOMContentLoaded",
            initApp
        );

    </script>

</body>
</html>
