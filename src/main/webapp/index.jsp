<!DOCTYPE html>
<html lang="en">

<head>
    <!-- 1. CRITICAL: UTF-8 declaration must be the very first meta tag -->
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AURA - Cyberpunk Neo-Store</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --bg-base: #05070f;
            --bg-card: rgba(13, 18, 30, 0.7);
            --border-subtle: rgba(0, 240, 255, 0.15);
            --border-bright: #00f0ff;
            --text-primary: #f0f6fc;
            --text-secondary: #8b949e;
            --text-muted: #484f58;
            --neon-cyan: #00f0ff;
            --neon-magenta: #ff007f;
            --cyan-glow: rgba(0, 240, 255, 0.35);
            --radius-xs: 6px;
            --radius-sm: 12px;
            --radius-md: 18px;
            --radius-lg: 28px;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg-base);
            color: var(--text-primary);
            min-height: 100vh;
            padding-top: 110px;
            overflow-x: hidden;
            background-image: 
                radial-gradient(circle at 10% 10%, rgba(0, 240, 255, 0.08) 0%, transparent 40%),
                radial-gradient(circle at 90% 80%, rgba(255, 0, 127, 0.08) 0%, transparent 40%);
        }

        h1, h2, h3, .brand, .hero-tag, .btn { font-family: 'Space Grotesk', sans-serif; }
        button, input, select { font-family: inherit; }
        button { cursor: pointer; }

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
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            z-index: 1000;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            color: var(--text-primary);
            font-size: 22px;
            font-weight: 700;
            text-decoration: none;
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
            color: #000;
        }

        .brand span { color: var(--neon-cyan); }
        .nav-actions { display: flex; align-items: center; gap: 16px; }

        .settings-top-bar {
            display: flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--border-subtle);
            padding: 6px 14px;
            border-radius: 30px;
        }

        .settings-top-bar label { font-size: 12px; font-weight: 600; color: var(--text-secondary); }

        .lang-select {
            background: transparent;
            color: var(--neon-cyan);
            border: none;
            outline: none;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
        }

        .lang-select option { background: #0d121e; color: white; }

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

        main { max-width: 1500px; margin: 0 auto; padding: 10px 30px 100px; }

        .hero-banner {
            position: relative;
            border-radius: var(--radius-lg);
            padding: 60px;
            margin-bottom: 32px;
            border: 1px solid var(--border-subtle);
            background: linear-gradient(135deg, rgba(13, 18, 30, 0.8) 0%, rgba(5, 7, 15, 0.9) 100%);
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

        .hero-title { font-size: 46px; font-weight: 800; line-height: 1.1; margin-bottom: 16px; }
        .hero-title span { color: var(--neon-magenta); }
        .hero-desc { color: var(--text-secondary); font-size: 15px; line-height: 1.6; }

        .controls-card {
            background: var(--bg-card);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 20px;
            margin-bottom: 32px;
        }

        .search-row { display: grid; grid-template-columns: 1fr 240px; gap: 16px; margin-bottom: 16px; }
        .search-box { position: relative; }

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

        .select-input {
            height: 48px;
            padding: 0 16px;
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-sm);
            background: rgba(5, 7, 15, 0.8);
            color: var(--text-primary);
            font-size: 13px;
            font-weight: 600;
        }

        .category-scroll { display: flex; align-items: center; gap: 10px; overflow-x: auto; }

        .chip {
            padding: 8px 18px;
            border: 1px solid var(--border-subtle);
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.02);
            color: var(--text-secondary);
            font-size: 12px;
            font-weight: 600;
            white-space: nowrap;
        }

        .chip.active { background: var(--neon-cyan); color: #000; border-color: var(--neon-cyan); font-weight: 700; }

        .app-workspace { display: grid; grid-template-columns: 260px 1fr; gap: 32px; align-items: start; }

        .category-sidebar {
            background: var(--bg-card);
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-md);
            padding: 20px;
            position: sticky;
            top: 104px;
        }

        .sidebar-title { font-size: 13px; font-weight: 700; margin-bottom: 16px; color: var(--text-secondary); }
        .menu-list { list-style: none; display: flex; flex-direction: column; gap: 6px; }

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
        }

        .menu-item-btn.active { background: rgba(0, 240, 255, 0.08); border-color: var(--neon-cyan); color: var(--neon-cyan); }
        .products-area { display: flex; flex-direction: column; gap: 40px; }
        .category-section-header { display: flex; align-items: center; justify-content: space-between; margin-bottom: 20px; padding-bottom: 10px; border-bottom: 1px solid var(--border-subtle); }
        .category-section-title { font-size: 20px; font-weight: 700; }

        .category-items-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr)); gap: 20px; }

        .product-card {
            border: 1px solid var(--border-subtle);
            border-radius: var(--radius-sm);
            background: var(--bg-card);
            padding: 12px;
            display: flex;
            flex-direction: column;
        }

        .image-frame { position: relative; width: 100%; height: 180px; border-radius: var(--radius-xs); overflow: hidden; margin-bottom: 12px; }
        .image-frame img { width: 100%; height: 100%; object-fit: cover; }

        .item-title { font-size: 14px; font-weight: 700; margin-bottom: 6px; }
        .item-price { font-size: 18px; font-weight: 800; color: var(--neon-cyan); margin-bottom: 12px; }

        .action-row { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; margin-top: auto; }

        .btn { height: 36px; border-radius: var(--radius-xs); border: 1px solid transparent; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; }
        .btn-add-cart { background: rgba(0, 240, 255, 0.1); border-color: var(--neon-cyan); color: var(--neon-cyan); }
        .btn-buy-now { background: rgba(255, 0, 127, 0.1); border-color: var(--neon-magenta); color: var(--neon-magenta); }

        .modal-overlay { position: fixed; inset: 0; display: none; align-items: center; justify-content: center; padding: 20px; background: rgba(5, 7, 15, 0.85); backdrop-filter: blur(10px); z-index: 2000; }
        .modal-box { width: 100%; max-width: 500px; padding: 28px; border-radius: var(--radius-md); background: #0d121e; border: 1px solid var(--border-subtle); }
        .modal-header { display: flex; align-items: center; justify-content: space-between; margin-bottom: 20px; padding-bottom: 12px; border-bottom: 1px solid var(--border-subtle); }
    </style>
</head>

<body>

    <!-- FLOATING TOP NAVBAR -->
    <nav>
        <a href="#" class="brand">
            <div class="brand-logo">⚡</div>
            <div>AURA <span>NEO</span></div>
        </a>

        <div class="nav-actions">
            <div class="settings-top-bar">
                <label for="lang-select">LANG:</label>
                <!-- 2. Safe HTML Entity Encodings for language selection dropdown -->
                <select id="lang-select" class="lang-select">
                    <option value="en">English</option>
                    <option value="te">&#x0C24;&#x0C36;&#x0C32;&#x0C41;&#x0C17;&#x0C41; (Telugu)</option>
                    <option value="hi">&#x0939;&#x093F;&#x0928;&#x094D;&#x0926;&#x0940; (Hindi)</option>
                    <option value="es">Español</option>
                </select>
            </div>

            <button class="cart-btn" id="open-cart-btn">
                🛒 <span id="cart-btn-text">Cart</span> <span id="cart-count">0</span>
            </button>
        </div>
    </nav>

    <!-- MAIN APP WORKSPACE -->
    <main>
        <section class="hero-banner">
            <span class="hero-tag" id="hero-tag">Cyberpunk Edition</span>
            <h1 class="hero-title" id="hero-title">Future <span>Lifestyle</span> & Gourmet Tech</h1>
            <p class="hero-desc" id="hero-desc">Explore next-gen items, high-performance electronics, and artisanal culinary crafts curated for the modern era.</p>
        </section>

        <section class="controls-card">
            <div class="search-row">
                <div class="search-box">
                    <svg class="search-icon-svg" viewBox="0 0 24 24"><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/></svg>
                    <input type="text" id="search-input" class="search-input" placeholder="Search inventory...">
                </div>

                <select id="category-select" class="select-input">
                    <option value="all">All Sectors</option>
                    <option value="food">Gourmet Food</option>
                    <option value="electronics">Cyber Electronics</option>
                </select>
            </div>

            <div class="category-scroll">
                <button class="chip active" data-category="all">All Items</button>
                <button class="chip" data-category="food">🍔 Food</button>
                <button class="chip" data-category="electronics">🎧 Electronics</button>
            </div>
        </section>

        <div class="app-workspace">
            <aside class="category-sidebar">
                <div class="sidebar-title" id="sidebar-title">NAVIGATION SECTORS</div>
                <ul class="menu-list">
                    <li>
                        <button class="menu-item-btn active" data-target="all">
                            <span>🌐 <span class="cat-label">All Sectors</span></span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="food">
                            <span>🍔 <span class="cat-label">Gourmet Food</span></span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="electronics">
                            <span>🎧 <span class="cat-label">Electronics</span></span>
                        </button>
                    </li>
                </ul>
            </aside>

            <div class="products-area" id="products-area"></div>
        </div>
    </main>

    <!-- SHOPPING CART MODAL -->
    <div class="modal-overlay" id="cart-modal">
        <div class="modal-box">
            <div class="modal-header">
                <h3 id="cart-modal-title">Shopping Cart</h3>
                <button style="background:none; border:none; color:white; cursor:pointer;" id="close-cart-btn">✕</button>
            </div>
            <div id="cart-items-list"></div>
        </div>
    </div>

    <!-- JAVASCRIPT APP LOGIC (SAFE UNICODE ESCAPE STRINGS) -->
    <script>
        // 3. CRITICAL: Unicode escapes ensure non-English text never turns into Mojibake symbols
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
                addToCart: "ADD CART",
                buyNow: "BUY NOW",
                cartTitle: "Shopping Cart",
                emptyCart: "Your cart is currently empty."
            },
            te: {
                cartBtn: "\u0C15\u0C3E\u0C30\u0C4D\u0C1F\u0C4D", // కార్ట్
                heroTag: "\u0C38\u0C48\u0C2C\u0C30\u0C4D\u0C2A\u0C02\u0C15\u0C4D \u0C0E\u0C21\u0C3F\u0C37\u0C28\u0C4D", // సైబర్‌పంక్ ఎడిషన్
                heroTitle: "\u0C2D\u0C35\u0C3F\u0C37\u0C4D\u0C2F\u0C24\u0C4D <span>\u0C1C\u0C40\u0C35\u0C28\u0C36\u0C48\u0C32\u0C3F</span> \u0C2E\u0C30\u0C3F\u0C2F\u0C41 \u0C1F\u0C46\u0C15\u0C4D\u0C28\u0C3E\u0C32\u0C1C\u0C40", // భవిష్యత్ జీవనశైలి మరియు టెక్నాలజీ
                heroDesc: "\u0C05\u0C24\u0C4D\u0C2F\u0C41\u0C24\u0C4D\u0C24\u0C2E \u0C28\u0C3E\u0C23\u0C4D\u0C2F\u0C24 \u0C17\u0C32 \u0C30\u0C41\u0C1A\u0C3F\u0C15\u0C30\u0C2E\u0C48\u0C28 \u0C06\u0C39\u0C3E\u0C30\u0C02 \u0C2E\u0C30\u0C3F\u0C2F\u0C41 \u0C28\u0C42\u0C24\u0C28 \u0C0E\u0C32\u0C15\u0C4D\u0C1F\u0C4D\u0C30\u0C3E\u0C28\u0C3F\u0C15\u0C4D\u0C38\u0C4D \u0C09\u0C24\u0C4D\u0C2A\u0C24\u0C4D\u0C24\u0C41\u0C32\u0C41 \u0C07\u0C15\u0C4D\u0C15\u0C21 \u0C32\u0C2D\u0C3F\u0C02\u0C1A\u0C41\u0C28\u0C41.",
                searchPlaceholder: "\u0C36\u0C4B\u0C20\u0C3F\u0C02\u0C1A\u0C02\u0C21\u0C3F...", // శోధించండి...
                menuTitle: "\u0C35\u0C30\u0C4D\u0C17\u0C3E\u0C32\u0C41", // వర్గాలు
                allCategories: "\u0C05\u0C28\u0C4D\u0C28\u0C3F \u0C35\u0C30\u0C4D\u0C17\u0C3E\u0C32\u0C41", // అన్ని వర్గాలు
                foodCategory: "\u0C2B\u0C41\u0C21\u0C4D & \u0C17\u0C4A\u0C30\u0C4D\u0C2E\u0C47\u0C1F\u0C4D", // ఫుడ్ & గొర్మేట్
                electronicsCategory: "\u0C0E\u0C32\u0C15\u0C4D\u0C1F\u0C4D\u0C30\u0C3E\u0C28\u0C3F\u0C15\u0C4D\u0C38\u0C4D", // ఎలక్ట్రానిక్స్
                addToCart: "\u0C15\u0C3E\u0C30\u0C4D\u0C1F\u0C4D\u0C15\u0C41 \u0C1C\u0C4B\u0C21\u0C3F\u0C02\u0C1A\u0C41", // కార్ట్‌కు జోడించు
                buyNow: "\u0C15\u0C4B\u0C28\u0C02\u0C21\u0C3F", // కొనండి
                cartTitle: "\u0C37\u0C3E\u0C2A\u0C3F\u0C02\u0C17\u0C4D \u0C15\u0C3E\u0C30\u0C4D\u0C1F\u0C4D", // షాపింగ్ కార్ట్
                emptyCart: "\u0C15\u0C3E\u0C30\u0C4D\u0C1F\u0C4D \u0C16\u0C3E\u0C33\u0C40\u0C17\u0C3E \u0C09\u0C02\u0C26\u0C3F." // కార్ట్ ఖాళీగా ఉంది.
            },
            hi: {
                cartBtn: "\u0915\u093E\u0930\u094D\u091F", // कार्ट
                heroTag: "\u0938\u093E\u0907\u092C\u0930\u092A\u0902\u0915 \u0938\u0902\u0938\u094D\u0915\u0930\u0923", // साइबरपंक संस्करण
                heroTitle: "\u092D\u0935\u093F\u0937\u094D\u092F \u0915\u0940 <span>\u091C\u0940\u0935\u0928\u0936\u0948\u0932\u0940</span> \u0914\u0930 \u0924\u0915\u0928\u0940\u0915", // भविष्य की जीवनशैली और तकनीक
                heroDesc: "\u0909\u0924\u094D\u0915\u0943\u0937\u094D\u091F \u0909\u0924\u094D\u092A\u093E\u0926\u094B\u0902, \u0907\u0932\u0947\u0915\u094D\u091F\u094D\u0930\u094B\u0928\u093F\u0915\u094D\u0938 \u0914\u0930 \u0938\u094D\u0935\u093E\u0926\u093F\u0937\u094D\u091F \u0935\u094D\u092F\u0902\u091C\u0928\u094B\u0902 \u0915\u093E \u0905\u0928\u0941\u092D\u0935 \u0915\u0930\u0947\u0902\u0964",
                searchPlaceholder: "\u0909\u0924\u094D\u092A\u093E\u0926 \u0916\u094B\u091C\u0947\u0902...", // उत्पाद खोजें...
                menuTitle: "\u0928\u0947\u0935\u093F\u0917\u0947\u0936\u0928 \u092E\u0947\u0928\u0942", // नेविगेशन मेनू
                allCategories: "\u0938\u092D\u0940 \u0936\u094D\u0930\u0947\u0923\u093F\u092F\u093E\u0902", // सभी श्रेणियां
                foodCategory: "\u0916\u093E\u0926\u094D\u092F \u092A\u0926\u093E\u0930\u094D\u0925", // खाद्य पदार्थ
                electronicsCategory: "\u0907\u0932\u0947\u0915\u094D\u091F\u094D\u0930\u094B\u0928\u093F\u0915\u094D\u0938", // इलेक्ट्रॉनिक्स
                addToCart: "\u0915\u093E\u0930\u094D\u091F \u092E\u0947\u0902 \u091C\u094B\u0921\u093C\u0947\u0902", // कार्ट में जोड़ें
                buyNow: "\u0905\u092D\u0940 \u0916\u0930\u0940\u0926\u0947\u0902", // अभी खरीदें
                cartTitle: "\u0936\u094C\u092A\u093F\u0902\u0917 \u0915\u093E\u0930\u094D\u091F", // शॉपिंग कार्ट
                emptyCart: "\u0915\u093E\u0930\u094D\u091F \u0916\u093E\u0932\u0940 \u0939\u0948\u0964" // कार्ट खाली है।
            },
            es: {
                cartBtn: "Carrito",
                heroTag: "Edición Cyberpunk",
                heroTitle: "Estilo de Vida <span>Futurista</span> y Tecnología",
                heroDesc: "Explora artículos de última generación y gastronomía artesanal.",
                searchPlaceholder: "Buscar inventario...",
                menuTitle: "SECTORS",
                allCategories: "Todos los Sectores",
                foodCategory: "Comida Gourmet",
                electronicsCategory: "Electrónica",
                addToCart: "AÑADIR",
                buyNow: "COMPRAR",
                cartTitle: "Carrito de Compras",
                emptyCart: "El carrito está vacío."
            }
        };

        const products = [
            { id: 1, category: 'food', title: 'Artisanal Truffle Pasta Bowl', price: 24.99, img: 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=600&q=80' },
            { id: 2, category: 'electronics', title: 'Cyber Pulse Headphones', price: 299.99, img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&q=80' }
        ];

        let currentLang = 'en';

        function init() {
            renderProducts();
            setupEventListeners();
            updateLanguageUI();
        }

        function renderProducts() {
            const productsArea = document.getElementById('products-area');
            productsArea.innerHTML = '';

            const t = translations[currentLang];
            const sec = document.createElement('div');

            sec.innerHTML = `
                <div class="category-section-header">
                    <h2 class="category-section-title">${t.allCategories}</h2>
                </div>
                <div class="category-items-grid">
                    ${products.map(p => `
                        <div class="product-card">
                            <div class="image-frame"><img src="${p.img}"></div>
                            <div class="item-title">${p.title}</div>                             <div class="item-price">$${p.price.toFixed(2)}</div>
                            <div class="action-row">
                                <button class="btn btn-add-cart">${t.addToCart}</button>
                                <button class="btn btn-buy-now">${t.buyNow}</button>
                            </div>
                        </div>
                    `).join('')}
                </div>
            `;
            productsArea.appendChild(sec);
        }

        function updateLanguageUI() {
            const t = translations[currentLang];
            document.getElementById('cart-btn-text').innerText = t.cartBtn;
            document.getElementById('hero-tag').innerText = t.heroTag;
            document.getElementById('hero-title').innerHTML = t.heroTitle;
            document.getElementById('hero-desc').innerText = t.heroDesc;
            document.getElementById('search-input').placeholder = t.searchPlaceholder;
            document.getElementById('sidebar-title').innerText = t.menuTitle;

            document.querySelectorAll('.cat-label').forEach(el => {
                const parent = el.closest('[data-target]');
                if (parent) {
                    const k = parent.getAttribute('data-target');
                    el.innerText = k === 'all' ? t.allCategories : (t[k + 'Category'] || k);
                }
            });

            document.getElementById('cart-modal-title').innerText = t.cartTitle;
            renderProducts();
        }

        function setupEventListeners() {
            document.getElementById('lang-select').addEventListener('change', (e) => {
                currentLang = e.target.value;
                updateLanguageUI();
            });

            document.getElementById('open-cart-btn').addEventListener('click', () => {
                document.getElementById('cart-modal').style.display = 'flex';
            });

            document.getElementById('close-cart-btn').addEventListener('click', () => {
                document.getElementById('cart-modal').style.display = 'none';
            });
        }

        window.addEventListener('DOMContentLoaded', init);
    </script>
</body>

</html>
