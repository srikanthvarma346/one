<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AURA - Cyberpunk Neo-Store</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

    <style>
        /* =========================================================
           NEO-FUTURISTIC CYBERPUNK DESIGN SYSTEM
        ========================================================= */
        :root {
            --bg-base: #05070f;
            --bg-card: rgba(13, 18, 30, 0.7);
            --bg-card-hover: rgba(22, 30, 50, 0.85);
            
            --border-subtle: rgba(0, 240, 255, 0.15);
            --border-bright: #00f0ff;
            
            --text-primary: #f0f6fc;
            --text-secondary: #8b949e;
            --text-muted: #484f58;
            
            --neon-cyan: #00f0ff;
            --neon-magenta: #ff007f;
            --neon-purple: #7000ff;
            --neon-emerald: #00ff66;
            
            --cyan-glow: rgba(0, 240, 255, 0.35);
            --magenta-glow: rgba(255, 0, 127, 0.35);
            
            --radius-xs: 6px;
            --radius-sm: 12px;
            --radius-md: 18px;
            --radius-lg: 28px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg-base);
            color: var(--text-primary);
            min-height: 100vh;
            padding-top: 110px;
            overflow-x: hidden;
            background-image: 
                radial-gradient(circle at 10% 10%, rgba(0, 240, 255, 0.08) 0%, transparent 40%),
                radial-gradient(circle at 90% 80%, rgba(255, 0, 127, 0.08) 0%, transparent 40%),
                linear-gradient(rgba(255, 255, 255, 0.02) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255, 255, 255, 0.02) 1px, transparent 1px);
            background-size: 100% 100%, 100% 100%, 40px 40px, 40px 40px;
        }

        h1, h2, h3, .brand, .hero-tag, .btn {
            font-family: 'Space Grotesk', sans-serif;
        }

        button, input, select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* =========================================================
           FLOATING CYBER NAVBAR
        ========================================================= */
        nav {
            position: fixed;
            top: 16px;
            left: 50%;
            transform: translateX(-50%);
            width: calc(100% - 60px);
            max-width: 1500px;
            height: 72px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 28px;
            background: rgba(10, 14, 26, 0.85);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            z-index: 1000;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5), inset 0 0 15px rgba(0, 240, 255, 0.05);
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            color: var(--text-primary);
            font-size: 22px;
            font-weight: 700;
            text-decoration: none;
            letter-spacing: 1px;
        }

        .brand-logo {
            width: 38px;
            height: 38px;
            border-radius: var(--radius-xs);
            background: linear-gradient(135deg, var(--neon-cyan), var(--neon-magenta));
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 18px;
            box-shadow: 0 0 15px var(--cyan-glow);
            color: #000;
        }

        .brand span {
            color: var(--neon-cyan);
            text-shadow: 0 0 10px var(--cyan-glow);
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .settings-top-bar {
            display: flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--border-subtle);
            padding: 6px 14px;
            border-radius: 30px;
        }

        .settings-top-bar label {
            font-size: 12px;
            font-weight: 600;
            color: var(--text-secondary);
        }

        .lang-select {
            background: transparent;
            color: var(--neon-cyan);
            border: none;
            outline: none;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
        }

        .lang-select option {
            background: #0d121e;
            color: white;
        }

        .cart-btn {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 20px;
            height: 42px;
            border: 1px solid var(--border-bright);
            border-radius: 30px;
            color: #000;
            background: var(--neon-cyan);
            font-size: 13px;
            font-weight: 700;
            transition: all 0.3s ease;
            box-shadow: 0 0 15px var(--cyan-glow);
        }

        .cart-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 25px var(--cyan-glow);
            background: #ffffff;
        }

        #cart-count {
            width: 20px;
            height: 20px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: #000;
            color: var(--neon-cyan);
            font-size: 11px;
            font-weight: 800;
        }

        /* =========================================================
           HERO SECTION
        ========================================================= */
        main {
            max-width: 1500px;
            margin: 0 auto;
            padding: 10px 30px 100px;
        }

        .hero-banner {
            position: relative;
            border-radius: var(--radius-lg);
            padding: 60px;
            margin-bottom: 32px;
            overflow: hidden;
            border: 1px solid var(--border-subtle);
            background: linear-gradient(135deg, rgba(13, 18, 30, 0.8) 0%, rgba(5, 7, 15, 0.9) 100%);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
        }

        .hero-banner::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, transparent, var(--neon-cyan), var(--neon-magenta), transparent);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 650px;
        }

        .hero-tag {
            display: inline-block;
            padding: 6px 14px;
            border-radius: var(--radius-xs);
            background: rgba(0, 240, 255, 0.1);
            border: 1px solid var(--neon-cyan);
            color: var(--neon-cyan);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        .hero-title {
            font-size: 46px;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 16px;
            letter-spacing: -1px;
        }

        .hero-title span {
            color: var(--neon-magenta);
            text-shadow: 0 0 15px var(--magenta-glow);
        }

        .hero-desc {
            color: var(--text-secondary);
            font-size: 15px;
            line-height: 1.6;
        }

        /* =========================================================
           CONTROLS CARD
        ========================================================= */
        .controls-card {
            background: var(--bg-card);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 20px;
            margin-bottom: 32px;
        }

        .search-row {
            display: grid;
            grid-template-columns: 1fr 240px;
            gap: 16px;
            margin-bottom: 16px;
        }

        .search-box {
            position: relative;
        }

        .search-input {
            width: 100%;
            height: 48px;
            padding: 0 45px 0 48px;
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-sm);
            outline: none;
            background: rgba(5, 7, 15, 0.8);
            color: var(--text-primary);
            font-size: 14px;
            transition: all 0.3s ease;
        }

        .search-input:focus {
            border-color: var(--neon-cyan);
            box-shadow: 0 0 15px var(--cyan-glow);
        }

        .search-icon-svg {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            width: 18px;
            height: 18px;
            fill: var(--text-secondary);
        }

        .clear-search-btn {
            position: absolute;
            right: 14px;
            top: 50%;
            transform: translateY(-50%);
            width: 22px;
            height: 22px;
            border: none;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-secondary);
            display: none;
            align-items: center;
            justify-content: center;
            font-size: 11px;
        }

        .select-input {
            height: 48px;
            padding: 0 16px;
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-sm);
            outline: none;
            background: rgba(5, 7, 15, 0.8);
            color: var(--text-primary);
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
        }

        .category-scroll {
            display: flex;
            align-items: center;
            gap: 10px;
            overflow-x: auto;
            padding-bottom: 4px;
            scrollbar-width: none;
        }

        .chip {
            padding: 8px 18px;
            border: 1px solid var(--border-subtle);
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.02);
            color: var(--text-secondary);
            font-size: 12px;
            font-weight: 600;
            white-space: nowrap;
            transition: all 0.3s ease;
        }

        .chip:hover {
            border-color: var(--neon-cyan);
            color: var(--text-primary);
        }

        .chip.active {
            background: var(--neon-cyan);
            color: #000;
            border-color: var(--neon-cyan);
            font-weight: 700;
            box-shadow: 0 0 12px var(--cyan-glow);
        }

        /* =========================================================
           WORKSPACE GRID
        ========================================================= */
        .app-workspace {
            display: grid;
            grid-template-columns: 260px 1fr;
            gap: 32px;
            align-items: start;
        }

        .category-sidebar {
            background: var(--bg-card);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 20px;
            position: sticky;
            top: 104px;
        }

        .sidebar-title {
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 16px;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--text-secondary);
        }

        .menu-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .menu-item-btn {
            width: 100%;
            text-align: left;
            padding: 10px 14px;
            border-radius: var(--radius-xs);
            border: 1px solid transparent;
            background: transparent;
            color: var(--text-secondary);
            font-size: 13px;
            font-weight: 600;
            display: flex;
            align-items: center;
            justify-content: space-between;
            transition: all 0.2s ease;
        }

        .menu-item-btn:hover {
            color: var(--text-primary);
            background: rgba(255, 255, 255, 0.03);
        }

        .menu-item-btn.active {
            background: rgba(0, 240, 255, 0.08);
            border-color: var(--neon-cyan);
            color: var(--neon-cyan);
        }

        .menu-item-count {
            background: rgba(255, 255, 255, 0.05);
            font-size: 10px;
            padding: 2px 6px;
            border-radius: 10px;
        }

        /* Products Display Area */
        .products-area {
            display: flex;
            flex-direction: column;
            gap: 40px;
        }

        .category-section-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .category-section-title {
            font-size: 20px;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .category-badge-count {
            font-size: 11px;
            padding: 3px 10px;
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.05);
            color: var(--text-secondary);
        }

        .category-items-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
            gap: 20px;
        }

        /* Product Cards */
        .product-card {
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-sm);
            background: var(--bg-card);
            padding: 12px;
            transition: all 0.3s ease;
            display: flex;
            flex-direction: column;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-4px);
            border-color: var(--neon-cyan);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5), 0 0 15px var(--cyan-glow);
        }

        .image-frame {
            position: relative;
            width: 100%;
            height: 180px;
            border-radius: var(--radius-xs);
            overflow: hidden;
            margin-bottom: 12px;
            background: #000;
        }

        .image-frame img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product-card:hover .image-frame img {
            transform: scale(1.05);
        }

        .like-btn {
            position: absolute;
            top: 8px;
            right: 8px;
            width: 30px;
            height: 30px;
            border: none;
            border-radius: 50%;
            background: rgba(5, 7, 15, 0.7);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 13px;
            transition: all 0.2s ease;
            z-index: 2;
        }

        .like-btn.active, .like-btn:hover {
            color: var(--neon-magenta);
            background: rgba(255, 255, 255, 0.9);
        }

        .item-details {
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .item-title {
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 6px;
            line-height: 1.3;
        }

        .item-rating {
            color: #ffb703;
            font-size: 11px;
            margin-bottom: 8px;
        }

        .item-price {
            font-size: 18px;
            font-weight: 800;
            color: var(--neon-cyan);
            margin-bottom: 12px;
            font-family: 'Space Grotesk', sans-serif;
        }

        .action-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 8px;
            margin-top: auto;
        }

        .btn {
            height: 36px;
            border-radius: var(--radius-xs);
            border: 1px solid transparent;
            font-size: 11px;
            font-weight: 700;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 4px;
        }

        .btn-add-cart {
            background: rgba(0, 240, 255, 0.1);
            border-color: var(--neon-cyan);
            color: var(--neon-cyan);
        }

        .btn-add-cart:hover {
            background: var(--neon-cyan);
            color: #000;
        }

        .btn-buy-now {
            background: rgba(255, 0, 127, 0.1);
            border-color: var(--neon-magenta);
            color: var(--neon-magenta);
        }

        .btn-buy-now:hover {
            background: var(--neon-magenta);
            color: #fff;
        }

        /* =========================================================
           MODALS & TOASTS
        ========================================================= */
        .toast-notification {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--neon-cyan);
            color: #000;
            padding: 12px 20px;
            border-radius: var(--radius-sm);
            font-weight: 700;
            font-size: 13px;
            box-shadow: 0 0 20px var(--cyan-glow);
            z-index: 3000;
            transform: translateY(100px);
            opacity: 0;
            transition: all 0.3s ease;
        }

        .toast-notification.show {
            transform: translateY(0);
            opacity: 1;
        }

        .modal-overlay {
            position: fixed;
            inset: 0;
            display: none;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background: rgba(5, 7, 15, 0.85);
            backdrop-filter: blur(10px);
            z-index: 2000;
        }

        .modal-box {
            width: 100%;
            max-width: 500px;
            padding: 28px;
            border-radius: var(--radius-md);
            background: #0d121e;
            border: 1px solid var(--border-subtle);
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.8);
        }

        .modal-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            padding-bottom: 12px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .close-modal-btn {
            background: none;
            border: none;
            color: var(--text-secondary);
            font-size: 18px;
        }

        .close-modal-btn:hover {
            color: white;
        }

        .cart-row {
            display: grid;
            grid-template-columns: 50px 1fr auto;
            gap: 12px;
            align-items: center;
            padding: 10px;
            margin-bottom: 8px;
            border-radius: var(--radius-xs);
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid var(--border-subtle);
        }

        .cart-thumb {
            width: 50px;
            height: 50px;
            border-radius: var(--radius-xs);
            overflow: hidden;
        }

        .cart-thumb img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .qty-btn {
            width: 22px;
            height: 22px;
            border: 1px solid var(--border-subtle);
            background: rgba(255, 255, 255, 0.05);
            color: white;
            border-radius: 4px;
        }

        .form-group {
            margin-bottom: 14px;
        }

        .form-group label {
            display: block;
            font-size: 12px;
            color: var(--text-secondary);
            margin-bottom: 4px;
        }

        .form-control {
            width: 100%;
            height: 40px;
            padding: 0 12px;
            border-radius: var(--radius-xs);
            border: 1px solid var(--border-subtle);
            background: rgba(5, 7, 15, 0.8);
            color: white;
            outline: none;
        }

        .form-control:focus {
            border-color: var(--neon-cyan);
        }

        .empty-state {
            display: none;
            text-align: center;
            padding: 60px 20px;
            color: var(--text-muted);
        }

        @media (max-width: 900px) {
            .app-workspace { grid-template-columns: 1fr; }
            .category-sidebar { position: static; }
            .search-row { grid-template-columns: 1fr; }
            nav { width: calc(100% - 30px); }
        }
    </style>
