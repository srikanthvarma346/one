<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Showcase App with Cart & Buy</title>
    <style>
        /* Global Styles */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            scroll-behavior: smooth;
            padding-top: 80px; /* Space for fixed nav */
        }

        /* Navigation Bar */
        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #ffffff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 30px;
            z-index: 1000;
        }

        .nav-links {
            display: flex;
            gap: 20px;
            overflow-x: auto;
        }

        nav a {
            text-decoration: none;
            color: #555;
            font-weight: 600;
            font-size: 15px;
            white-space: nowrap;
            padding: 6px 12px;
            border-radius: 20px;
            background-color: #f1f3f5;
            transition: all 0.3s ease;
        }

        nav a:hover {
            background-color: #007bff;
            color: #ffffff;
        }

        /* Cart Button in Navbar */
        .cart-btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 20px;
            font-weight: 600;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: background 0.2s;
            white-space: nowrap;
        }

        .cart-btn:hover {
            background-color: #218838;
        }

        /* Main Container */
        main {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Category Section */
        .category-section {
            margin-bottom: 60px;
            scroll-margin-top: 90px;
        }

        .category-section h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #222;
            border-bottom: 3px solid #007bff;
            display: inline-block;
            padding-bottom: 5px;
        }

        /* Grid Layout for Items */
        .item-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
            gap: 20px;
        }

        /* Individual Card */
        .item-card {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .item-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .item-img {
            width: 100%;
            height: 120px;
            background-color: #e9ecef;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #6c757d;
            font-size: 14px;
            margin-bottom: 12px;
        }

        .item-title {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 6px;
            color: #333;
        }

        .item-price {
            font-size: 14px;
            color: #007bff;
            font-weight: bold;
            margin-bottom: 10px;
        }

        /* Button Group for Card */
        .card-buttons {
            display: flex;
            gap: 8px;
        }

        .btn {
            flex: 1;
            padding: 7px 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            font-size: 13px;
            transition: background 0.2s;
            text-align: center;
        }

        .add-cart-btn {
            background-color: #007bff;
            color: white;
        }
        .add-cart-btn:hover {
            background-color: #0056b3;
        }

        .buy-now-btn {
            background-color: #ffc107;
            color: #333;
        }
        .buy-now-btn:hover {
            background-color: #e0a800;
        }

        /* Cart Modal Styles */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 2000;
        }

        .modal-content {
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            width: 90%;
            max-width: 450px;
            max-height: 80vh;
            overflow-y: auto;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }

        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        .close-btn {
            background: none;
            border: none;
            font-size: 22px;
            cursor: pointer;
            color: #555;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }

        .remove-btn {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 12px;
        }

        .cart-total {
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
            text-align: right;
            color: #333;
        }

        .checkout-btn {
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 15px;
            transition: background 0.2s;
        }

        .checkout-btn:hover {
            background-color: #218838;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 30px;
            background-color: #343a40;
            color: #fff;
            margin-top: 40px;
        }
    </style>
</head>
<body>

    <!-- Main Navigation Bar -->
    <nav>
        <div class="nav-links" id="navbar">
            <!-- Navigation links injected by JS -->
        </div>
        <button class="cart-btn" onclick="toggleCartModal(true)">
            🛒 Cart (<span id="cart-count">0</span>)
        </button>
    </nav>

    <!-- Main Content Area -->
    <main id="content-container">
        <!-- Category sections injected by JS -->
    </main>

    <!-- Cart Modal Overlay -->
    <div class="modal-overlay" id="cart-modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Your Cart Items</h3>
                <button class="close-btn" onclick="toggleCartModal(false)">&times;</button>
            </div>
            <div id="cart-items-container">
                <p>Your cart is empty.</p>
            </div>
            <div class="cart-total" id="cart-total-price">Total: $0.00</div>
            <button class="checkout-btn" onclick="checkout()">Proceed to Checkout</button>
        </div>
    </div>

    <footer>
        <p>&copy; 2026 Category Showcase App. All rights reserved.</p>
    </footer>

    <script>
        // Data structure containing 6 categories, each with 10 items
        const categoriesData = [
            { id: "electronics", name: "Electronics" },
            { id: "clothing", name: "Clothing" },
            { id: "home", name: "Home & Kitchen" },
            { id: "books", name: "Books" },
            { id: "sports", name: "Sports" },
            { id: "beauty", name: "Beauty" }
        ];

        let cart = []; // Array to store added items

        const navbar = document.getElementById("navbar");
        const contentContainer = document.getElementById("content-container");

        // Function to initialize the app
        function initApp() {
            categoriesData.forEach(cat => {
                // 1. Create Navigation Link
                const navLink = document.createElement("a");
                navLink.href = `#${cat.id}`;
                navLink.textContent = cat.name;
                navbar.appendChild(navLink);

                // 2. Create Category Section
                const section = document.createElement("section");
                section.id = cat.id;
                section.className = "category-section";

                const heading = document.createElement("h2");
                heading.textContent = cat.name;
                section.appendChild(heading);

                // 3. Create Item Grid
                const grid = document.createElement("div");
                grid.className = "item-grid";

                // Generate 10 items per category
                for (let i = 1; i <= 10; i++) {
                    const card = document.createElement("div");
                    card.className = "item-card";

                    const price = parseFloat((Math.random() * 50 + 10).toFixed(2));
                    const itemName = `${cat.name} Item ${i}`;

                    card.innerHTML = `
                        <div class="item-img">Image ${i}</div>
                        <div class="item-title">${itemName}</div>
                        <div class="item-price">$${price}</div>
                        <div class="card-buttons">
                            <button class="btn add-cart-btn" onclick="addToCart('${itemName}', ${price})">Add to Cart</button>
                            <button class="btn buy-now-btn" onclick="buyNow('${itemName}', ${price})">Buy Now</button>
                        </div>
                    `;
                    grid.appendChild(card);
                }

                section.appendChild(grid);
                contentContainer.appendChild(section);
            });
        }

        // Add item to cart array
        function addToCart(name, price) {
            cart.push({ name, price });
            updateCartUI();
            alert(`${name} has been added to your cart!`);
        }

        // Direct Buy Now function
        function buyNow(name, price) {
            alert(`🎉 Order placed successfully for ${name} at $${price.toFixed(2)}! Thank you for shopping.`);
        }

        // Remove item from cart array
        function removeFromCart(index) {
            cart.splice(index, 1);
            updateCartUI();
        }

        // Checkout action from cart
        function checkout() {
            if (cart.length === 0) {
                alert("Your cart is empty!");
                return;
            }
            alert("🎉 Order placed successfully for all items in your cart! Thank you.");
            cart = [];
            updateCartUI();
            toggleCartModal(false);
        }

        // Update Cart Counter and Modal Elements
        function updateCartUI() {
            document.getElementById("cart-count").textContent = cart.length;

            const cartContainer = document.getElementById("cart-items-container");
            const totalContainer = document.getElementById("cart-total-price");

            if (cart.length === 0) {
                cartContainer.innerHTML = "<p>Your cart is empty.</p>";
                totalContainer.textContent = "Total: $0.00";
                return;
            }

            cartContainer.innerHTML = "";
            let total = 0;

            cart.forEach((item, index) => {
                total += item.price;
                const itemDiv = document.createElement("div");
                itemDiv.className = "cart-item";
                itemDiv.innerHTML = `
                    <div>
                        <strong>${item.name}</strong><br>
                        <span style="color: #007bff; font-size: 13px;">$${item.price.toFixed(2)}</span>
                    </div>
                    <button class="remove-btn" onclick="removeFromCart(${index})">Remove</button>
                `;
                cartContainer.appendChild(itemDiv);
            });

            totalContainer.textContent = `Total: $${total.toFixed(2)}`;
        }

        // Toggle Cart Modal Visibility
        function toggleCartModal(open) {
            const modal = document.getElementById("cart-modal");
            modal.style.display = open ? "flex" : "none";
        }

        // Run initialization on page load
        window.addEventListener("DOMContentLoaded", initApp);
    </script>
</body>
</html>
