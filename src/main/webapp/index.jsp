<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopSphere - Modern E-Commerce Experience</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <style>
        /* =========================================================
           CSS VARIABLES & DESIGN SYSTEM
        ========================================================= */
        :root {
            --bg-body: #f8fafc;
            --bg-surface: #ffffff;
            --bg-glass: rgba(255, 255, 255, 0.85);
            --border-color: #e2e8f0;
            --border-hover: #cbd5e1;
            --text-primary: #0f172a;
            --text-secondary: #475569;
            --text-muted: #94a3b8;
            --accent-primary: #6366f1;
            --accent-hover: #4f46e5;
            --accent-soft: #eef2ff;
            --badge-text: #ffffff;
            --card-shadow: 0 10px 25px -5px rgba(15, 23, 42, 0.04), 0 8px 10px -6px rgba(15, 23, 42, 0.04);
            --card-shadow-hover: 0 20px 30px -10px rgba(15, 23, 42, 0.12), 0 10px 15px -5px rgba(15, 23, 42, 0.08);
            --radius-sm: 8px;
            --radius-md: 14px;
            --radius-lg: 20px;
        }

        body.dark {
            --bg-body: #090d16;
            --bg-surface: #111827;
            --bg-glass: rgba(17, 24, 39, 0.85);
            --border-color: #1f2937;
            --border-hover: #374151;
            --text-primary: #f8fafc;
            --text-secondary: #94a3b8;
            --text-muted: #64748b;
            --accent-soft: #1e1b4b;
            --card-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.3);
            --card-shadow-hover: 0 20px 30px -10px rgba(0, 0, 0, 0.5);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background: var(--bg-body);
            color: var(--text-primary);
            min-height: 100vh;
            padding-top: 90px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        button, input, select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* =========================================================
           NAVIGATION
        ========================================================= */
        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 32px;
            background: var(--bg-glass);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-color);
            z-index: 1000;
            transition: border-color 0.3s ease, background-color 0.3s ease;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            color: var(--text-primary);
            font-size: 22px;
            font-weight: 800;
            text-decoration: none;
            letter-spacing: -0.5px;
        }

        .brand-icon {
            width: 42px;
            height: 42px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 12px;
            color: white;
            background: linear-gradient(135deg, #6366f1, #a855f7);
            box-shadow: 0 8px 20px rgba(99, 102, 241, 0.3);
        }

        .brand span span {
            color: var(--accent-primary);
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .icon-btn {
            width: 44px;
            height: 44px;
            border: 1px solid var(--border-color);
            border-radius: var(--radius-md);
            background: var(--bg-surface);
            color: var(--text-primary);
            font-size: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s ease;
        }

        .icon-btn:hover {
            border-color: var(--border-hover);
            transform: translateY(-2px);
        }

        .cart-btn {
            position: relative;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 20px;
            height: 44px;
            border: none;
            border-radius: var(--radius-md);
            color: white;
            background: linear-gradient(135deg, var(--accent-primary), var(--accent-hover));
            font-size: 14px;
            font-weight: 700;
            box-shadow: 0 8px 20px rgba(99, 102, 241, 0.25);
            transition: all 0.25s ease;
        }

        .cart-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 25px rgba(99, 102, 241, 0.35);
        }

        #cart-count {
            min-width: 22px;
            height: 22px;
            padding: 0 6px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 20px;
            color: var(--accent-primary);
            background: white;
            font-size: 12px;
            font-weight: 800;
        }

        /* =========================================================
           MAIN LAYOUT & HERO
        ========================================================= */
        main {
            max-width: 1400px;
            margin: 0 auto;
            padding: 24px 32px 80px;
        }

        .hero-banner {
            background: linear-gradient(135deg, #4f46e5, #7c3aed, #db2777);
            border-radius: var(--radius-lg);
            padding: 40px;
            color: white;
            margin-bottom: 32px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 15px 30px rgba(99, 102, 241, 0.2);
        }

        .hero-text h1 {
            font-size: 32px;
            font-weight: 800;
            margin-bottom: 8px;
            letter-spacing: -0.5px;
        }

        .hero-text p {
            opacity: 0.9;
            font-size: 15px;
            max-width: 500px;
        }

        /* =========================================================
           SEARCH AND CATEGORY FILTER BAR
        ========================================================= */
        .controls-wrapper {
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            border-radius: var(--radius-lg);
            padding: 16px 20px;
            margin-bottom: 28px;
            box-shadow: var(--card-shadow);
        }

        .search-panel {
            display: grid;
            grid-template-columns: 1fr 220px;
            gap: 16px;
            margin-bottom: 16px;
        }

        .search-wrapper {
            position: relative;
        }

        .search-area {
            width: 100%;
            height: 48px;
            padding: 0 48px 0 46px;
            border: 1px solid var(--border-color);
            border-radius: var(--radius-md);
            outline: none;
            background: var(--bg-body);
            color: var(--text-primary);
            font-size: 14px;
            transition: all 0.2s ease;
        }

        .search-area:focus {
            border-color: var(--accent-primary);
            box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.1);
        }

        .search-icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 16px;
            color: var(--text-muted);
        }

        .clear-search {
            position: absolute;
            right: 14px;
            top: 50%;
            transform: translateY(-50%);
            width: 24px;
            height: 24px;
            border: none;
            border-radius: 50%;
            background: var(--border-color);
            color: var(--text-secondary);
            display: none;
            align-items: center;
            justify-content: center;
            font-size: 12px;
        }

        .category-filter {
            height: 48px;
            padding: 0 16px;
            border: 1px solid var(--border-color);
            border-radius: var(--radius-md);
            outline: none;
            background: var(--bg-body);
            color: var(--text-primary);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
        }

        .category-chips {
            display: flex;
            align-items: center;
            gap: 10px;
            overflow-x: auto;
            scrollbar-width: none;
        }

        .category-chips::-webkit-scrollbar {
            display: none;
        }

        .filter-chip {
            padding: 8px 18px;
            border: 1px solid var(--border-color);
            border-radius: 30px;
            background: var(--bg-body);
            color: var(--text-secondary);
            font-size: 13px;
            font-weight: 600;
            white-space: nowrap;
            transition: all 0.2s ease;
        }

        .filter-chip:hover {
            border-color: var(--accent-primary);
            color: var(--accent-primary);
        }

        .filter-chip.active {
            background: var(--accent-primary);
            color: white;
            border-color: var(--accent-primary);
            box-shadow: 0 4px 12px rgba(99, 102, 241, 0.25);
        }

        .results-bar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 24px;
            padding: 0 4px;
        }

        .results-text {
            color: var(--text-secondary);
            font-size: 14px;
            font-weight: 600;
        }

        .clear-filters {
            border: none;
            padding: 6px 12px;
            border-radius: 6px;
            background: #fee2e2;
            color: #ef4444;
            font-size: 12px;
            font-weight: 700;
            display: none;
        }

        /* =========================================================
           UNIFIED PRODUCT GRID & CARDS
        ========================================================= */
        .item-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 24px;
        }

        .item-card {
            position: relative;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            padding: 14px;
            border: 1px solid var(--border-color);
            border-radius: var(--radius-lg);
            background: var(--bg-surface);
            box-shadow: var(--card-shadow);
            transition: all 0.3s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .item-card:hover {
            transform: translateY(-6px);
            border-color: var(--border-hover);
            box-shadow: var(--card-shadow-hover);
        }

        .item-img {
            position: relative;
            width: 100%;
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            margin-bottom: 16px;
            border-radius: var(--radius-md);
            background: var(--bg-body);
        }

        .item-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .item-card:hover .item-img img {
            transform: scale(1.06);
        }

        /* Vibrant Category Badge */
        .category-tag-badge {
            position: absolute;
            left: 10px;
            top: 10px;
            padding: 6px 12px;
            border-radius: 20px;
            color: var(--badge-text);
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            backdrop-filter: blur(8px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            z-index: 2;
        }

        .badge-electronics { background: rgba(37, 99, 235, 0.9); }
        .badge-fashion { background: rgba(219, 39, 119, 0.9); }
        .badge-home { background: rgba(16, 185, 129, 0.9); }
        .badge-beauty { background: rgba(147, 51, 234, 0.9); }
        .badge-sports { background: rgba(245, 158, 11, 0.9); }

        .wishlist-btn {
            position: absolute;
            right: 10px;
            top: 10px;
            width: 34px;
            height: 34px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: none;
            border-radius: 50%;
            color: var(--text-muted);
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(4px);
            font-size: 16px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            z-index: 3;
            transition: all 0.2s ease;
        }

        .wishlist-btn:hover {
            transform: scale(1.1);
            color: #ef4444;
        }

        .wishlist-btn.active {
            color: #ef4444;
            background: white;
        }

        .item-title {
            min-height: 44px;
            margin-bottom: 6px;
            color: var(--text-primary);
            font-size: 15px;
            font-weight: 700;
            line-height: 1.4;
        }

        .product-rating {
            margin-bottom: 10px;
            color: #f59e0b;
            font-size: 12px;
            font-weight: 600;
        }

        .product-rating span {
            color: var(--text-muted);
            margin-left: 4px;
        }

        .item-price {
            margin-bottom: 16px;
            color: var(--accent-primary);
            font-size: 20px;
            font-weight: 800;
        }

        .card-buttons {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 8px;
            margin-top: auto;
        }

        .btn {
            height: 40px;
            padding: 0 10px;
            border: none;
            border-radius: var(--radius-sm);
            font-size: 12px;
            font-weight: 700;
            transition: all 0.2s ease;
        }

        .btn:active {
            transform: scale(0.96);
        }

        .add-cart-btn {
            color: white;
            background: var(--accent-primary);
        }

        .add-cart-btn:hover {
            background: var(--accent-hover);
        }

        .details-btn {
            color: var(--text-secondary);
            background: var(--bg-body);
            border: 1px solid var(--border-color);
        }

        .details-btn:hover {
            background: var(--border-color);
            color: var(--text-primary);
        }

        .no-results {
            display: none;
            padding: 80px 20px;
            text-align: center;
        }

        .no-results-icon {
            margin-bottom: 16px;
            font-size: 48px;
        }

        .no-results h3 {
            margin-bottom: 8px;
            color: var(--text-primary);
            font-size: 20px;
        }

        .no-results p {
            color: var(--text-muted);
            font-size: 14px;
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
            background: rgba(15, 23, 42, 0.6);
            backdrop-filter: blur(8px);
            z-index: 2000;
        }

        .modal-content {
            width: 100%;
            max-width: 550px;
            max-height: 85vh;
            overflow-y: auto;
            padding: 28px;
            border-radius: var(--radius-lg);
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
            animation: modalSlide 0.25s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .modal-content.large {
            max-width: 800px;
        }

        @keyframes modalSlide {
            from {
                opacity: 0;
                transform: translateY(20px) scale(0.96);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .modal-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--border-color);
        }

        .modal-header h3 {
            color: var(--text-primary);
            font-size: 20px;
            font-weight: 800;
        }

        .close-btn {
            width: 36px;
            height: 36px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: none;
            border-radius: var(--radius-sm);
            color: var(--text-muted);
            background: var(--bg-body);
            font-size: 18px;
            transition: all 0.2s ease;
        }

        .close-btn:hover {
            color: #ef4444;
            background: #fee2e2;
        }

        /* DETAILS MODAL */
        .details-layout {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 28px;
        }

        .details-image {
            width: 100%;
            height: 320px;
            overflow: hidden;
            border-radius: var(--radius-md);
            background: var(--bg-body);
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
            margin-bottom: 12px;
            padding: 4px 12px;
            border-radius: 20px;
            color: var(--accent-primary);
            background: var(--accent-soft);
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .details-info h2 {
            margin-bottom: 10px;
            color: var(--text-primary);
            font-size: 22px;
            font-weight: 800;
        }

        .details-price {
            margin-bottom: 12px;
            color: var(--accent-primary);
            font-size: 24px;
            font-weight: 800;
        }

        .details-rating {
            margin-bottom: 16px;
            color: #f59e0b;
            font-size: 14px;
        }

        .details-description {
            margin-bottom: 24px;
            color: var(--text-secondary);
            font-size: 14px;
            line-height: 1.6;
        }

        .details-actions {
            margin-top: auto;
        }

        .details-actions button {
            width: 100%;
            height: 46px;
            border: none;
            border-radius: var(--radius-md);
            font-weight: 700;
        }

        /* CART MODAL */
        .empty-cart {
            padding: 48px 16px;
            text-align: center;
            color: var(--text-muted);
        }

        .empty-cart-icon {
            margin-bottom: 12px;
            font-size: 48px;
        }

        .empty-cart h4 {
            margin-bottom: 6px;
            color: var(--text-primary);
            font-size: 18px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 70px 1fr auto;
            align-items: center;
            gap: 16px;
            margin-bottom: 12px;
            padding: 12px;
            border: 1px solid var(--border-color);
            border-radius: var(--radius-md);
            background: var(--bg-surface);
        }

        .cart-item-image {
            width: 70px;
            height: 70px;
            overflow: hidden;
            border-radius: var(--radius-sm);
            background: var(--bg-body);
        }

        .cart-item-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .cart-item-name {
            margin-bottom: 4px;
            color: var(--text-primary);
            font-size: 14px;
            font-weight: 700;
        }

        .cart-item-price {
            color: var(--accent-primary);
            font-size: 13px;
            font-weight: 700;
        }

        .quantity-controls {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 8px;
        }

        .quantity-btn {
            width: 26px;
            height: 26px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid var(--border-color);
            border-radius: 6px;
            background: var(--bg-body);
            color: var(--text-primary);
            font-weight: 700;
            font-size: 14px;
        }

        .quantity-btn:hover {
            background: var(--border-color);
        }

        .cart-item-total {
            color: var(--text-primary);
            font-size: 14px;
            font-weight: 800;
        }

        .cart-footer {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid var(--border-color);
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .cart-total-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 18px;
            font-weight: 800;
            color: var(--text-primary);
        }

        .checkout-btn {
            width: 100%;
            height: 48px;
            border: none;
            border-radius: var(--radius-md);
            color: white;
            background: linear-gradient(135deg, var(--accent-primary), var(--accent-hover));
            font-size: 15px;
            font-weight: 700;
            box-shadow: 0 8px 20px rgba(99, 102, 241, 0.25);
        }

        /* RESPONSIVE DESIGN */
        @media (max-width: 850px) {
            nav { padding: 0 16px; }
            main { padding: 16px 16px 60px; }
            .hero-banner { padding: 24px; flex-direction: column; text-align: center; gap: 16px; }
            .search-panel { grid-template-columns: 1fr; }
            .details-layout { grid-template-columns: 1fr; }
            .details-image { height: 240px; }
        }
    </style>
</head>

<body>

    <!-- NAVIGATION -->
    <nav>
        <a href="#" class="brand">
            <div class="brand-icon">🛍️</div>
            <span>Shop<span>Sphere</span></span>
        </a>

        <div class="nav-actions">
            <button class="icon-btn" id="theme-toggle" title="Toggle Dark/Light Mode">🌙</button>
            <button class="cart-btn" id="open-cart-btn">
                🛒 Cart <span id="cart-count">0</span>
            </button>
        </div>
    </nav>

    <!-- MAIN CONTENT -->
    <main>

        <!-- HERO BANNER -->
        <section class="hero-banner">
            <div class="hero-text">
                <h1>Explore Premium Products</h1>
                <p>Discover our wide selection across electronics, fashion, home essentials, beauty, and sports.</p>
            </div>
        </section>

        <!-- SEARCH AND FILTER CONTROLS -->
        <section class="controls-wrapper">
            <div class="search-panel">
                <div class="search-wrapper">
                    <span class="search-icon">🔍</span>
                    <input type="text" id="search-input" class="search-area" placeholder="Search across all products...">
                    <button id="clear-search-btn" class="clear-search">✕</button>
                </div>

                <select id="category-select" class="category-filter">
                    <option value="all">All Categories</option>
                    <option value="electronics">Electronics</option>
                    <option value="fashion">Fashion</option>
                    <option value="home">Home & Living</option>
                    <option value="beauty">Beauty</option>
                    <option value="sports">Sports & Outdoors</option>
                </select>
            </div>

            <!-- CATEGORY CHIPS BAR -->
            <div class="category-chips">
                <button class="filter-chip active" data-category="all">All Items</button>
                <button class="filter-chip" data-category="electronics">💻 Electronics</button>
                <button class="filter-chip" data-category="fashion">👕 Fashion</button>
                <button class="filter-chip" data-category="home">🏠 Home & Living</button>
                <button class="filter-chip" data-category="beauty">✨ Beauty</button>
                <button class="filter-chip" data-category="sports">⚽ Sports</button>
            </div>
        </section>

        <!-- RESULTS INFORMATION BAR -->
        <div class="results-bar">
            <span id="results-count" class="results-text">Showing all products</span>
            <button id="clear-filters-btn" class="clear-filters">Clear Filters</button>
        </div>

        <!-- UNIFIED PRODUCT GRID -->
        <div id="item-grid" class="item-grid">

            <!-- ELECTRONICS -->
            <div class="item-card" data-id="1" data-category="electronics" data-name="Wireless Noise-Canceling Headphones" data-price="199.99">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80" alt="Headphones">
                    <span class="category-tag-badge badge-electronics">Electronics</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Wireless Noise-Canceling Headphones</div>
                <div class="product-rating">★★★★★ <span>(4.8)</span></div>
                <div class="item-price">$199.99</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="2" data-category="electronics" data-name="Smart Fitness Watch V2" data-price="149.50">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&q=80" alt="Smartwatch">
                    <span class="category-tag-badge badge-electronics">Electronics</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Smart Fitness Watch V2</div>
                <div class="product-rating">★★★★☆ <span>(4.5)</span></div>
                <div class="item-price">$149.50</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="3" data-category="electronics" data-name="Portable Bluetooth Speaker" data-price="79.99">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500&q=80" alt="Speaker">
                    <span class="category-tag-badge badge-electronics">Electronics</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Portable Bluetooth Speaker</div>
                <div class="product-rating">★★★★★ <span>(4.7)</span></div>
                <div class="item-price">$79.99</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="4" data-category="electronics" data-name="Ergonomic Wireless Mouse" data-price="49.99">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=500&q=80" alt="Mouse">
                    <span class="category-tag-badge badge-electronics">Electronics</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Ergonomic Wireless Mouse</div>
                <div class="product-rating">★★★★☆ <span>(4.4)</span></div>
                <div class="item-price">$49.99</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <!-- FASHION -->
            <div class="item-card" data-id="5" data-category="fashion" data-name="Classic Minimalist Leather Watch" data-price="89.00">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=500&q=80" alt="Leather Watch">
                    <span class="category-tag-badge badge-fashion">Fashion</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Classic Minimalist Leather Watch</div>
                <div class="product-rating">★★★★★ <span>(4.9)</span></div>
                <div class="item-price">$89.00</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="6" data-category="fashion" data-name="Urban Denim Outerwear Jacket" data-price="120.00">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1551028719-00167b16eac5?w=500&q=80" alt="Jacket">
                    <span class="category-tag-badge badge-fashion">Fashion</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Urban Denim Outerwear Jacket</div>
                <div class="product-rating">★★★★☆ <span>(4.6)</span></div>
                <div class="item-price">$120.00</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="7" data-category="fashion" data-name="Retro Polarized Sunglasses" data-price="35.00">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=500&q=80" alt="Sunglasses">
                    <span class="category-tag-badge badge-fashion">Fashion</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Retro Polarized Sunglasses</div>
                <div class="product-rating">★★★★★ <span>(4.8)</span></div>
                <div class="item-price">$35.00</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <!-- HOME & LIVING -->
            <div class="item-card" data-id="8" data-category="home" data-name="Modern Ceramic Desk Lamp" data-price="45.99">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=500&q=80" alt="Desk Lamp">
                    <span class="category-tag-badge badge-home">Home</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Modern Ceramic Desk Lamp</div>
                <div class="product-rating">★★★★★ <span>(4.7)</span></div>
                <div class="item-price">$45.99</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="9" data-category="home" data-name="Aromatic Essential Oil Diffuser" data-price="29.99">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1602928321679-560bb453f190?w=500&q=80" alt="Diffuser">
                    <span class="category-tag-badge badge-home">Home</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Aromatic Essential Oil Diffuser</div>
                <div class="product-rating">★★★★☆ <span>(4.5)</span></div>
                <div class="item-price">$29.99</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="10" data-category="home" data-name="Minimalist Wooden Wall Clock" data-price="38.50">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1563861826100-9cb868fdbe1c?w=500&q=80" alt="Clock">
                    <span class="category-tag-badge badge-home">Home</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Minimalist Wooden Wall Clock</div>
                <div class="product-rating">★★★★★ <span>(4.9)</span></div>
                <div class="item-price">$38.50</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <!-- BEAUTY -->
            <div class="item-card" data-id="11" data-category="beauty" data-name="Organic Botanical Face Serum" data-price="34.50">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1620916566398-39f1143ab7be?w=500&q=80" alt="Serum">
                    <span class="category-tag-badge badge-beauty">Beauty</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Organic Botanical Face Serum</div>
                <div class="product-rating">★★★★★ <span>(4.9)</span></div>
                <div class="item-price">$34.50</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="12" data-category="beauty" data-name="Hydrating Facial Moisturizer" data-price="28.00">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1556228720-195a672e8a03?w=500&q=80" alt="Moisturizer">
                    <span class="category-tag-badge badge-beauty">Beauty</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Hydrating Facial Moisturizer</div>
                <div class="product-rating">★★★★☆ <span>(4.6)</span></div>
                <div class="item-price">$28.00</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <!-- SPORTS & OUTDOORS -->
            <div class="item-card" data-id="13" data-category="sports" data-name="Eco-Friendly Non-Slip Yoga Mat" data-price="42.00">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=500&q=80" alt="Yoga Mat">
                    <span class="category-tag-badge badge-sports">Sports</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Eco-Friendly Non-Slip Yoga Mat</div>
                <div class="product-rating">★★★★★ <span>(4.8)</span></div>
                <div class="item-price">$42.00</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="14" data-category="sports" data-name="Insulated Stainless Steel Water Bottle" data-price="24.99">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=500&q=80" alt="Water Bottle">
                    <span class="category-tag-badge badge-sports">Sports</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Insulated Stainless Steel Water Bottle</div>
                <div class="product-rating">★★★★★ <span>(4.9)</span></div>
                <div class="item-price">$24.99</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

            <div class="item-card" data-id="15" data-category="sports" data-name="Adjustable Dumbbell Set" data-price="119.00">
                <div class="item-img">
                    <img src="https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?w=500&q=80" alt="Dumbbells">
                    <span class="category-tag-badge badge-sports">Sports</span>
                    <button class="wishlist-btn">♥</button>
                </div>
                <div class="item-title">Adjustable Dumbbell Set</div>
                <div class="product-rating">★★★★☆ <span>(4.7)</span></div>
                <div class="item-price">$119.00</div>
                <div class="card-buttons">
                    <button class="btn add-cart-btn">Add to Cart</button>
                    <button class="btn details-btn">Details</button>
                </div>
            </div>

        </div>

        <!-- NO RESULTS PLACEHOLDER -->
        <div id="no-results" class="no-results">
            <div class="no-results-icon">🔍</div>
            <h3>No products match your search</h3>
            <p>Try adjusting your filters or search terms.</p>
        </div>

    </main>

    <!-- PRODUCT DETAILS MODAL -->
    <div id="details-modal" class="modal-overlay">
        <div class="modal-content large">
            <div class="modal-header">
                <h3>Product Details</h3>
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
                    <p id="modal-desc" class="details-description">Crafted with premium components for high reliability and exceptional performance in everyday use.</p>
                    <div class="details-actions">
                        <button id="modal-add-cart" class="btn add-cart-btn">Add to Cart</button>
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
                <div class="empty-cart">
                    <div class="empty-cart-icon">🛒</div>
                    <h4>Your Cart is Empty</h4>
                    <p>Add items to your cart to review them here.</p>
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

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            let cart = [];
            const darkThemeKey = 'shopsphere_dark_theme';

            // DOM Elements
            const themeToggleBtn = document.getElementById('theme-toggle');
            const searchInput = document.getElementById('search-input');
            const clearSearchBtn = document.getElementById('clear-search-btn');
            const categorySelect = document.getElementById('category-select');
            const categoryChips = document.querySelectorAll('.filter-chip');
            const clearFiltersBtn = document.getElementById('clear-filters-btn');
            const resultsCount = document.getElementById('results-count');
            const noResults = document.getElementById('no-results');
            const itemCards = document.querySelectorAll('.item-card');

            // Cart
            const cartBtn = document.getElementById('open-cart-btn');
            const cartModal = document.getElementById('cart-modal');
            const closeCartBtn = document.getElementById('close-cart');
            const cartItemsContainer = document.getElementById('cart-items-container');
            const cartCountBadge = document.getElementById('cart-count');
            const cartSummary = document.getElementById('cart-summary');
            const cartTotalPrice = document.getElementById('cart-total-price');

            // Details
            const detailsModal = document.getElementById('details-modal');
            const closeDetailsBtn = document.getElementById('close-details');
            const modalImg = document.getElementById('modal-img');
            const modalTitle = document.getElementById('modal-title');
            const modalCategory = document.getElementById('modal-category');
            const modalPrice = document.getElementById('modal-price');
            const modalAddCartBtn = document.getElementById('modal-add-cart');

            let currentActiveModalProduct = null;

            // Theme Setup
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

            // Filter Logic
            function filterProducts() {
                const query = searchInput.value.trim().toLowerCase();
                const selectedCat = categorySelect.value;
                let visibleCount = 0;

                clearSearchBtn.style.display = query ? 'flex' : 'none';
                clearFiltersBtn.style.display = (query || selectedCat !== 'all') ? 'inline-block' : 'none';

                categoryChips.forEach(chip => {
                    chip.classList.toggle('active', chip.dataset.category === selectedCat);
                });

                itemCards.forEach(card => {
                    const name = card.dataset.name.toLowerCase();
                    const cat = card.dataset.category;

                    const matchesQuery = name.includes(query);
                    const matchesCategory = selectedCat === 'all' || cat === selectedCat;

                    if (matchesQuery && matchesCategory) {
                        card.style.display = 'flex';
                        visibleCount++;
                    } else {
                        card.style.display = 'none';
                    }
                });

                noResults.style.display = visibleCount === 0 ? 'block' : 'none';
                resultsCount.textContent = `Showing ${visibleCount} product${visibleCount !== 1 ? 's' : ''}`;
            }

            searchInput.addEventListener('input', filterProducts);
            categorySelect.addEventListener('change', filterProducts);

            categoryChips.forEach(chip => {
                chip.addEventListener('click', () => {
                    categorySelect.value = chip.dataset.category;
                    filterProducts();
                });
            });

            clearSearchBtn.addEventListener('click', () => {
                searchInput.value = '';
                filterProducts();
            });

            clearFiltersBtn.addEventListener('click', () => {
                searchInput.value = '';
                categorySelect.value = 'all';
                filterProducts();
            });

            // Wishlist Button Logic
            document.querySelectorAll('.wishlist-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    btn.classList.toggle('active');
                });
            });

            // Cart Logic
            function updateCartUI() {
                const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
                cartCountBadge.textContent = totalItems;

                if (cart.length === 0) {
                    cartItemsContainer.innerHTML = `
                        <div class="empty-cart">
                            <div class="empty-cart-icon">🛒</div>
                            <h4>Your Cart is Empty</h4>
                            <p>Add items to your cart to review them here.</p>
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
                    modalCategory.textContent = cat;
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

            // Modal Controls
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
