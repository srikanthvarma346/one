<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ElectroMart - Modern Tech Store</title>
    <style>
        /* --- CSS STYLES --- */
        :root {
            --primary: #2563eb;
            --primary-hover: #1d4ed8;
            --bg-dark: #0f172a;
            --bg-light: #f8fafc;
            --card-bg: #ffffff;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --accent: #ef4444;
            --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--bg-light);
            color: var(--text-main);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navigation Bar */
        header {
            background-color: var(--bg-dark);
            color: white;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: var(--shadow);
        }

        .navbar {
            max-width: 1200px;
            margin: 0 auto;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: #38bdf8;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .search-bar {
            flex: 1;
            max-width: 400px;
            margin: 0 2rem;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 0.6rem 1rem;
            border-radius: 20px;
            border: none;
            outline: none;
            font-size: 0.9rem;
        }

        .cart-btn-container {
            position: relative;
        }

        .cart-btn {
            background: var(--primary);
            color: white;
            border: none;
            padding: 0.6rem 1.2rem;
            border-radius: 20px;
            cursor: pointer;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            transition: background 0.2s;
        }

        .cart-btn:hover {
            background: var(--primary-hover);
        }

        .cart-badge {
            background: var(--accent);
            color: white;
            font-size: 0.75rem;
            padding: 0.2rem 0.5rem;
            border-radius: 50%;
            font-weight: bold;
        }

        /* Main Layout */
        .container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1rem;
            display: grid;
            grid-template-columns: 250px 1fr;
            gap: 2rem;
            flex: 1;
        }

        /* Sidebar Filters */
        .sidebar {
            background: var(--card-bg);
            padding: 1.5rem;
            border-radius: 8px;
            box-shadow: var(--shadow);
            height: fit-content;
        }

        .sidebar h3 {
            margin-bottom: 1rem;
            font-size: 1.1rem;
            border-bottom: 2px solid var(--border);
            padding-bottom: 0.5rem;
        }

        .filter-group {
            margin-bottom: 1.5rem;
        }

        .filter-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
            color: var(--text-muted);
        }

        .filter-group select, .filter-group input {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid var(--border);
            border-radius: 4px;
            outline: none;
        }

        /* Product Grid */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 1.5rem;
        }

        .product-card {
            background: var(--card-bg);
            border-radius: 8px;
            overflow: hidden;
            box-shadow: var(--shadow);
            display: flex;
            flex-direction: column;
            transition: transform 0.2s;
        }

        .product-card:hover {
            transform: translateY(-4px);
        }

        .product-image {
            width: 100%;
            height: 180px;
            object-fit: cover;
            background: #f1f5f9;
        }

        .product-info {
            padding: 1rem;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-title {
            font-size: 1rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .product-category {
            font-size: 0.75rem;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 0.5rem;
        }

        .product-price {
            font-size: 1.2rem;
            font-weight: 700;
            color: var(--primary);
            margin-top: auto;
            margin-bottom: 1rem;
        }

        .add-to-cart-btn {
            width: 100%;
            padding: 0.6rem;
            background: var(--bg-dark);
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
            transition: background 0.2s;
        }

        .add-to-cart-btn:hover {
            background: var(--primary);
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
            box-shadow: -2px 0 10px rgba(0,0,0,0.1);
            z-index: 201;
            transition: right 0.3s ease;
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.open {
            right: 0;
        }

        .cart-overlay.open {
            display: block;
        }

        .cart-header {
            padding: 1.5rem;
            background: var(--bg-dark);
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
            padding: 1.5rem;
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
            object-fit: cover;
            border-radius: 4px;
        }

        .cart-item-details {
            flex: 1;
        }

        .cart-item-title {
            font-size: 0.9rem;
            font-weight: 600;
        }

        .cart-item-price {
            color: var(--text-muted);
            font-size: 0.85rem;
        }

        .cart-controls {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-top: 0.5rem;
        }

        .quantity-btn {
            background: var(--border);
            border: none;
            width: 24px;
            height: 24px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        .remove-btn {
            background: none;
            border: none;
            color: var(--accent);
            cursor: pointer;
            font-size: 0.8rem;
            margin-left: auto;
        }

        .cart-footer {
            padding: 1.5rem;
            border-top: 1px solid var(--border);
            background: #f8fafc;
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
            padding: 0.8rem;
            background: #10b981;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
        }

        .checkout-btn:hover {
            background: #059669;
        }

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

        .modal.open {
            display: flex;
        }

        .modal-content {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            max-width: 500px;
            width: 90%;
            box-shadow: var(--shadow);
        }

        .modal-content h2 {
            margin-bottom: 1rem;
            color: var(--text-main);
        }

        .form-group {
            margin-bottom: 1rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.3rem;
            font-size: 0.85rem;
        }

        .form-group input {
            width: 100%;
            padding: 0.6rem;
            border: 1px solid var(--border);
            border-radius: 4px;
        }

        .modal-actions {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .modal-actions button {
            flex: 1;
            padding: 0.7rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
        }

        .btn-confirm {
            background: var(--primary);
            color: white;
        }

        .btn-cancel {
            background: var(--border);
            color: var(--text-main);
        }

        /* Notification Toast */
        .toast {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--bg-dark);
            color: white;
            padding: 0.8rem 1.5rem;
            border-radius: 4px;
            box-shadow: var(--shadow);
            transform: translateY(100px);
            opacity: 0;
            transition: all 0.3s ease;
            z-index: 400;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* Responsive Breakpoints */
        @media (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
            }
            .cart-drawer {
                width: 100%;
                right: -100%;
            }
            .search-bar {
                margin: 0 0.5rem;
            }
        }
    </style>
</head>
<body>

    <header>
        <div class="navbar">
            <a href="#" class="logo">⚡ ElectroMart</a>
            <div class="search-bar">
                <input type="text" id="searchInput" placeholder="Search products...">
            </div>
            <div class="cart-btn-container">
                <button class="cart-btn" id="cartToggleBtn">
                    🛒 Cart
                    <span class="cart-badge" id="cartBadge">0</span>
                </button>
            </div>
        </div>
    </header>

    <div class="container">
        <aside class="sidebar">
            <h3>Filters</h3>
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
                <label for="priceFilter">Max Price ($)</label>
                <input type="range" id="priceFilter" min="10" max="1500" value="1500" step="10">
                <span id="priceValue">$1500</span>
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

        <main class="product-grid" id="productGrid">
            </main>
    </div>

    <div class="cart-overlay" id="cartOverlay"></div>
    <div class="cart-drawer" id="cartDrawer">
        <div class="cart-header">
            <h2>Your Shopping Cart</h2>
            <button class="close-cart" id="closeCartBtn">&times;</button>
        </div>
        <div class="cart-items" id="cartItemsContainer">
            </div>
        <div class="cart-footer">
            <div class="total-row">
                <span>Total:</span>
                <span id="cartTotal">$0.00</span>
            </div>
            <button class="checkout-btn" id="openCheckoutBtn">Proceed to Checkout</button>
        </div>
    </div>

    <div class="modal" id="checkoutModal">
        <div class="modal-content">
            <h2>Complete Your Purchase</h2>
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
                    <label for="custAddress">Shipping Address</label>
                    <input type="text" id="custAddress" required placeholder="123 Main St, City">
                </div>
                <div class="modal-actions">
                    <button type="button" class="btn-cancel" id="closeCheckoutBtn">Cancel</button>
                    <button type="submit" class="btn-confirm">Place Order</button>
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
        const priceFilter = document.getElementById("priceFilter");
        const priceValue = document.getElementById("priceValue");
        const sortFilter = document.getElementById("sortFilter");
        const searchInput = document.getElementById("searchInput");

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
                        <div class="product-title">${product.name}</div>
                        <div class="product-price">$${product.price.toFixed(2)}</div>
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
            // Update total badge count
            const totalCount = cart.reduce((sum, item) => sum + item.quantity, 0);
            cartBadge.textContent = totalCount;

            // Render Cart Items
            cartItemsContainer.innerHTML = "";
            if (cart.length === 0) {
                cartItemsContainer.innerHTML = `<p style="text-align: center; color: var(--text-muted); margin-top: 2rem;">Your cart is empty.</p>`;
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
                                <button class="remove-btn" onclick="removeFromCart(${item.id})">Remove</button>
                            </div>
                        </div>
                    `;
                    cartItemsContainer.appendChild(itemEl);
                });
            }

            // Calculate and Display Total
            const totalSum = cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);
            cartTotal.textContent = `$${totalSum.toFixed(2)}`;
        }

        // --- PERSISTENCE (LOCAL STORAGE) ---
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
            // Filters
            searchInput.addEventListener("input", filterProducts);
            categoryFilter.addEventListener("change", filterProducts);
            sortFilter.addEventListener("change", filterProducts);
            priceFilter.addEventListener("input", (e) => {
                priceValue.textContent = `$${e.target.value}`;
                filterProducts();
            });

            // Cart Drawer Toggles
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

            // Checkout Modal Toggles
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

            // Checkout Form Submit
            checkoutForm.addEventListener("submit", (e) => {
                e.preventDefault();
                const name = document.getElementById("custName").value;
                alert(`Thank you for your order, ${name}! Your purchase has been processed.`);
                
                // Clear cart state
                cart = [];
                saveCartToStorage();
                updateCartUI();
                
                checkoutForm.reset();
                checkoutModal.classList.remove("open");
            });
        }

        // Initialize application on DOM load
        document.addEventListener("DOMContentLoaded", initApp);
    </script>
</body>
</html>
