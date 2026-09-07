<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AURA - Premier Modern Lifestyle & Tech Store</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    <style>
        /* =========================================================
           CSS VARIABLES & ADVANCED DESIGN SYSTEM
        ========================================================= */
        :root {
            --bg-dark: #07090e;
            --surface-glass: rgba(18, 24, 38, 0.65);
            --surface-glass-hover: rgba(28, 36, 56, 0.75);
            --border-glass: rgba(255, 255, 255, 0.12);
            --border-glow: rgba(99, 102, 241, 0.5);
            
            --text-primary: #ffffff;
            --text-secondary: #94a3b8;
            --text-muted: #64748b;
            
            --accent-gradient: linear-gradient(135deg, #6366f1, #a855f7, #ec4899);
            --accent-glow: rgba(99, 102, 241, 0.4);
            --accent-solid: #6366f1;
            
            --radius-sm: 10px;
            --radius-md: 16px;
            --radius-lg: 24px;
            
            --blur-strength: 20px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg-dark);
            color: var(--text-primary);
            min-height: 100vh;
            padding-top: 100px;
            overflow-x: hidden;
        }

        /* Dynamic Animated Background Scene */
        .app-bg-wrapper {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            z-index: -2;
            overflow: hidden;
        }

        .app-bg-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: brightness(0.25) contrast(1.1) blur(3px);
            transform: scale(1.05);
        }

        .bg-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background: radial-gradient(circle at 20% 20%, rgba(99, 102, 241, 0.15) 0%, transparent 50%),
                        radial-gradient(circle at 80% 80%, rgba(236, 72, 153, 0.12) 0%, transparent 50%),
                        linear-gradient(to bottom, rgba(7, 9, 14, 0.7), #07090e);
            z-index: -1;
            pointer-events: none;
        }

        button, input, select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* =========================================================
           NAVIGATION BAR (GLASSMORPHISM)
        ========================================================= */
        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 84px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 40px;
            background: rgba(10, 14, 23, 0.7);
            backdrop-filter: blur(var(--blur-strength));
            -webkit-backdrop-filter: blur(var(--blur-strength));
            border-bottom: 1px solid var(--border-glass);
            z-index: 1000;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 14px;
            color: var(--text-primary);
            font-size: 24px;
            font-weight: 800;
            text-decoration: none;
            letter-spacing: -0.5px;
        }

        .brand-logo {
            width: 44px;
            height: 44px;
            border-radius: var(--radius-md);
            background: var(--accent-gradient);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
            box-shadow: 0 0 20px var(--accent-glow);
        }

        .brand span {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .cart-btn {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 0 24px;
            height: 46px;
            border: 1px solid var(--border-glass);
            border-radius: 30px;
            color: white;
            background: var(--surface-glass);
            backdrop-filter: blur(var(--blur-strength));
            font-size: 14px;
            font-weight: 700;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .cart-btn:hover {
            border-color: var(--border-glow);
            background: var(--surface-glass-hover);
            transform: translateY(-2px);
            box-shadow: 0 0 20px var(--accent-glow);
        }

        #cart-count {
            width: 24px;
            height: 24px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: var(--accent-gradient);
            color: white;
            font-size: 12px;
            font-weight: 800;
        }

        /* =========================================================
           MAIN CONTAINER & HERO SECTION
        ========================================================= */
        main {
            max-width: 1440px;
            margin: 0 auto;
            padding: 20px 40px 100px;
        }

        .hero-banner {
            position: relative;
            border-radius: var(--radius-lg);
            padding: 60px;
            margin-bottom: 40px;
            overflow: hidden;
            border: 1px solid var(--border-glass);
            background: rgba(18, 24, 38, 0.4);
            backdrop-filter: blur(var(--blur-strength));
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        .hero-bg-img {
            position: absolute;
            top: 0;
            right: 0;
            width: 60%;
            height: 100%;
            object-fit: cover;
            opacity: 0.35;
            mask-image: linear-gradient(to left, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 100%);
            -webkit-mask-image: linear-gradient(to left, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 100%);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 600px;
        }

        .hero-tag {
            display: inline-block;
            padding: 6px 16px;
            border-radius: 20px;
            background: rgba(99, 102, 241, 0.15);
            border: 1px solid rgba(99, 102, 241, 0.3);
            color: #818cf8;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 16px;
        }

        .hero-title {
            font-size: 42px;
            font-weight: 800;
            line-height: 1.15;
            margin-bottom: 16px;
            letter-spacing: -1px;
        }

        .hero-title span {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-desc {
            color: var(--text-secondary);
            font-size: 16px;
            line-height: 1.6;
        }

        /* =========================================================
           CONTROLS & CATEGORIES
        ========================================================= */
        .controls-card {
            background: var(--surface-glass);
            backdrop-filter: blur(var(--blur-strength));
            border: 1px solid var(--border-glass);
            border-radius: var(--radius-lg);
            padding: 20px 24px;
            margin-bottom: 32px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
        }

        .search-row {
            display: grid;
            grid-template-columns: 1fr 240px;
            gap: 20px;
            margin-bottom: 20px;
        }

        .search-box {
            position: relative;
        }

        .search-input {
            width: 100%;
            height: 52px;
            padding: 0 50px 0 52px;
            border: 1px solid var(--border-glass);
            border-radius: var(--radius-md);
            outline: none;
            background: rgba(7, 9, 14, 0.6);
            color: var(--text-primary);
            font-size: 15px;
            transition: all 0.3s ease;
        }

        .search-input:focus {
            border-color: var(--accent-solid);
            box-shadow: 0 0 20px var(--accent-glow);
        }

        .search-icon-svg {
            position: absolute;
            left: 18px;
            top: 50%;
            transform: translateY(-50%);
            width: 20px;
            height: 20px;
            fill: var(--text-muted);
        }

        .clear-search-btn {
            position: absolute;
            right: 16px;
            top: 50%;
            transform: translateY(-50%);
            width: 24px;
            height: 24px;
            border: none;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-secondary);
            display: none;
            align-items: center;
            justify-content: center;
            font-size: 12px;
        }

        .select-input {
            height: 52px;
            padding: 0 20px;
            border: 1px solid var(--border-glass);
            border-radius: var(--radius-md);
            outline: none;
            background: rgba(7, 9, 14, 0.6);
            color: var(--text-primary);
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
        }

        .category-scroll {
            display: flex;
            align-items: center;
            gap: 12px;
            overflow-x: auto;
            padding-bottom: 4px;
            scrollbar-width: none;
        }

        .category-scroll::-webkit-scrollbar {
            display: none;
        }

        .chip {
            padding: 10px 22px;
            border: 1px solid var(--border-glass);
            border-radius: 30px;
            background: rgba(255, 255, 255, 0.03);
            color: var(--text-secondary);
            font-size: 13px;
            font-weight: 600;
            white-space: nowrap;
            transition: all 0.3s ease;
        }

        .chip:hover {
            border-color: var(--border-glow);
            color: var(--text-primary);
            background: rgba(255, 255, 255, 0.08);
        }

        .chip.active {
            background: var(--accent-gradient);
            color: white;
            border-color: transparent;
            box-shadow: 0 0 18px var(--accent-glow);
        }

        /* Results Counter Header */
        .results-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 28px;
            padding: 0 4px;
        }

        .results-title {
            color: var(--text-secondary);
            font-size: 15px;
            font-weight: 600;
        }

        /* =========================================================
           PRODUCT GRID & GLASS CARDS
        ========================================================= */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 28px;
        }

        .product-card {
            display: flex;
            flex-direction: column;
            border: 1px solid var(--border-glass);
            border-radius: var(--radius-lg);
            background: var(--surface-glass);
            backdrop-filter: blur(var(--blur-strength));
            padding: 16px;
            overflow: hidden;
            transition: all 0.35s cubic-bezier(0.16, 1, 0.3, 1);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--border-glow);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5), 0 0 25px var(--accent-glow);
        }

        .image-frame {
            position: relative;
            width: 100%;
            height: 220px;
            border-radius: var(--radius-md);
            overflow: hidden;
            margin-bottom: 18px;
            background: #000;
        }

        .image-frame img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .product-card:hover .image-frame img {
            transform: scale(1.08);
        }

        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 6px 14px;
            border-radius: 20px;
            color: white;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            z-index: 2;
        }

        .badge-electronics { background: rgba(59, 130, 246, 0.85); }
        .badge-fashion { background: rgba(236, 72, 153, 0.85); }
        .badge-home { background: rgba(16, 185, 129, 0.85); }
        .badge-beauty { background: rgba(168, 85, 247, 0.85); }
        .badge-sports { background: rgba(245, 158, 11, 0.85); }

        .like-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border: none;
            border-radius: 50%;
            background: rgba(10, 14, 23, 0.6);
            backdrop-filter: blur(8px);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
            transition: all 0.2s ease;
            z-index: 2;
        }

        .like-btn:hover {
            transform: scale(1.15);
            color: #ef4444;
        }

        .like-btn.active {
            color: #ef4444;
            background: rgba(255, 255, 255, 0.9);
        }

        .item-details {
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .item-title {
            font-size: 16px;
            font-weight: 700;
            color: var(--text-primary);
            margin-bottom: 8px;
            line-height: 1.4;
            min-height: 44px;
        }

        .item-rating {
            color: #fbbf24;
            font-size: 13px;
            margin-bottom: 12px;
        }

        .item-rating span {
            color: var(--text-muted);
            margin-left: 6px;
        }

        .item-price {
            font-size: 22px;
            font-weight: 800;
            color: var(--text-primary);
            margin-bottom: 18px;
        }

        .action-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
            margin-top: auto;
        }

        .btn {
            height: 42px;
            border-radius: var(--radius-sm);
            border: none;
            font-size: 13px;
            font-weight: 700;
            transition: all 0.25s ease;
        }

        .btn-primary {
            background: var(--accent-gradient);
            color: white;
            box-shadow: 0 4px 15px rgba(99, 102, 241, 0.3);
        }

        .btn-primary:hover {
            box-shadow: 0 0 20px var(--accent-glow);
            transform: translateY(-2px);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border-glass);
            color: var(--text-secondary);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-primary);
        }

        /* Empty Search State */
        .empty-state {
            display: none;
            text-align: center;
            padding: 80px 20px;
            grid-column: 1 / -1;
        }

        .empty-icon {
            font-size: 56px;
            margin-bottom: 16px;
            opacity: 0.8;
        }

        .empty-state h3 {
            font-size: 22px;
            margin-bottom: 8px;
        }

        .empty-state p {
            color: var(--text-muted);
        }

        /* =========================================================
           GLASS MODALS
        ========================================================= */
        .modal-overlay {
            position: fixed;
            inset: 0;
            display: none;
            align-items: center;
            justify-content: center;
            padding: 24px;
            background: rgba(0, 0, 0, 0.75);
            backdrop-filter: blur(12px);
            z-index: 2000;
        }

        .modal-box {
            width: 100%;
            max-width: 540px;
            max-height: 85vh;
            overflow-y: auto;
            padding: 32px;
            border-radius: var(--radius-lg);
            background: rgba(18, 24, 38, 0.9);
            border: 1px solid var(--border-glass);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.6), 0 0 30px rgba(99, 102, 241, 0.2);
            animation: modalFadeIn 0.3s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .modal-box.wide {
            max-width: 840px;
        }

        @keyframes modalFadeIn {
            from {
                opacity: 0;
                transform: scale(0.95) translateY(10px);
            }
            to {
                opacity: 1;
                transform: scale(1) translateY(0);
            }
        }

        .modal-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 24px;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--border-glass);
        }

        .modal-header h3 {
            font-size: 22px;
            font-weight: 800;
        }

        .close-modal-btn {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            border: 1px solid var(--border-glass);
            background: rgba(255, 255, 255, 0.05);
            color: var(--text-secondary);
            font-size: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s ease;
        }

        .close-modal-btn:hover {
            color: white;
            background: rgba(239, 68, 68, 0.2);
            border-color: rgba(239, 68, 68, 0.4);
        }

        /* Detail Modal Specs */
        .detail-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 32px;
        }

        .detail-img-box {
            width: 100%;
            height: 340px;
            border-radius: var(--radius-md);
            overflow: hidden;
            background: #000;
        }

        .detail-img-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .detail-info {
            display: flex;
            flex-direction: column;
        }

        .detail-category-tag {
            display: inline-block;
            width: fit-content;
            padding: 4px 12px;
            border-radius: 20px;
            background: rgba(99, 102, 241, 0.15);
            color: #818cf8;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 12px;
        }

        .detail-title {
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 12px;
            line-height: 1.3;
        }

        .detail-price {
            font-size: 28px;
            font-weight: 800;
            color: var(--accent-solid);
            margin-bottom: 16px;
        }

        .detail-desc {
            color: var(--text-secondary);
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 24px;
        }

        /* Cart Modal Items */
        .cart-empty-box {
            text-align: center;
            padding: 60px 20px;
            color: var(--text-muted);
        }

        .cart-row {
            display: grid;
            grid-template-columns: 70px 1fr auto;
            gap: 16px;
            align-items: center;
            padding: 14px;
            margin-bottom: 12px;
            border-radius: var(--radius-md);
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--border-glass);
        }

        .cart-thumb {
            width: 70px;
            height: 70px;
            border-radius: var(--radius-sm);
            overflow: hidden;
        }

        .cart-thumb img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .cart-item-title {
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .cart-item-price {
            color: #818cf8;
            font-size: 13px;
            font-weight: 700;
        }

        .qty-controls {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 8px;
        }

        .qty-btn {
            width: 26px;
            height: 26px;
            border-radius: 6px;
            border: 1px solid var(--border-glass);
            background: rgba(255, 255, 255, 0.08);
            color: white;
            font-weight: 700;
        }

        .cart-footer {
            margin-top: 24px;
            padding-top: 20px;
            border-top: 1px solid var(--border-glass);
        }

        .cart-total-row {
            display: flex;
            justify-content: space-between;
            font-size: 20px;
            font-weight: 800;
            margin-bottom: 20px;
        }

        /* Responsive Breakpoints */
        @media (max-width: 850px) {
            nav { padding: 0 20px; }
            main { padding: 20px 20px 60px; }
            .hero-banner { padding: 32px; }
            .hero-bg-img { display: none; }
            .search-row { grid-template-columns: 1fr; }
            .detail-grid { grid-template-columns: 1fr; }
            .detail-img-box { height: 240px; }
        }
    </style>
</head>

<body>

    <!-- ATMOSPHERIC BACKGROUND IMAGE -->
    <div class="app-bg-wrapper">
        <img class="app-bg-image" src="https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=1600&q=80" alt="Atmospheric Background">
    </div>
    <div class="bg-overlay"></div>

    <!-- NAVIGATION BAR -->
    <nav>
        <a href="#" class="brand">
            <div class="brand-logo">✨</div>
            <div>AURA <span>STORE</span></div>
        </a>

        <div class="nav-actions">
            <button class="cart-btn" id="open-cart-btn">
                🛒 Cart <span id="cart-count">0</span>
            </button>
        </div>
    </nav>

    <!-- MAIN CONTAINER -->
    <main>

        <!-- HERO SECTION -->
        <section class="hero-banner">
            <img class="hero-bg-img" src="https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=1000&q=80" alt="Hero Background Item">
            <div class="hero-content">
                <span class="hero-tag">Next-Gen Collection</span>
                <h1 class="hero-title">Elevate Your <span>Lifestyle</span> & Tech</h1>
                <p class="hero-desc">Discover curated premium essentials built for performance, comfort, and unmatched design aesthetics.</p>
            </div>
        </section>

        <!-- SEARCH AND FILTER CONTROLS -->
        <section class="controls-card">
            <div class="search-row">
                <div class="search-box">
                    <svg class="search-icon-svg" viewBox="0 0 24 24"><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/></svg>
                    <input type="text" id="search-input" class="search-input" placeholder="Search premium items...">
                    <button id="clear-search-btn" class="clear-search-btn">✕</button>
                </div>

                <select id="category-select" class="select-input">
                    <option value="all">All Categories</option>
                    <option value="electronics">Electronics</option>
                    <option value="fashion">Fashion</option>
                    <option value="home">Home & Living</option>
                    <option value="beauty">Beauty</option>
                    <option value="sports">Sports & Outdoors</option>
                </select>
            </div>

            <!-- SCROLLABLE CATEGORY CHIPS -->
            <div class="category-scroll">
                <button class="chip active" data-category="all">All Products</button>
                <button class="chip" data-category="electronics">🎧 Electronics</button>
                <button class="chip" data-category="fashion">👔 Fashion</button>
                <button class="chip" data-category="home">🏠 Home & Living</button>
                <button class="chip" data-category="beauty">✨ Beauty</button>
                <button class="chip" data-category="sports">⚽ Sports</button>
            </div>
        </section>

        <!-- RESULTS HEADER -->
        <div class="results-header">
            <span id="results-count" class="results-title">Showing all products</span>
        </div>

        <!-- PRODUCT GRID -->
        <div id="product-grid" class="product-grid">

            <!-- ELECTRONICS -->
            <div class="product-card" data-id="1" data-category="electronics" data-name="Studio Wireless ANC Headphones" data-price="249.99">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&q=80" alt="Headphones">
                    <span class="badge badge-electronics">Electronics</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Studio Wireless ANC Headphones</div>
                    <div class="item-rating">★★★★★ <span>(4.9)</span></div>
                    <div class="item-price">$249.99</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <div class="product-card" data-id="2" data-category="electronics" data-name="Ultra Edition Fitness Smartwatch" data-price="189.50">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600&q=80" alt="Smartwatch">
                    <span class="badge badge-electronics">Electronics</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Ultra Edition Fitness Smartwatch</div>
                    <div class="item-rating">★★★★☆ <span>(4.6)</span></div>
                    <div class="item-price">$189.50</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <div class="product-card" data-id="3" data-category="electronics" data-name="360 Spatial Bluetooth Speaker" data-price="99.99">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=600&q=80" alt="Speaker">
                    <span class="badge badge-electronics">Electronics</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">360 Spatial Bluetooth Speaker</div>
                    <div class="item-rating">★★★★★ <span>(4.8)</span></div>
                    <div class="item-price">$99.99</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <div class="product-card" data-id="4" data-category="electronics" data-name="Precision Precision Ergonomic Mouse" data-price="59.99">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=600&q=80" alt="Mouse">
                    <span class="badge badge-electronics">Electronics</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Precision Ergonomic Mouse</div>
                    <div class="item-rating">★★★★☆ <span>(4.5)</span></div>
                    <div class="item-price">$59.99</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <!-- FASHION -->
            <div class="product-card" data-id="5" data-category="fashion" data-name="Minimalist Analog Leather Watch" data-price="110.00">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=600&q=80" alt="Watch">
                    <span class="badge badge-fashion">Fashion</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Minimalist Analog Leather Watch</div>
                    <div class="item-rating">★★★★★ <span>(4.9)</span></div>
                    <div class="item-price">$110.00</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <div class="product-card" data-id="6" data-category="fashion" data-name="Vintage Denim Outerwear Jacket" data-price="135.00">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1551028719-00167b16eac5?w=600&q=80" alt="Jacket">
                    <span class="badge badge-fashion">Fashion</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Vintage Denim Outerwear Jacket</div>
                    <div class="item-rating">★★★★☆ <span>(4.7)</span></div>
                    <div class="item-price">$135.00</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <div class="product-card" data-id="7" data-category="fashion" data-name="Retro Polarized Designer Glasses" data-price="45.00">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600&q=80" alt="Sunglasses">
                    <span class="badge badge-fashion">Fashion</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Retro Polarized Designer Glasses</div>
                    <div class="item-rating">★★★★★ <span>(4.8)</span></div>
                    <div class="item-price">$45.00</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <!-- HOME & LIVING -->
            <div class="product-card" data-id="8" data-category="home" data-name="Architectural Ceramic Ambient Lamp" data-price="68.00">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=600&q=80" alt="Lamp">
                    <span class="badge badge-home">Home</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Architectural Ceramic Ambient Lamp</div>
                    <div class="item-rating">★★★★★ <span>(4.8)</span></div>
                    <div class="item-price">$68.00</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <div class="product-card" data-id="9" data-category="home" data-name="Ultrasonic Essential Oil Diffuser" data-price="39.99">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1602928321679-560bb453f190?w=600&q=80" alt="Diffuser">
                    <span class="badge badge-home">Home</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Ultrasonic Essential Oil Diffuser</div>
                    <div class="item-rating">★★★★☆ <span>(4.6)</span></div>
                    <div class="item-price">$39.99</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <!-- BEAUTY -->
            <div class="product-card" data-id="10" data-category="beauty" data-name="Botanical Glow Face Serum" data-price="42.00">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1620916566398-39f1143ab7be?w=600&q=80" alt="Serum">
                    <span class="badge badge-beauty">Beauty</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Botanical Glow Face Serum</div>
                    <div class="item-rating">★★★★★ <span>(4.9)</span></div>
                    <div class="item-price">$42.00</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <!-- SPORTS -->
            <div class="product-card" data-id="11" data-category="sports" data-name="Pro-Grip Non-Slip Yoga Mat" data-price="48.00">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=600&q=80" alt="Yoga Mat">
                    <span class="badge badge-sports">Sports</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Pro-Grip Non-Slip Yoga Mat</div>
                    <div class="item-rating">★★★★★ <span>(4.8)</span></div>
                    <div class="item-price">$48.00</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <div class="product-card" data-id="12" data-category="sports" data-name="Vacuum Insulated Sports Flask" data-price="29.99">
                <div class="image-frame">
                    <img src="https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=600&q=80" alt="Water Bottle">
                    <span class="badge badge-sports">Sports</span>
                    <button class="like-btn">♥</button>
                </div>
                <div class="item-details">
                    <div class="item-title">Vacuum Insulated Sports Flask</div>
                    <div class="item-rating">★★★★★ <span>(4.9)</span></div>
                    <div class="item-price">$29.99</div>
                    <div class="action-row">
                        <button class="btn btn-primary add-cart-btn">Add to Cart</button>
                        <button class="btn btn-secondary details-btn">Details</button>
                    </div>
                </div>
            </div>

            <!-- EMPTY SEARCH PLACEHOLDER -->
            <div id="empty-state" class="empty-state">
                <div class="empty-icon">🔍</div>
                <h3>No Matching Items</h3>
                <p>Try tweaking your filter or search query.</p>
            </div>

        </div>

    </main>

    <!-- PRODUCT DETAIL MODAL -->
    <div id="detail-modal" class="modal-overlay">
        <div class="modal-box wide">
            <div class="modal-header">
                <h3>Product Overview</h3>
                <button class="close-modal-btn" id="close-detail-modal">✕</button>
            </div>
            <div class="detail-grid">
                <div class="detail-img-box">
                    <img id="detail-img" src="" alt="Product Detail Image">
                </div>
                <div class="detail-info">
                    <span id="detail-tag" class="detail-category-tag">CATEGORY</span>
                    <h2 id="detail-title" class="detail-title">Title</h2>
                    <div id="detail-price" class="detail-price">$0.00</div>
                    <p id="detail-desc" class="detail-desc">Crafted from top-tier materials to deliver high performance, durable usage, and elegant modern aesthetics.</p>
                    <button id="detail-add-btn" class="btn btn-primary" style="height: 48px; margin-top: auto;">Add To Cart</button>
                </div>
            </div>
        </div>
    </div>

    <!-- CART MODAL -->
    <div id="cart-modal" class="modal-overlay">
        <div class="modal-box">
            <div class="modal-header">
                <h3>Your Shopping Bag</h3>
                <button class="close-modal-btn" id="close-cart-modal">✕</button>
            </div>

            <div id="cart-items-wrapper">
                <div class="cart-empty-box">
                    <div style="font-size: 40px; margin-bottom: 10px;">🛍️</div>
                    <p>Your shopping bag is currently empty.</p>
                </div>
            </div>

            <div id="cart-footer" class="cart-footer" style="display: none;">
                <div class="cart-total-row">
                    <span>Total Amount:</span>
                    <span id="cart-total-price">$0.00</span>
                </div>
                <button class="btn btn-primary" style="width: 100%; height: 50px;">Complete Checkout</button>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            let cart = [];
            let activeDetailItem = null;

            // DOM Query Elements
            const searchInput = document.getElementById('search-input');
            const clearSearchBtn = document.getElementById('clear-search-btn');
            const categorySelect = document.getElementById('category-select');
            const chips = document.querySelectorAll('.chip');
            const resultsCount = document.getElementById('results-count');
            const emptyState = document.getElementById('empty-state');
            const productCards = document.querySelectorAll('.product-card');

            // Cart Modal Elements
            const openCartBtn = document.getElementById('open-cart-btn');
            const cartModal = document.getElementById('cart-modal');
            const closeCartModal = document.getElementById('close-cart-modal');
            const cartWrapper = document.getElementById('cart-items-wrapper');
            const cartCountBadge = document.getElementById('cart-count');
            const cartFooter = document.getElementById('cart-footer');
            const cartTotalPrice = document.getElementById('cart-total-price');

            // Detail Modal Elements
            const detailModal = document.getElementById('detail-modal');
            const closeDetailModal = document.getElementById('close-detail-modal');
            const detailImg = document.getElementById('detail-img');
            const detailTitle = document.getElementById('detail-title');
            const detailTag = document.getElementById('detail-tag');
            const detailPrice = document.getElementById('detail-price');
            const detailAddBtn = document.getElementById('detail-add-btn');

            // Filtering Engine
            function applyFilters() {
                const query = searchInput.value.trim().toLowerCase();
                const selectedCategory = categorySelect.value;
                let visibleItems = 0;

                clearSearchBtn.style.display = query ? 'flex' : 'none';

                chips.forEach(chip => {
                    chip.classList.toggle('active', chip.dataset.category === selectedCategory);
                });

                productCards.forEach(card => {
                    const name = card.dataset.name.toLowerCase();
                    const category = card.dataset.category;

                    const matchesSearch = name.includes(query);
                    const matchesCategory = selectedCategory === 'all' || category === selectedCategory;

                    if (matchesSearch && matchesCategory) {
                        card.style.display = 'flex';
                        visibleItems++;
                    } else {
                        card.style.display = 'none';
                    }
                });

                emptyState.style.display = visibleItems === 0 ? 'block' : 'none';
                resultsCount.textContent = `Showing ${visibleItems} product${visibleItems !== 1 ? 's' : ''}`;
            }

            searchInput.addEventListener('input', applyFilters);
            categorySelect.addEventListener('change', applyFilters);

            chips.forEach(chip => {
                chip.addEventListener('click', () => {
                    categorySelect.value = chip.dataset.category;
                    applyFilters();
                });
            });

            clearSearchBtn.addEventListener('click', () => {
                searchInput.value = '';
                applyFilters();
            });

            // Wishlist Heart Buttons
            document.querySelectorAll('.like-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    btn.classList.toggle('active');
                });
            });

            // Cart State Manager
            function updateCartUI() {
                const totalCount = cart.reduce((sum, item) => sum + item.qty, 0);
                cartCountBadge.textContent = totalCount;

                if (cart.length === 0) {
                    cartWrapper.innerHTML = `
                        <div class="cart-empty-box">
                            <div style="font-size: 40px; margin-bottom: 10px;">🛍️</div>
                            <p>Your shopping bag is currently empty.</p>
                        </div>`;
                    cartFooter.style.display = 'none';
                    return;
                }

                cartFooter.style.display = 'block';
                let grandTotal = 0;

                cartWrapper.innerHTML = cart.map(item => {
                    const rowTotal = item.price * item.qty;
                    grandTotal += rowTotal;
                    return `
                        <div class="cart-row">
                            <div class="cart-thumb"><img src="${item.img}" alt="${item.name}"></div>
                            <div>
                                <div class="cart-item-title">${item.name}</div>
                                <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                                <div class="qty-controls">
                                    <button class="qty-btn" onclick="updateItemQty(${item.id}, -1)">-</button>
                                    <span style="font-size: 13px;">${item.qty}</span>
                                    <button class="qty-btn" onclick="updateItemQty(${item.id}, 1)">+</button>
                                </div>
                            </div>
                            <div style="font-weight: 800; font-size: 14px;">$${rowTotal.toFixed(2)}</div>
                        </div>
                    `;
                }).join('');

                cartTotalPrice.textContent = `$${grandTotal.toFixed(2)}`;
            }

            function addToCart(id, name, price, img) {
                const existing = cart.find(i => i.id === id);
                if (existing) {
                    existing.qty++;
                } else {
                    cart.push({ id, name, price: parseFloat(price), img, qty: 1 });
                }
                updateCartUI();
            }

            window.updateItemQty = function(id, delta) {
                const item = cart.find(i => i.id === id);
                if (item) {
                    item.qty += delta;
                    if (item.qty <= 0) {
                        cart = cart.filter(i => i.id !== id);
                    }
                    updateCartUI();
                }
            };

            // Event Binding on Items
            productCards.forEach(card => {
                const id = card.dataset.id;
                const name = card.dataset.name;
                const price = card.dataset.price;
                const img = card.querySelector('img').src;
                const cat = card.dataset.category;

                card.querySelector('.add-cart-btn').addEventListener('click', () => {
                    addToCart(id, name, price, img);
                });

                card.querySelector('.details-btn').addEventListener('click', () => {
                    activeDetailItem = { id, name, price, img, cat };
                    detailImg.src = img;
                    detailTitle.textContent = name;
                    detailPrice.textContent = `$${parseFloat(price).toFixed(2)}`;
                    detailTag.textContent = cat;
                    detailModal.style.display = 'flex';
                });
            });

            detailAddBtn.addEventListener('click', () => {
                if (activeDetailItem) {
                    addToCart(activeDetailItem.id, activeDetailItem.name, activeDetailItem.price, activeDetailItem.img);
                    detailModal.style.display = 'none';
                }
            });

            // Modal Toggles
            openCartBtn.addEventListener('click', () => cartModal.style.display = 'flex');
            closeCartModal.addEventListener('click', () => cartModal.style.display = 'none');
            closeDetailModal.addEventListener('click', () => detailModal.style.display = 'none');

            window.addEventListener('click', (e) => {
                if (e.target === cartModal) cartModal.style.display = 'none';
                if (e.target === detailModal) detailModal.style.display = 'none';
            });
        });
    </script>
</body>

</html>
