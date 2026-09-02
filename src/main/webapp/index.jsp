<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ElectroMart - Amazon Style</title>
    <style>
        /* --- AMAZON-INSPIRED THEME & STYLES --- */
        :root {
            --amazon-nav: #131921;
            --amazon-subnav: #232f3e;
            --amazon-yellow: #febd69;
            --amazon-orange: #f08804;
            --amazon-btn: #ffd814;
            --amazon-btn-hover: #f7ca00;
            --amazon-link: #007185;
            --amazon-price: #b12704;
            --bg-light: #eaeded;
            --card-bg: #ffffff;
            --text-main: #0f1111;
            --text-muted: #565959;
            --border: #d5d9d9;
            --shadow: 0 1px 3px rgba(0, 0, 0, 0.12);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Amazon Ember', Arial, sans-serif;
        }

        body {
            background-color: var(--bg-light);
            color: var(--text-main);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* --- HEADER & NAVIGATION --- */
        header {
            background-color: var(--amazon-nav);
            color: white;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .navbar {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0.5rem 1rem;
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .logo {
            font-size: 1.4rem;
            font-weight: 700;
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.2rem;
            padding: 0.2rem 0.4rem;
            border: 1px solid transparent;
        }

        .logo span {
            color: var(--amazon-yellow);
        }

        .logo:hover {
            border-color: white;
            border-radius: 2px;
        }

        /* Amazon-style Search Bar */
        .search-bar {
            flex: 1;
            display: flex;
            align-items: center;
            border-radius: 4px;
            overflow: hidden;
        }

        .search-category-select {
            background: #f3f3f3;
            border: none;
            padding: 0.7rem 0.6rem;
            font-size: 0.8rem;
            color: var(--text-muted);
            border-right: 1px solid var(--border);
            cursor: pointer;
            outline: none;
        }

        .search-bar input {
            flex: 1;
            padding: 0.65rem 1rem;
            border: none;
            outline: none;
            font-size: 0.95rem;
        }

        .search-btn {
            background: var(--amazon-yellow);
            border: none;
            padding: 0.65rem 1.2rem;
            cursor: pointer;
            font-size: 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-btn:hover {
            background: var(--amazon-orange);
        }

        /* Cart Button */
        .cart-btn-container {
            position: relative;
        }

        .cart-btn {
            background: transparent;
            color: white;
            border: 1px solid transparent;
            padding: 0.4rem 0.8rem;
            border-radius: 2px;
            cursor: pointer;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .cart-btn:hover {
            border-color: white;
        }

        .cart-badge {
            background: var(--amazon-orange);
            color: var(--amazon-nav);
            font-size: 0.85rem;
            padding: 0.1rem 0.45rem;
            border-radius: 10px;
            font-weight: bold;
        }

        /* Sub-Header / Department Nav */
        .subnav {
            background-color: var(--amazon-subnav);
            color: white;
            padding: 0.4rem 1.5rem;
            font-size: 0.85rem;
            display: flex;
            gap: 1.2rem;
            align-items: center;
        }

        .subnav a {
            color: white;
            text-decoration: none;
            padding: 0.2rem 0.4rem;
            border: 1px solid transparent;
        }

        .subnav a:hover {
            border-color: white;
            border-radius: 2px;
        }

        /* --- MAIN LAYOUT --- */
        .container {
            max-width: 1400px;
            margin: 1.5rem auto;
            padding: 0 1rem;
            display: grid;
            grid-template-columns: 240px 1fr;
            gap: 1.5rem;
            flex: 1;
            width: 100%;
        }

        /* Sidebar Filters */
        .sidebar {
            background: var(--card-bg);
            padding: 1.2rem;
            border-radius: 4px;
            box-shadow: var(--shadow);
            height: fit-content;
            border: 1px solid var(--border);
        }

        .sidebar h3 {
            margin-bottom: 0.8rem;
            font-size: 1rem;
            font-weight: 700;
            border-bottom: 1px solid var(--border);
            padding-bottom: 0.4rem;
        }

        .filter-group {
            margin-bottom: 1.2rem;
        }

        .filter-group label {
            display: block;
            margin-bottom: 0.4rem;
            font-size: 0.85rem;
            font-weight: 700;
            color: var(--text-main);
        }

        .filter-group select, .filter-group input[type="range"] {
            width: 100%;
            padding: 0.4rem;
            border: 1px solid var(--border);
            border-radius: 4px;
            outline: none;
            font-size: 0.85rem;
        }

        /* Product Grid */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
            gap: 1.2rem;
        }

        /* Amazon-style Product Card */
        .product-card {
            background: var(--card-bg);
            border: 1px solid var(--border);
            border-radius: 4px;
            padding: 1rem;
            display: flex;
            flex-direction: column;
            transition: box-shadow 0.2s;
        }

        .product-card:hover {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }

        .product-image {
            width: 100%;
            height: 180px;
            object-fit: contain;
            background: #fff;
            margin-bottom: 0.8rem;
        }

        .product-info {
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-category {
            font-size: 0.7rem;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 0.2rem;
        }

        .product-title {
            font-size: 0.95rem;
            font-weight: 500;
            color: var(--amazon-link);
            line-height: 1.3;
            margin-bottom: 0.4rem;
            cursor: pointer;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .product-title:hover {
            color: #c45500;
            text-decoration: underline;
        }

        /* Prime Badge & Rating Mock */
        .amazon-badge-row {
            display: flex;
            align-items: center;
            gap: 0.4rem;
            font-size: 0.75rem;
            color: #007185;
            margin-bottom: 0.4rem;
        }

        .star-rating {
            color: #ffa41c;
            font-size: 0.85rem;
        }

        .product-price {
            font-size: 1.3rem;
            font-weight: 700;
            color: var(--amazon-price);
            margin-bottom: 0.2rem;
        }

        .product-price span {
            font-size: 0.75rem;
            vertical-align: super;
        }

        .prime-shipping {
            font-size: 0.75rem;
            color: var(--text-muted);
            margin-bottom: 0.8rem;
            margin-top: auto;
        }

        .prime-shipping strong {
            color: #00a8e1;
            font-style: italic;
        }

        .add-to-cart-btn {
            width: 100%;
            padding: 0.5rem;
            background: var(--amazon-btn);
            color: var(--text-main);
            border: 1px solid #fcd200;
            border-radius: 20px;
            cursor: pointer;
            font-size: 0.85rem;
            font-weight: 500;
            box-shadow: 0 2px 5px rgba(213,217,217,.5);
            transition: background 0.2s;
        }

        .add-to-cart-btn:hover {
            background: var(--amazon-btn-hover);
        }

        /* Sliding Cart Sidebar */
        .cart-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: none;
            z-index: 200;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: -400px;
            width: 400px;
            height: 100%;
            background: var(--card-bg);
            box-shadow: -2px 0 10px rgba(0,0,0,0.2);
            z-index: 201;
            transition: right 0.3s ease;
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.open { right: 0; }
        .cart-overlay.open { display: block; }

        .cart-header {
            padding: 1.2rem;
            background: var(--amazon-nav);
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .close-cart {
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 1.2rem;
        }

        .cart-item {
            display: flex;
            gap: 1rem;
            margin-bottom: 1rem;
            padding-bottom: 1rem;
            border-bottom: 1px solid var(--border);
            align-items: center;
        }

        .cart-item img {
            width: 60px;
            height: 60px;
            object-fit: contain;
        }

        .cart-item-details { flex: 1; }

        .cart-item-title {
            font-size: 0.85rem;
            font-weight: 600;
            color: var(--amazon-link);
        }

        .cart-item-price {
            color: var(--amazon-price);
            font-weight: 700;
            font-size: 0.9rem;
            margin-top: 0.2rem;
        }

        .cart-controls {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-top: 0.5rem;
        }

        .quantity-btn {
            background: #e7e9ec;
            border: 1px solid #adb1b8;
            width: 24px;
            height: 24px;
            border-radius: 3px;
            cursor: pointer;
            font-weight: bold;
        }

        .remove-btn {
            background: none;
            border: none;
            color: var(--amazon-link);
            cursor: pointer;
            font-size: 0.8rem;
            margin-left: auto;
        }

        .remove-btn:hover { text-decoration: underline; }

        .cart-footer {
            padding: 1.2rem;
            border-top: 1px solid var(--border);
            background: #f7f7f7;
        }

        .total-row {
            display: flex;
            justify-content: space-between;
            font-size: 1.1rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .checkout-btn {
            width: 100%;
            padding: 0.7rem;
            background: var(--amazon-btn);
            color: var(--text-main);
            border: 1px solid #a88734;
            border-radius: 20px;
            font-size: 0.95rem;
            font-weight: 600;
            cursor: pointer;
        }

        .checkout-btn:hover { background: var(--amazon-btn-hover); }

        /* Modal */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.6);
            z-index: 300;
            justify-content: center;
            align-items: center;
        }

        .modal.open { display: flex; }

        .modal-content {
            background: white;
            padding: 2rem;
            border-radius: 4px;
            max-width: 500px;
            width: 90%;
            box-shadow: var(--shadow);
            border: 1px solid var(--border);
        }

        .modal-content h2 {
            margin-bottom: 1rem;
            color: var(--text-main);
            font-size: 1.3rem;
        }

        .form-group { margin-bottom: 1rem; }

        .form-group label {
            display: block;
            margin-bottom: 0.3rem;
            font-size: 0.85rem;
            font-weight: 700;
        }

        .form-group input {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #888c8c;
            border-radius: 3px;
            outline: none;
        }

        .form-group input:focus {
            border-color: #e77600;
            box-shadow: 0 0 3px 1px rgba(228,121,17,.5);
        }

        .modal-actions {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .modal-actions button {
            flex: 1;
            padding: 0.6rem;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
        }

        .btn-confirm {
            background: var(--amazon-btn);
            border: 1px solid #a88734;
            color: var(--text-main);
        }

        .btn-cancel {
            background: #e7e9ec;
            border: 1px solid #adb1b8;
            color: var(--text-main);
        }

        /* Toast */
        .toast {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--amazon-nav);
            color: white;
            padding: 0.8rem 1.5rem;
            border-radius: 4px;
            box-shadow: var(--shadow);
            transform: translateY(100px);
            opacity: 0;
            transition: all 0.3s ease;
            z-index: 400;
            border-left: 4px solid var(--amazon-yellow);
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        @media (max-width: 768px) {
            .container { grid-template-columns: 1fr; }
            .cart-drawer { width: 100%; right: -100%; }
            .search-category-select { display: none; }
        }
    </style>
</head>
<body>

    <header>
        <div class="navbar">
            <a href="#" class="logo">electro<span>mart</span></a>

            <div class="search-bar">
                <select class="search-category-select" id="headerCategorySelect">
                    <option value="all">All Departments</option>
                    <option value="audio">Audio</option>
                    <option value="wearables">Wearables</option>
                    <option value="accessories">Accessories</option>
                    <option value="computers">Computers</option>
                </select>
                <input type="text" id="searchInput" placeholder="Search ElectroMart">
                <button class="search-btn" id="searchBtn">🔍</button>
            </div>

            <div class="cart-btn-container">
                <button class="cart-btn" id="cartToggleBtn">
                    🛒 Cart
                    <span class="cart-badge" id="cartBadge">0</span>
                </button>
            </div>
        </div>

        <div class="subnav">
            <a href="#">Today's Deals</a>
            <a href="#">Customer Service</a>
            <a href="#">Registry</a>
            <a href="#">Gift Cards</a>
            <a href="#">Sell</a>
        </div>
    </header>

    <div class="container">
        <aside class="sidebar">
            <h3>Department</h3>
            <div class="filter-group">
                <label for="categoryFilter">Category</label>
                <select id="categoryFilter">
                    <option value="all">All Categories</option>
                    <option value="audio">Audio</option>
                    <option value="wearables">Wearables</option>
                    <option value="accessories">Accessories</option>
                    <option value="computers">Computers</option>
                </select>
            </div>

            <div class="filter-group">
                <label for="priceFilter">Price</label>
                <input type="range" id="priceFilter" min="10" max="1500" value="1500" step="10">
                <span id="priceValue" style="font-size: 0.85rem; color: var(--text-muted);">$1500</span>
            </div>

            <div class="filter-group">
                <label for="sortFilter">Sort By</label>
                <select id="sortFilter">
                    <option value="default">Featured</option>
                    <option value="low-high">Price: Low to High</option>
                    <option value="high-low">Price: High to Low</option>
                </select>
            </div>
        </aside>

        <main class="product-grid" id="productGrid"></main>
    </div>

    <div class="cart-overlay" id="cartOverlay"></div>
    <div class="cart-drawer" id="cartDrawer">
        <div class="cart-header">
            <h2>Shopping Cart</h2>
            <button class="close-cart" id="closeCartBtn">&times;</button>
        </div>
        <div class="cart-items" id="cartItemsContainer"></div>
        <div class="cart-footer">
            <div class="total-row">
                <span>Subtotal:</span>
                <span id="cartTotal">$0.00</span>
            </div>
            <button class="checkout-btn" id="openCheckoutBtn">Proceed to checkout</button>
        </div>
    </div>

    <div class="modal" id="checkoutModal">
        <div class="modal-content">
            <h2>Select a shipping address</h2>
            <form id="checkoutForm">
                <div class="form-group">
                    <label for="custName">Full Name</label>
                    <input type="text" id="custName" required placeholder="John Doe">
                </div>
                <div class="form-group">
                    <label for="custEmail">Email Address</label>
                    <input type="email" id="custEmail" required placeholder="john@example.com">
                </div>
                <div class="form-group">
                    <label for="custAddress">Street Address</label>
                    <input type="text" id="custAddress" required placeholder="123 Main St, Apt 4B">
                </div>
                <div class="modal-actions">
                    <button type="button" class="btn-cancel" id="closeCheckoutBtn">Cancel</button>
                    <button type="submit" class="btn-confirm">Use this address</button>
                </div>
            </form>
        </div>
    </div>

    <div class="toast" id="toastNotification">Item added to cart!</div>

    <script>
        // --- DATA STORE ---
        const products = [
            { id: 1, name: "Wireless Noise-Canceling Headphones", category: "audio", price: 199.99, image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500" },
            { id: 2, name: "Smart Fitness Watch v2", category: "wearables", price: 149.50, image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500" },
            { id: 3, name: "Ergonomic Mechanical Keyboard", category: "accessories", price: 89.99, image: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=500" },
            { id: 4, name: "Ultra-Wide Gaming Monitor 34\"", category: "computers", price: 499.99, image: "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=500" },
            { id: 5, name: "Portable Bluetooth Speaker", category: "audio", price: 59.95, image: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500" },
            { id: 6, name: "4K Web Camera with Microphone", category: "accessories", price: 79.00, image: "https://images.unsplash.com/photo-1587826080692-f439cd0b70da?w=500" },
            { id: 7, name: "Slim Ultrabook Laptop 15\"", category: "computers", price: 999.99, image: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500" },
            { id: 8, name: "True Wireless Earbuds", category: "audio", price: 129.99, image: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=500" }
        ];

        let cart = [];

        // --- DOM ELEMENTS ---
        const productGrid = document.getElementById("productGrid");
        const categoryFilter = document.getElementById("categoryFilter");
        const headerCategorySelect = document.getElementById("headerCategorySelect");
        const priceFilter = document.getElementById("priceFilter");
        const priceValue = document.getElementById("priceValue");
        const sortFilter = document.getElementById("sortFilter");
        const searchInput = document.getElementById("searchInput");
        const searchBtn = document.getElementById("searchBtn");

        const cartToggleBtn = document.getElementById("cartToggleBtn");
        const closeCartBtn = document.getElementById("closeCartBtn");
        const cartDrawer = document.getElementById("cartDrawer");
        const cartOverlay = document.getElementById("cartOverlay");
        const cartItemsContainer = document.getElementById("cartItemsContainer");
        const cartTotal = document.getElementById("cartTotal");
        const cartBadge = document.getElementById("cartBadge");

        const checkoutModal = document.getElementById("checkoutModal");
        const openCheckoutBtn = document.getElementById("openCheckoutBtn");
        const closeCheckoutBtn = document.getElementById("closeCheckoutBtn");
        const checkoutForm = document.getElementById("checkoutForm");
        const toast = document.getElementById("toastNotification");

        // --- INITIALIZATION ---
        function initApp() {
            loadCartFromStorage();
            renderProducts(products);
            updateCartUI();
            attachEventListeners();
        }

        // --- RENDERING PRODUCTS ---
        function renderProducts(items) {
            productGrid.innerHTML = "";
            if (items.length === 0) {
                productGrid.innerHTML = `<p style="grid-column: 1/-1; text-align: center; color: var(--text-muted); padding: 2rem;">No products found matching your criteria.</p>`;
                return;
            }

            items.forEach(product => {
                const card = document.createElement("div");
                card.className = "product-card";
                card.innerHTML = `
                    <img class="product-image" src="${product.image}" alt="${product.name}">
                    <div class="product-info">
                        <div class="product-category">${product.category}</div>
                        <div class="product-title" title="${product.name}">${product.name}</div>
                        <div class="amazon-badge-row">
                            <span class="star-rating">★★★★☆</span>
                            <span>(4.5)</span>
                        </div>
                        <div class="product-price">$${product.price.toFixed(2)}</div>
                        <div class="prime-shipping"><strong>prime</strong> FREE Delivery Tomorrow</div>
                        <button class="add-to-cart-btn" onclick="addToCart(${product.id})">Add to Cart</button>
                    </div>
                `;
                productGrid.appendChild(card);
            });
        }

        // --- FILTERING & SORTING LOGIC ---
        function filterProducts() {
            const searchTerm = searchInput.value.toLowerCase().trim();
            const selectedCategory = categoryFilter.value;
            const maxPrice = parseFloat(priceFilter.value);
            const sortOption = sortFilter.value;

            let filtered = products.filter(product => {
                const matchesSearch = product.name.toLowerCase().includes(searchTerm);
                const matchesCategory = selectedCategory === "all" || product.category === selectedCategory;
                const matchesPrice = product.price <= maxPrice;
                return matchesSearch && matchesCategory && matchesPrice;
            });

            if (sortOption === "low-high") {
                filtered.sort((a, b) => a.price - b.price);
            } else if (sortOption === "high-low") {
                filtered.sort((a, b) => b.price - a.price);
            }

            renderProducts(filtered);
        }

        // --- CART OPERATIONS ---
        window.addToCart = function(productId) {
            const product = products.find(p => p.id === productId);
            const existingItem = cart.find(item => item.id === productId);

            if (existingItem) {
                existingItem.quantity += 1;
            } else {
                cart.push({ ...product, quantity: 1 });
            }

            saveCartToStorage();
            updateCartUI();
            showToast(`Added "${product.name}" to cart`);
        };

        function updateQuantity(productId, delta) {
            const item = cart.find(i => i.id === productId);
            if (!item) return;

            item.quantity += delta;
            if (item.quantity <= 0) {
                removeFromCart(productId);
            } else {
                saveCartToStorage();
                updateCartUI();
            }
        }

        function removeFromCart(productId) {
            cart = cart.filter(item => item.id !== productId);
            saveCartToStorage();
            updateCartUI();
        }

        // --- CART UI UPDATE ---
        function updateCartUI() {
            const totalCount = cart.reduce((sum, item) => sum + item.quantity, 0);
            cartBadge.textContent = totalCount;

            cartItemsContainer.innerHTML = "";
            if (cart.length === 0) {
                cartItemsContainer.innerHTML = `<p style="text-align: center; color: var(--text-muted); margin-top: 2rem;">Your Shopping Cart is empty.</p>`;
            } else {
                cart.forEach(item => {
                    const itemEl = document.createElement("div");
                    itemEl.className = "cart-item";
                    itemEl.innerHTML = `
                        <img src="${item.image}" alt="${item.name}">
                        <div class="cart-item-details">
                            <div class="cart-item-title">${item.name}</div>
                            <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                            <div class="cart-controls">
                                <button class="quantity-btn" onclick="updateQuantity(${item.id}, -1)">-</button>
                                <span>${item.quantity}</span>
                                <button class="quantity-btn" onclick="updateQuantity(${item.id}, 1)">+</button>
                                <button class="remove-btn" onclick="removeFromCart(${item.id})">Delete</button>
                            </div>
                        </div>
                    `;
                    cartItemsContainer.appendChild(itemEl);
                });
            }

            const totalSum = cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);
            cartTotal.textContent = `$${totalSum.toFixed(2)}`;
        }

        // --- PERSISTENCE ---
        function saveCartToStorage() {
            localStorage.setItem("electroMart_cart", JSON.stringify(cart));
        }

        function loadCartFromStorage() {
            const savedCart = localStorage.getItem("electroMart_cart");
            if (savedCart) {
                try {
                    cart = JSON.parse(savedCart);
                } catch (e) {
                    cart = [];
                }
            }
        }

        // --- TOAST NOTIFICATIONS ---
        function showToast(message) {
            toast.textContent = message;
            toast.classList.add("show");
            setTimeout(() => {
                toast.classList.remove("show");
            }, 2500);
        }

        // --- EVENT LISTENERS ---
        function attachEventListeners() {
            searchInput.addEventListener("input", filterProducts);
            searchBtn.addEventListener("click", filterProducts);

            categoryFilter.addEventListener("change", (e) => {
                headerCategorySelect.value = e.target.value;
                filterProducts();
            });

            headerCategorySelect.addEventListener("change", (e) => {
                categoryFilter.value = e.target.value;
                filterProducts();
            });

            sortFilter.addEventListener("change", filterProducts);
            priceFilter.addEventListener("input", (e) => {
                priceValue.textContent = `$${e.target.value}`;
                filterProducts();
            });

            cartToggleBtn.addEventListener("click", () => {
                cartDrawer.classList.add("open");
                cartOverlay.classList.add("open");
            });

            const closeCart = () => {
                cartDrawer.classList.remove("open");
                cartOverlay.classList.remove("open");
            };

            closeCartBtn.addEventListener("click", closeCart);
            cartOverlay.addEventListener("click", closeCart);

            openCheckoutBtn.addEventListener("click", () => {
                if (cart.length === 0) {
                    alert("Your cart is empty!");
                    return;
                }
                closeCart();
                checkoutModal.classList.add("open");
            });

            closeCheckoutBtn.addEventListener("click", () => {
                checkoutModal.classList.remove("open");
            });

            checkoutForm.addEventListener("submit", (e) => {
                e.preventDefault();
                const name = document.getElementById("custName").value;
                alert(`Thank you for your order, ${name}! Your purchase has been processed.`);
                
                cart = [];
                saveCartToStorage();
                updateCartUI();
                
                checkoutForm.reset();
                checkoutModal.classList.remove("open");
            });
        }

        document.addEventListener("DOMContentLoaded", initApp);
    </script>
</body>
</html>