</head>

<body>

    <div id="toast" class="toast-notification">
        <span id="toast-msg">Item added to cart!</span>
    </div>

    <!-- FLOATING TOP NAVBAR -->
    <nav>
        <a href="#" class="brand">
            <div class="brand-logo">⚡</div>
            <div>AURA <span>NEO</span></div>
        </a>

        <div class="nav-actions">
            <div class="settings-top-bar">
                <label for="lang-select">LANG:</label>
                <select id="lang-select" class="lang-select">
                    <option value="en">EN</option>
                    <option value="te">తెలుగు</option>
                    <option value="hi">हिन्दी</option>
                    <option value="es">ES</option>
                </select>
            </div>

            <button class="cart-btn" id="open-cart-btn">
                🛒 <span id="cart-btn-text">Cart</span> <span id="cart-count">0</span>
            </button>
        </div>
    </nav>

    <!-- MAIN APP WRAPPER -->
    <main>

        <!-- HERO SECTION -->
        <section class="hero-banner">
            <div class="hero-content">
                <span class="hero-tag" id="hero-tag">Cyberpunk Edition</span>
                <h1 class="hero-title" id="hero-title">Future <span>Lifestyle</span> & Gourmet Tech</h1>
                <p class="hero-desc" id="hero-desc">Explore next-gen items, high-performance electronics, and artisanal culinary crafts curated for the modern era.</p>
            </div>
        </section>

        <!-- CONTROLS CARD -->
        <section class="controls-card">
            <div class="search-row">
                <div class="search-box">
                    <svg class="search-icon-svg" viewBox="0 0 24 24"><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/></svg>
                    <input type="text" id="search-input" class="search-input" placeholder="Search neo-store inventory...">
                    <button id="clear-search-btn" class="clear-search-btn">✕</button>
                </div>

                <select id="category-select" class="select-input">
                    <option value="all">All Sectors</option>
                    <option value="food">Gourmet Food</option>
                    <option value="electronics">Cyber Electronics</option>
                    <option value="fashion">Neo Fashion</option>
                    <option value="home">Habitat & Living</option>
                    <option value="beauty">Bio & Care</option>
                    <option value="sports">Athletics</option>
                </select>
            </div>

            <div class="category-scroll">
                <button class="chip active" data-category="all">All Items</button>
                <button class="chip" data-category="food">🍔 Food</button>
                <button class="chip" data-category="electronics">🎧 Electronics</button>
                <button class="chip" data-category="fashion">👔 Fashion</button>
                <button class="chip" data-category="home">🏠 Living</button>
                <button class="chip" data-category="beauty">✨ Bio-Care</button>
                <button class="chip" data-category="sports">⚽ Sports</button>
            </div>
        </section>

        <!-- APP WORKSPACE -->
        <div class="app-workspace">
            
            <!-- LEFT SIDEBAR -->
            <aside class="category-sidebar">
                <div class="sidebar-title" id="sidebar-title">NAVIGATION SECTORS</div>
                <ul class="menu-list" id="sidebar-menu">
                    <li>
                        <button class="menu-item-btn active" data-target="all">
                            <span>🌐 <span class="cat-label">All Sectors</span></span>
                            <span class="menu-item-count" id="count-all">0</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="food">
                            <span>🍔 <span class="cat-label">Gourmet Food</span></span>
                            <span class="menu-item-count" id="count-food">0</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="electronics">
                            <span>🎧 <span class="cat-label">Electronics</span></span>
                            <span class="menu-item-count" id="count-electronics">0</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="fashion">
                            <span>👔 <span class="cat-label">Fashion</span></span>
                            <span class="menu-item-count" id="count-fashion">0</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="home">
                            <span>🏠 <span class="cat-label">Home & Living</span></span>
                            <span class="menu-item-count" id="count-home">0</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="beauty">
                            <span>✨ <span class="cat-label">Beauty & Care</span></span>
                            <span class="menu-item-count" id="count-beauty">0</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="sports">
                            <span>⚽ <span class="cat-label">Sports</span></span>
                            <span class="menu-item-count" id="count-sports">0</span>
                        </button>
                    </li>
                </ul>
            </aside>

            <!-- PRODUCTS DISPLAY -->
            <div class="products-area" id="products-area"></div>

            <div class="empty-state" id="empty-state">
                <h3>No Matching Signals Found</h3>
                <p>Try refining your search query or switching category filters.</p>
            </div>

        </div>
    </main>

    <!-- SHOPPING CART MODAL -->
    <div class="modal-overlay" id="cart-modal">
        <div class="modal-box">
            <div class="modal-header">
                <h3 id="cart-modal-title">Shopping Cart</h3>
                <button class="close-modal-btn" id="close-cart-btn">✕</button>
            </div>
            <div id="cart-items-list"></div>
            <div style="margin-top:20px; padding-top:14px; border-top:1px solid var(--border-subtle);">
                <div style="display:flex; justify-content:space-between; font-weight:800; font-size:18px; margin-bottom:16px;">
                    <span id="total-label">Total:</span>
                    <span id="cart-total-price" style="color:var(--neon-cyan);">$0.00</span>
                </div>
                <button class="btn btn-add-cart" style="width:100%; height:44px; font-size:13px;" id="checkout-btn">
                    PROCEED TO CHECKOUT
                </button>
            </div>
        </div>
    </div>

    <!-- CHECKOUT MODAL -->
    <div class="modal-overlay" id="checkout-modal">
        <div class="modal-box">
            <div class="modal-header">
                <h3 id="checkout-modal-title">Order Authorization</h3>
                <button class="close-modal-btn" id="close-checkout-btn">✕</button>
            </div>
            <form id="checkout-form">
                <div class="form-group">
                    <label id="lbl-name">Full Name</label>
                    <input type="text" class="form-control" required placeholder="Jane Doe">
                </div>
                <div class="form-group">
                    <label id="lbl-email">Email Address</label>
                    <input type="email" class="form-control" required placeholder="jane@neo.net">
                </div>
                <div class="form-group">
                    <label id="lbl-address">Destination Address</label>
                    <input type="text" class="form-control" required placeholder="District 7, Sector 4">
                </div>
                <button type="submit" class="btn btn-buy-now" style="width:100%; height:44px; margin-top:10px;">
                    CONFIRM & AUTHORIZE
                </button>
            </form>
        </div>
    </div>

    <!-- JAVASCRIPT APP LOGIC -->
    <script>
        const translations = {
            en: {
                cartBtn: "Cart",
                heroTag: "Cyberpunk Edition",
                heroTitle: "Future <span>Lifestyle</span> & Gourmet Tech",
                heroDesc: "Explore next-gen items, high-performance electronics, and artisanal culinary crafts curated for the modern era.",
                searchPlaceholder: "Search neo-store inventory...",
                menuTitle: "NAVIGATION SECTORS",
                allCategories: "All Sectors",
                foodCategory: "Gourmet Food",
                electronicsCategory: "Cyber Electronics",
                fashionCategory: "Neo Fashion",
                homeCategory: "Habitat & Living",
                beautyCategory: "Bio & Care",
                sportsCategory: "Athletics",
                addToCart: "ADD CART",
                buyNow: "BUY NOW",
                addedToast: "Item added to cart!",
                cartTitle: "Shopping Cart",
                emptyCart: "Your cart is currently empty.",
                total: "Total:",
                checkout: "PROCEED TO CHECKOUT",
                checkoutTitle: "Order Authorization",
                name: "Full Name",
                email: "Email Address",
                address: "Destination Address",
                confirmPay: "CONFIRM & AUTHORIZE",
                orderSuccess: "Payment Authorization Successful! Processing order."
            },
            te: {
                cartBtn: "కార్ట్",
                heroTag: "సైబర్‌పంక్ ఎడిషన్",
                heroTitle: "భవిష్యత్ <span>జీవనశైలి</span> మరియు టెక్నాలజీ",
                heroDesc: "అత్యుత్తమ నాణ్యత గల రుచికరమైన ఆహారం మరియు నూతన ఎలక్ట్రానిక్స్ ఉత్పత్తులు ఇక్కడ లభించును.",
                searchPlaceholder: "శోధించండి...",
                menuTitle: "వర్గాలు",
                allCategories: "అన్ని వర్గాలు",
                foodCategory: "ఫుడ్",
                electronicsCategory: "ఎలక్ట్రానిక్స్",
                fashionCategory: "ఫ్యాషన్",
                homeCategory: "హోమ్",
                beautyCategory: "బ్యూటీ",
                sportsCategory: "స్పోర్ట్స్",
                addToCart: "కార్ట్‌కు జోడించు",
                buyNow: "కొనండి",
                addedToast: "కార్ట్‌లో జోడించబడింది!",
                cartTitle: "షాపింగ్ కార్ట్",
                emptyCart: "కార్ట్ ఖాళీగా ఉంది.",
                total: "మొత్తం:",
                checkout: "చెల్లించండి",
                checkoutTitle: "ఆర్డర్ పూర్తి చేయండి",
                name: "పేరు",
                email: "ఈమెయిల్",
                address: "చిరునామా",
                confirmPay: "సమర్పించండి",
                orderSuccess: "మీ ఆర్డర్ విజయవంతంగా పూర్తయింది!"
            },
            hi: {
                cartBtn: "कार्ट",
                heroTag: "साइबरपंक संस्करण",
                heroTitle: "भविष्य की <span>जीवनशैली</span> और तकनीक",
                heroDesc: "उत्कृष्ट उत्पादों, इलेक्ट्रॉनिक्स और स्वादिष्ट व्यंजनों का अनुभव करें।",
                searchPlaceholder: "उत्पाद खोजें...",
                menuTitle: "नेविगेशन मेनू",
                allCategories: "सभी श्रेणियां",
                foodCategory: "खाद्य पदार्थ",
                electronicsCategory: "इलेक्ट्रॉनिक्स",
                fashionCategory: "फैशन",
                homeCategory: "होम",
                beautyCategory: "ब्यूटी",
                sportsCategory: "खेल",
                addToCart: "कार्ट में जोड़ें",
                buyNow: "अभी खरीदें",
                addedToast: "कार्ट में जोड़ा गया!",
                cartTitle: "शॉपिंग कार्ट",
                emptyCart: "कार्ट खाली है।",
                total: "कुल:",
                checkout: "भुगतान करें",
                checkoutTitle: "ऑर्डर दें",
                name: "पूरा नाम",
                email: "ईमेल",
                address: "पता",
                confirmPay: "भुगतान की पुष्टि करें",
                orderSuccess: "आपका ऑर्डर सफल रहा!"
            },
            es: {
                cartBtn: "Carrito",
                heroTag: "Edición Cyberpunk",
                heroTitle: "Estilo de Vida <span>Futurista</span> y Tecnología",
                heroDesc: "Explora artículos de última generación y gastronomía artesanal.",
                searchPlaceholder: "Buscar inventario...",
                menuTitle: "SECTORES",
                allCategories: "Todos los Sectores",
                foodCategory: "Comida Gourmet",
                electronicsCategory: "Electrónica",
                fashionCategory: "Moda Neo",
                homeCategory: "Hogar",
                beautyCategory: "Bio-Cuidado",
                sportsCategory: "Deportes",
                addToCart: "AÑADIR",
                buyNow: "COMPRAR",
                addedToast: "¡Añadido al carrito!",
                cartTitle: "Carrito de Compras",
                emptyCart: "El carrito está vacío.",
                total: "Total:",
                checkout: "PROCEDER AL PAGO",
                checkoutTitle: "Autorización de Pedido",
                name: "Nombre Completo",
                email: "Correo Electrónico",
                address: "Dirección",
                confirmPay: "CONFIRMAR",
                orderSuccess: "¡Pago autorizado con éxito!"
            }
        };

        const products = [
            { id: 1, category: 'food', title: 'Artisanal Truffle Pasta Bowl', price: 24.99, rating: 4.9, img: 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=600&q=80' },
            { id: 2, category: 'food', title: 'Gourmet Wagyu Beef Burger', price: 18.50, rating: 4.8, img: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&q=80' },
            { id: 3, category: 'electronics', title: 'Cyber Pulse Headphones', price: 299.99, rating: 4.9, img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&q=80' },
            { id: 4, category: 'electronics', title: 'Smart Minimalist Watch', price: 199.50, rating: 4.7, img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600&q=80' },
            { id: 5, category: 'fashion', title: 'Urban Tech-Jacket', price: 110.00, rating: 4.6, img: 'https://images.unsplash.com/photo-1576995853123-5a10305d93c0?w=600&q=80' },
            { id: 6, category: 'home', title: 'Aromatic Oil Diffuser', price: 34.99, rating: 4.6, img: 'https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?w=600&q=80' }
        ];

        let currentLang = 'en';
        let cart = [];
        let wishlist = new Set();
        let currentCategory = 'all';
        let searchQuery = '';

        const productsArea = document.getElementById('products-area');
        const emptyState = document.getElementById('empty-state');
        const searchInput = document.getElementById('search-input');
        const clearSearchBtn = document.getElementById('clear-search-btn');
        const categorySelect = document.getElementById('category-select');
        const langSelect = document.getElementById('lang-select');
        const cartCount = document.getElementById('cart-count');
        const cartModal = document.getElementById('cart-modal');
        const checkoutModal = document.getElementById('checkout-modal');
        const openCartBtn = document.getElementById('open-cart-btn');
        const closeCartBtn = document.getElementById('close-cart-btn');
        const closeCheckoutBtn = document.getElementById('close-checkout-btn');
        const checkoutBtn = document.getElementById('checkout-btn');
        const checkoutForm = document.getElementById('checkout-form');
        const toast = document.getElementById('toast');

        function init() {
            updateCounts();
            renderProducts();
            setupEventListeners();
            updateLanguageUI();
        }

        function renderProducts() {
            productsArea.innerHTML = '';
            const categories = currentCategory === 'all' ? ['food', 'electronics', 'fashion', 'home', 'beauty', 'sports'] : [currentCategory];
            let total = 0;

            categories.forEach(cat => {
                const filtered = products.filter(p => p.category === cat && p.title.toLowerCase().includes(searchQuery.toLowerCase()));
                if (filtered.length > 0) {
                    total += filtered.length;
                    const sec = document.createElement('div');
                    sec.className = 'category-section-block';
                    const catName = translations[currentLang][`${cat}Category`] || cat;
                    
                    sec.innerHTML = `
                        <div class="category-section-header">
                            <h2 class="category-section-title">${catName}</h2>
                            <span class="category-badge-count">${filtered.length} ITEMS</span>
                        </div>
                        <div class="category-items-grid">
                            ${filtered.map(item => createCardHTML(item)).join('')}
                        </div>
                    `;
                    productsArea.appendChild(sec);
                }
            });

            emptyState.style.display = total === 0 ? 'block' : 'none';
        }

        function createCardHTML(item) {
            const isLiked = wishlist.has(item.id);
            const t = translations[currentLang];

            return `
                <div class="product-card">
                    <div class="image-frame">
                        <button class="like-btn ${isLiked ? 'active' : ''}" onclick="toggleLike(${item.id})">♥</button>
                        <img src="${item.img}" alt="${item.title}">
                    </div>
                    <div class="item-details">
                        <div class="item-title">${item.title}</div>
                        <div class="item-rating">★ ${item.rating}</div>
                        <div class="item-price">$${item.price.toFixed(2)}</div>
                        <div class="action-row">
                            <button class="btn btn-add-cart" onclick="addToCart(${item.id})">${t.addToCart}</button>
                            <button class="btn btn-buy-now" onclick="quickBuy(${item.id})">${t.buyNow}</button>
                        </div>
                    </div>
                </div>
            `;
        }

        function updateCounts() {
            ['all', 'food', 'electronics', 'fashion', 'home', 'beauty', 'sports'].forEach(cat => {
                const el = document.getElementById(`count-${cat}`);
                if (el) {
                    el.innerText = cat === 'all' ? products.length : products.filter(p => p.category === cat).length;
                }
            });
        }

        window.addToCart = function(id) {
            const match = cart.find(i => i.id === id);
            if (match) match.qty += 1;
            else cart.push({ ...products.find(p => p.id === id), qty: 1 });
            updateCartUI();
            showToast(translations[currentLang].addedToast);
        };

        window.quickBuy = function(id) {
            addToCart(id);
            openCartModal();
        };

        window.toggleLike = function(id) {
            wishlist.has(id) ? wishlist.delete(id) : wishlist.add(id);
            renderProducts();
        };

        function updateCartUI() {
            cartCount.innerText = cart.reduce((s, i) => s + i.qty, 0);
            const list = document.getElementById('cart-items-list');
            const totalEl = document.getElementById('cart-total-price');
            const t = translations[currentLang];

            if (cart.length === 0) {
                list.innerHTML = `<div style="text-align:center; padding:30px; color:var(--text-muted);">${t.emptyCart}</div>`;
                totalEl.innerText = '$0.00';
                checkoutBtn.disabled = true;
                return;
            }

            checkoutBtn.disabled = false;
            let total = 0;
            list.innerHTML = cart.map((item, idx) => {
                total += item.price * item.qty;
                return `
                    <div class="cart-row">
                        <div class="cart-thumb"><img src="${item.img}"></div>
                        <div>
                            <div style="font-size:12px; font-weight:700;">${item.title}</div>
                            <div style="color:var(--neon-cyan); font-size:12px;">$${item.price.toFixed(2)}</div>
                            <div style="margin-top:4px;">
                                <button class="qty-btn" onclick="changeQty(${idx}, -1)">-</button>
                                <span style="font-size:12px; font-weight:700; margin:0 6px;">${item.qty}</span>
                                <button class="qty-btn" onclick="changeQty(${idx}, 1)">+</button>
                            </div>
                        </div>
                        <button style="background:none; border:none; color:var(--neon-magenta); cursor:pointer;" onclick="removeItem(${idx})">✕</button>
                    </div>
                `;
            }).join('');

            totalEl.innerText = `$${total.toFixed(2)}`;
        }

        window.changeQty = function(idx, delta) {
            cart[idx].qty += delta;
            if (cart[idx].qty <= 0) cart.splice(idx, 1);
            updateCartUI();
        };

        window.removeItem = function(idx) {
            cart.splice(idx, 1);
            updateCartUI();
        };

        function showToast(msg) {
            document.getElementById('toast-msg').innerText = msg;
            toast.classList.add('show');
            setTimeout(() => toast.classList.remove('show'), 2500);
        }

        function updateLanguageUI() {
            const t = translations[currentLang];
            document.getElementById('cart-btn-text').innerText = t.cartBtn;
            document.getElementById('hero-tag').innerText = t.heroTag;
            document.getElementById('hero-title').innerHTML = t.heroTitle;
            document.getElementById('hero-desc').innerText = t.heroDesc;
            searchInput.placeholder = t.searchPlaceholder;
            document.getElementById('sidebar-title').innerText = t.menuTitle;

            document.querySelectorAll('.cat-label').forEach(el => {
                const parent = el.closest('[data-target]');
                if (parent) {
                    const k = parent.getAttribute('data-target');
                    el.innerText = k === 'all' ? t.allCategories : (t[k + 'Category'] || k);
                }
            });

            document.getElementById('cart-modal-title').innerText = t.cartTitle;
            document.getElementById('total-label').innerText = t.total;
            document.getElementById('checkout-btn').innerText = t.checkout;
            document.getElementById('checkout-modal-title').innerText = t.checkoutTitle;
            document.getElementById('lbl-name').innerText = t.name;
            document.getElementById('lbl-email').innerText = t.email;
            document.getElementById('lbl-address').innerText = t.address;
            document.querySelector('#checkout-form button').innerText = t.confirmPay;

            renderProducts();
            updateCartUI();
        }

        function setupEventListeners() {
            langSelect.addEventListener('change', (e) => {
                currentLang = e.target.value;
                updateLanguageUI();
            });

            searchInput.addEventListener('input', (e) => {
                searchQuery = e.target.value.trim();
                clearSearchBtn.style.display = searchQuery ? 'flex' : 'none';
                renderProducts();
            });

            clearSearchBtn.addEventListener('click', () => {
                searchInput.value = '';
                searchQuery = '';
                clearSearchBtn.style.display = 'none';
                renderProducts();
            });

            categorySelect.addEventListener('change', (e) => setCategory(e.target.value));

            document.querySelectorAll('.chip, .menu-item-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    const cat = btn.getAttribute('data-category') || btn.getAttribute('data-target');
                    if (cat) setCategory(cat);
                });
            });

            openCartBtn.addEventListener('click', openCartModal);
            closeCartBtn.addEventListener('click', closeCartModal);
            closeCheckoutBtn.addEventListener('click', closeCheckoutModal);

            checkoutBtn.addEventListener('click', () => {
                closeCartModal();
                checkoutModal.style.display = 'flex';
            });

            checkoutForm.addEventListener('submit', (e) => {
                e.preventDefault();
                alert(translations[currentLang].orderSuccess);
                cart = [];
                updateCartUI();
                closeCheckoutModal();
            });
        }

        function setCategory(cat) {
            currentCategory = cat;
            categorySelect.value = cat;

            document.querySelectorAll('.chip').forEach(c => {
                c.classList.toggle('active', c.getAttribute('data-category') === cat);
            });

            document.querySelectorAll('.menu-item-btn').forEach(m => {
                m.classList.toggle('active', m.getAttribute('data-target') === cat);
            });

            renderProducts();
        }

        function openCartModal() { updateCartUI(); cartModal.style.display = 'flex'; }
        function closeCartModal() { cartModal.style.display = 'none'; }
        function closeCheckoutModal() { checkoutModal.style.display = 'none'; }

        window.addEventListener('DOMContentLoaded', init);
    </script>
</body>

</html>
