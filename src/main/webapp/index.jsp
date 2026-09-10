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
            --surface-glass: rgba(18, 24, 38, 0.75);
            --surface-glass-hover: rgba(28, 36, 56, 0.85);
            --border-glass: rgba(255, 255, 255, 0.12);
            --border-glow: rgba(99, 102, 241, 0.5);
            
            --text-primary: #ffffff;
            --text-secondary: #94a3b8;
            --text-muted: #64748b;
            
            --accent-gradient: linear-gradient(135deg, #6366f1, #a855f7, #ec4899);
            --accent-glow: rgba(99, 102, 241, 0.4);
            --accent-solid: #6366f1;
            --buy-now-gradient: linear-gradient(135deg, #10b981, #059669);
            
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
            filter: brightness(0.22) contrast(1.1) blur(3px);
            transform: scale(1.05);
        }

        .bg-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background: radial-gradient(circle at 20% 20%, rgba(99, 102, 241, 0.18) 0%, transparent 50%),
                        radial-gradient(circle at 80% 80%, rgba(236, 72, 153, 0.15) 0%, transparent 50%),
                        linear-gradient(to bottom, rgba(7, 9, 14, 0.75), #07090e);
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
           NAVIGATION BAR (GLASSMORPHISM WITH TOP SETTINGS)
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
            background: rgba(10, 14, 23, 0.85);
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

        /* Language Selector Bar at Top */
        .settings-top-bar {
            display: flex;
            align-items: center;
            gap: 10px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border-glass);
            padding: 6px 14px;
            border-radius: 30px;
        }

        .settings-top-bar label {
            font-size: 13px;
            font-weight: 600;
            color: var(--text-secondary);
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .lang-select {
            background: transparent;
            color: white;
            border: none;
            outline: none;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
        }

        .lang-select option {
            background: #0f172a;
            color: white;
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

        /* Toast Alert Notification */
        .toast-notification {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: rgba(16, 185, 129, 0.95);
            color: white;
            padding: 14px 24px;
            border-radius: var(--radius-md);
            font-weight: 700;
            box-shadow: 0 10px 30px rgba(0,0,0,0.5);
            backdrop-filter: blur(10px);
            z-index: 3000;
            transform: translateY(100px);
            opacity: 0;
            transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .toast-notification.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================================================
           MAIN CONTAINER & LAYOUT STRUCTURE
        ========================================================= */
        main {
            max-width: 1600px;
            margin: 0 auto;
            padding: 20px 40px 100px;
        }

        .hero-banner {
            position: relative;
            border-radius: var(--radius-lg);
            padding: 50px 60px;
            margin-bottom: 32px;
            overflow: hidden;
            border: 1px solid var(--border-glass);
            background: rgba(18, 24, 38, 0.5);
            backdrop-filter: blur(var(--blur-strength));
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        .hero-bg-img {
            position: absolute;
            top: 0;
            right: 0;
            width: 55%;
            height: 100%;
            object-fit: cover;
            opacity: 0.35;
            mask-image: linear-gradient(to left, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 100%);
            -webkit-mask-image: linear-gradient(to left, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 100%);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 650px;
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
            font-size: 40px;
            font-weight: 800;
            line-height: 1.15;
            margin-bottom: 14px;
            letter-spacing: -1px;
        }

        .hero-title span {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-desc {
            color: var(--text-secondary);
            font-size: 15px;
            line-height: 1.6;
        }

        /* =========================================================
           CONTROLS & NAVIGATION CHIPS
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
            margin-bottom: 16px;
        }

        .search-box {
            position: relative;
        }

        .search-input {
            width: 100%;
            height: 50px;
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
            height: 50px;
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

        /* =========================================================
           SIDE-BY-SIDE SIDEBAR NAVIGATION & CATEGORY LISTINGS
        ========================================================= */
        .app-workspace {
            display: grid;
            grid-template-columns: 280px 1fr;
            gap: 32px;
            align-items: start;
        }

        .category-sidebar {
            background: var(--surface-glass);
            backdrop-filter: blur(var(--blur-strength));
            border: 1px solid var(--border-glass);
            border-radius: var(--radius-lg);
            padding: 24px;
            position: sticky;
            top: 104px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
        }

        .sidebar-title {
            font-size: 16px;
            font-weight: 800;
            margin-bottom: 18px;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            color: var(--text-secondary);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .menu-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .menu-item-btn {
            width: 100%;
            text-align: left;
            padding: 12px 18px;
            border-radius: var(--radius-md);
            border: 1px solid transparent;
            background: rgba(255, 255, 255, 0.02);
            color: var(--text-secondary);
            font-size: 14px;
            font-weight: 600;
            display: flex;
            align-items: center;
            justify-content: space-between;
            transition: all 0.25s ease;
        }

        .menu-item-btn:hover {
            background: rgba(255, 255, 255, 0.07);
            color: var(--text-primary);
            border-color: var(--border-glass);
        }

        .menu-item-btn.active {
            background: rgba(99, 102, 241, 0.15);
            border-color: var(--accent-solid);
            color: white;
            font-weight: 700;
        }

        .menu-item-count {
            background: rgba(255, 255, 255, 0.1);
            font-size: 11px;
            padding: 2px 8px;
            border-radius: 12px;
            color: var(--text-secondary);
        }

        /* Products Display Area */
        .products-area {
            display: flex;
            flex-direction: column;
            gap: 48px;
        }

        .category-section-block {
            scroll-margin-top: 110px;
        }

        .category-section-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 22px;
            padding-bottom: 12px;
            border-bottom: 1px solid var(--border-glass);
        }

        .category-section-title {
            font-size: 24px;
            font-weight: 800;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .category-badge-count {
            font-size: 13px;
            font-weight: 600;
            padding: 4px 12px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.08);
            color: var(--text-secondary);
        }

        /* Horizontal Carousel Grid per category */
        .category-items-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
            gap: 22px;
        }

        /* Product Card Design */
        .product-card {
            display: flex;
            flex-direction: column;
            border: 1px solid var(--border-glass);
            border-radius: var(--radius-md);
            background: var(--surface-glass);
            backdrop-filter: blur(var(--blur-strength));
            padding: 14px;
            overflow: hidden;
            transition: all 0.35s cubic-bezier(0.16, 1, 0.3, 1);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
        }

        .product-card:hover {
            transform: translateY(-6px);
            border-color: var(--border-glow);
            box-shadow: 0 18px 35px rgba(0, 0, 0, 0.4), 0 0 20px var(--accent-glow);
        }

        .image-frame {
            position: relative;
            width: 100%;
            height: 190px;
            border-radius: var(--radius-sm);
            overflow: hidden;
            margin-bottom: 14px;
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
            top: 10px;
            left: 10px;
            padding: 4px 10px;
            border-radius: 20px;
            color: white;
            font-size: 10px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            backdrop-filter: blur(10px);
            z-index: 2;
        }

        .badge-electronics { background: rgba(59, 130, 246, 0.85); }
        .badge-fashion { background: rgba(236, 72, 153, 0.85); }
        .badge-home { background: rgba(16, 185, 129, 0.85); }
        .badge-beauty { background: rgba(168, 85, 247, 0.85); }
        .badge-sports { background: rgba(245, 158, 11, 0.85); }

        .like-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 32px;
            height: 32px;
            border: none;
            border-radius: 50%;
            background: rgba(10, 14, 23, 0.6);
            backdrop-filter: blur(8px);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 14px;
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
            font-size: 15px;
            font-weight: 700;
            color: var(--text-primary);
            margin-bottom: 6px;
            line-height: 1.35;
            min-height: 40px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .item-rating {
            color: #fbbf24;
            font-size: 12px;
            margin-bottom: 10px;
        }

        .item-rating span {
            color: var(--text-muted);
            margin-left: 4px;
        }

        .item-price {
            font-size: 20px;
            font-weight: 800;
            color: var(--text-primary);
            margin-bottom: 14px;
        }

        .action-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 8px;
            margin-top: auto;
        }

        .btn {
            height: 38px;
            border-radius: var(--radius-sm);
            border: none;
            font-size: 12px;
            font-weight: 700;
            transition: all 0.25s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
        }

        .btn-add-cart {
            background: var(--accent-gradient);
            color: white;
            box-shadow: 0 4px 12px rgba(99, 102, 241, 0.3);
        }

        .btn-add-cart:hover {
            box-shadow: 0 0 18px var(--accent-glow);
            transform: translateY(-2px);
        }

        .btn-buy-now {
            background: var(--buy-now-gradient);
            color: white;
            box-shadow: 0 4px 12px rgba(16, 185, 129, 0.3);
        }

        .btn-buy-now:hover {
            box-shadow: 0 0 18px rgba(16, 185, 129, 0.5);
            transform: translateY(-2px);
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
            max-width: 560px;
            max-height: 85vh;
            overflow-y: auto;
            padding: 32px;
            border-radius: var(--radius-lg);
            background: rgba(18, 24, 38, 0.92);
            border: 1px solid var(--border-glass);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.6), 0 0 30px rgba(99, 102, 241, 0.2);
            animation: modalFadeIn 0.3s cubic-bezier(0.16, 1, 0.3, 1);
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

        /* Cart Modal Elements */
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

        /* Checkout Form */
        .form-group {
            margin-bottom: 16px;
        }

        .form-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 6px;
            color: var(--text-secondary);
        }

        .form-control {
            width: 100%;
            height: 44px;
            padding: 0 14px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border-glass);
            background: rgba(7, 9, 14, 0.6);
            color: white;
            outline: none;
            font-size: 14px;
        }

        .form-control:focus {
            border-color: var(--accent-solid);
        }

        /* Responsive Breakpoints */
        @media (max-width: 1024px) {
            .app-workspace {
                grid-template-columns: 1fr;
            }
            .category-sidebar {
                position: static;
            }
        }

        @media (max-width: 850px) {
            nav { padding: 0 20px; }
            main { padding: 20px 20px 60px; }
            .hero-banner { padding: 32px; }
            .hero-bg-img { display: none; }
            .search-row { grid-template-columns: 1fr; }
            .category-items-grid {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }
        }
    </style>
</head>

<body>

    <!-- ATMOSPHERIC BACKGROUND IMAGE -->
    <div class="app-bg-wrapper">
        <img class="app-bg-image" src="https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=1600&q=80" alt="Atmospheric Background">
    </div>
    <div class="bg-overlay"></div>

    <!-- TOAST NOTIFICATION FOR ACTIONS -->
    <div id="toast" class="toast-notification">
        <span id="toast-icon">🛒</span>
        <span id="toast-msg">Item added to cart!</span>
    </div>

    <!-- NAVIGATION BAR -->
    <nav>
        <a href="#" class="brand">
            <div class="brand-logo">✨</div>
            <div>AURA <span id="nav-store-title">STORE</span></div>
        </a>

        <div class="nav-actions">
            <!-- TOP SETTINGS: LANGUAGE SELECTION -->
            <div class="settings-top-bar">
                <label for="lang-select">🌐 <span id="lang-label">Lang:</span></label>
                <select id="lang-select" class="lang-select">
                    <option value="en">English</option>
                    <option value="te">తెలుగు (Telugu)</option>
                    <option value="hi">हिन्दी (Hindi)</option>
                    <option value="es">Español</option>
                </select>
            </div>

            <button class="cart-btn" id="open-cart-btn">
                🛒 <span id="cart-btn-text">Cart</span> <span id="cart-count">0</span>
            </button>
        </div>
    </nav>

    <!-- MAIN CONTAINER -->
    <main>

        <!-- HERO SECTION -->
        <section class="hero-banner">
            <img class="hero-bg-img" src="https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=1000&q=80" alt="Hero Background Item">
            <div class="hero-content">
                <span class="hero-tag" id="hero-tag">Next-Gen Collection</span>
                <h1 class="hero-title" id="hero-title">Elevate Your <span>Lifestyle</span> & Tech</h1>
                <p class="hero-desc" id="hero-desc">Discover curated premium essentials built for performance, comfort, and unmatched modern aesthetics with 100+ items across categories.</p>
            </div>
        </section>

        <!-- SEARCH AND FILTER CONTROLS -->
        <section class="controls-card">
            <div class="search-row">
                <div class="search-box">
                    <svg class="search-icon-svg" viewBox="0 0 24 24"><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/></svg>
                    <input type="text" id="search-input" class="search-input" placeholder="Search across all 100+ items...">
                    <button id="clear-search-btn" class="clear-search-btn">✕</button>
                </div>

                <select id="category-select" class="select-input">
                    <option value="all">All Categories</option>
                    <option value="electronics">Electronics</option>
                    <option value="fashion">Fashion</option>
                    <option value="home">Home & Living</option>
                    <option value="beauty">Beauty & Care</option>
                    <option value="sports">Sports & Fitness</option>
                </select>
            </div>

            <!-- SCROLLABLE QUICK CHIPS -->
            <div class="category-scroll">
                <button class="chip active" data-category="all">All Products (100)</button>
                <button class="chip" data-category="electronics">🎧 Electronics (20)</button>
                <button class="chip" data-category="fashion">👔 Fashion (20)</button>
                <button class="chip" data-category="home">🏠 Home & Living (20)</button>
                <button class="chip" data-category="beauty">✨ Beauty (20)</button>
                <button class="chip" data-category="sports">⚽ Sports (20)</button>
            </div>
        </section>

        <!-- APP WORKSPACE: MENU SIDEBAR BESIDE PRODUCT LISTS -->
        <div class="app-workspace">
            
            <!-- LEFT MENU ITEMS SIDEBAR -->
            <aside class="category-sidebar">
                <div class="sidebar-title" id="sidebar-title">📁 Menu Categories</div>
                <ul class="menu-list" id="sidebar-menu">
                    <li>
                        <button class="menu-item-btn active" data-target="all">
                            <span>🌐 <span class="cat-label">All Categories</span></span>
                            <span class="menu-item-count">100</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="electronics">
                            <span>🎧 <span class="cat-label">Electronics</span></span>
                            <span class="menu-item-count">20</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="fashion">
                            <span>👔 <span class="cat-label">Fashion</span></span>
                            <span class="menu-item-count">20</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="home">
                            <span>🏠 <span class="cat-label">Home & Living</span></span>
                            <span class="menu-item-count">20</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="beauty">
                            <span>✨ <span class="cat-label">Beauty & Care</span></span>
                            <span class="menu-item-count">20</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="sports">
                            <span>⚽ <span class="cat-label">Sports & Gear</span></span>
                            <span class="menu-item-count">20</span>
                        </button>
                    </li>
                </ul>
            </aside>

            <!-- RIGHT PRODUCTS CONTAINER (CATEGORIES ONE BY ONE) -->
            <div class="products-area" id="products-container">
                <!-- Dynamic categories with 20 items each populated by JavaScript -->
            </div>

        </div>

    </main>

    <!-- CART MODAL -->
    <div class="modal-overlay" id="cart-modal">
        <div class="modal-box">
            <div class="modal-header">
                <h3 id="cart-modal-title">Your Shopping Cart</h3>
                <button class="close-modal-btn" id="close-cart-btn">✕</button>
            </div>
            <div id="cart-items-wrapper">
                <!-- Cart items rendered here -->
            </div>
            <div class="cart-footer">
                <div class="cart-total-row">
                    <span id="total-text">Total Amount:</span>
                    <span id="cart-total-price">$0.00</span>
                </div>
                <button class="btn btn-add-cart" id="checkout-btn" style="width: 100%; height: 48px; font-size: 15px;">Proceed to Checkout</button>
            </div>
        </div>
    </div>

    <!-- BUY NOW QUICK CHECKOUT MODAL -->
    <div class="modal-overlay" id="buynow-modal">
        <div class="modal-box">
            <div class="modal-header">
                <h3>⚡ Quick Checkout</h3>
                <button class="close-modal-btn" id="close-buynow-btn">✕</button>
            </div>
            <div id="buynow-product-summary" style="margin-bottom: 20px;"></div>
            <form id="buynow-form" onsubmit="event.preventDefault(); completeDirectPurchase();">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" class="form-control" required placeholder="John Doe">
                </div>
                <div class="form-group">
                    <label>Shipping Address</label>
                    <input type="text" class="form-control" required placeholder="123 Main Street, City">
                </div>
                <div class="form-group">
                    <label>Payment Method</label>
                    <select class="form-control">
                        <option>Credit / Debit Card</option>
                        <option>UPI / Direct Wallet</option>
                        <option>Cash on Delivery</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-buy-now" style="width:100%; height:48px; font-size:15px; margin-top:10px;">Confirm & Pay Now</button>
            </form>
        </div>
    </div>

    <!-- JAVASCRIPT & DATA GENERATION -->
    <script>
        /* =========================================================
           TRANSLATION DICTIONARY FOR MULTI-LANGUAGE
        ========================================================= */
        const translations = {
            en: {
                navStore: "STORE",
                langLabel: "Lang:",
                cartBtn: "Cart",
                heroTag: "Next-Gen Collection",
                heroTitle: "Elevate Your <span>Lifestyle</span> & Tech",
                heroDesc: "Discover curated premium essentials built for performance, comfort, and unmatched modern aesthetics with 20 items per category.",
                searchPlaceholder: "Search across all 100+ items...",
                sidebarTitle: "📁 Menu Categories",
                allCat: "All Categories",
                electronics: "Electronics",
                fashion: "Fashion",
                home: "Home & Living",
                beauty: "Beauty & Care",
                sports: "Sports & Fitness",
                addToCart: "Add to Cart",
                buyNow: "Buy Now",
                totalAmount: "Total Amount:",
                cartTitle: "Your Shopping Cart"
            },
            te: {
                navStore: "స్టోర్",
                langLabel: "భాష:",
                cartBtn: "కార్ట్",
                heroTag: "నూతన శ్రేణి కలెక్షన్",
                heroTitle: "మీ <span>జీవనశైలి</span> & టెక్నాలజీని పెంచుకోండి",
                heroDesc: "ప్రతి కేటగిరీలో 20 నాణ్యమైన వస్తువులతో మెరుగైన షాపింగ్ అనుభవాన్ని పొందండి.",
                searchPlaceholder: "100 కంటే ఎక్కువ వస్తువులలో శోధించండి...",
                sidebarTitle: "📁 కేటగిరీ మెనూ",
                allCat: "అన్ని రకాలు",
                electronics: "ఎలక్ట్రానిక్స్",
                fashion: "ఫ్యాషన్",
                home: "హోమ్ & లివింగ్",
                beauty: "బ్యూటీ & కేర్",
                sports: "స్పోర్ట్స్ & ఫిట్‌నెస్",
                addToCart: "కార్ట్‌కు జోడించు",
                buyNow: "ఇప్పుడే కొనండి",
                totalAmount: "మొత్తం ధర:",
                cartTitle: "మీ షాపింగ్ కార్ట్"
            },
            hi: {
                navStore: "स्टोर",
                langLabel: "भाषा:",
                cartBtn: "कार्ट",
                heroTag: "नया संग्रह",
                heroTitle: "अपनी <span>जीवनशैली</span> और तकनीक को सुधारें",
                heroDesc: "प्रत्येक श्रेणी में 20 गुणवत्ता वाले उत्पादों के साथ बेहतरीन खरीदारी का आनंद लें।",
                searchPlaceholder: "100+ उत्पादों में खोजें...",
                sidebarTitle: "📁 श्रेणी मेनू",
                allCat: "सभी श्रेणियां",
                electronics: "इलेक्ट्रॉनिक्स",
                fashion: "फैशन",
                home: "होम एंड लिविंग",
                beauty: "ब्यूटी एंड केयर",
                sports: "खेल और फिटनेस",
                addToCart: "कार्ट में जोड़ें",
                buyNow: "अभी खरीदें",
                totalAmount: "कुल राशि:",
                cartTitle: "आपकी खरीदारी की टोकरी"
            },
            es: {
                navStore: "TIENDA",
                langLabel: "Idioma:",
                cartBtn: "Carrito",
                heroTag: "Colección Nueva",
                heroTitle: "Eleva tu <span>Estilo de Vida</span> y Tecnología",
                heroDesc: "Descubre artículos premium diseñados para el rendimiento y el confort con 20 productos por categoría.",
                searchPlaceholder: "Buscar entre más de 100 artículos...",
                sidebarTitle: "📁 Categorías del Menú",
                allCat: "Todas las Categorías",
                electronics: "Electrónica",
                fashion: "Moda",
                home: "Hogar y Vida",
                beauty: "Belleza y Cuidado",
                sports: "Deportes y Fitness",
                addToCart: "Añadir al Carrito",
                buyNow: "Comprar Ahora",
                totalAmount: "Monto Total:",
                cartTitle: "Tu Carrito de Compras"
            }
        };

        let currentLang = 'en';

        /* =========================================================
           DATA SOURCE: 20 PRODUCTS PER CATEGORY (TOTAL 100 ITEMS)
        ========================================================= */
        const categoriesData = [
            {
                id: 'electronics',
                name: 'Electronics',
                icon: '🎧',
                items: [
                    { id: 'e1', name: 'Studio Wireless Headphones', price: 249.99, rating: '4.9', img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80' },
                    { id: 'e2', name: 'Ultra Fitness Smartwatch', price: 189.50, rating: '4.7', img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&q=80' },
                    { id: 'e3', name: '360 Spatial Bluetooth Speaker', price: 99.99, rating: '4.8', img: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500&q=80' },
                    { id: 'e4', name: 'Precision Ergonomic Mouse', price: 59.99, rating: '4.6', img: 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=500&q=80' },
                    { id: 'e5', name: 'RGB Mechanical Gaming Keyboard', price: 129.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=500&q=80' },
                    { id: 'e6', name: '4K Ultra HD Streaming Camera', price: 149.99, rating: '4.5', img: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500&q=80' },
                    { id: 'e7', name: 'Noise-Canceling Earbuds Pro', price: 179.99, rating: '4.8', img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=500&q=80' },
                    { id: 'e8', name: 'Fast Wireless Charging Pad', price: 39.99, rating: '4.4', img: 'https://images.unsplash.com/photo-1622445268465-843d63d03e52?w=500&q=80' },
                    { id: 'e9', name: 'Curved UltraWide Monitor 34"', price: 499.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=500&q=80' },
                    { id: 'e10', name: 'Portable SSD Power Drive 1TB', price: 119.50, rating: '4.7', img: 'https://images.unsplash.com/photo-1597872200969-2b65d56bd16b?w=500&q=80' },
                    { id: 'e11', name: 'Smart Home Hub Speaker', price: 89.99, rating: '4.5', img: 'https://images.unsplash.com/photo-1543512214-318c7553f230?w=500&q=80' },
                    { id: 'e12', name: 'HD Action Sports Camera', price: 210.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=500&q=80' },
                    { id: 'e13', name: 'Pro Drone with 4K Gimbal', price: 799.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1527977966376-1c8408f9f108?w=500&q=80' },
                    { id: 'e14', name: 'Electric Stylus Pen Tablet', price: 75.00, rating: '4.3', img: 'https://images.unsplash.com/photo-1626218174358-7769486c4b79?w=500&q=80' },
                    { id: 'e15', name: 'Virtual Reality Headset VR', price: 349.99, rating: '4.7', img: 'https://images.unsplash.com/photo-1622979135225-d2ba269bc1bd?w=500&q=80' },
                    { id: 'e16', name: 'Smart Security Cam Outdoor', price: 129.99, rating: '4.6', img: 'https://images.unsplash.com/photo-1557324232-b8917d3c3dcb?w=500&q=80' },
                    { id: 'e17', name: 'High-Speed Wi-Fi 6 Router', price: 159.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=500&q=80' },
                    { id: 'e18', name: 'Foldable Solar Power Bank', price: 49.99, rating: '4.4', img: 'https://images.unsplash.com/photo-1609592424109-dd9892f1b177?w=500&q=80' },
                    { id: 'e19', name: 'Studio USB Condenser Mic', price: 109.99, rating: '4.8', img: 'https://images.unsplash.com/photo-1590658006821-04f4008d5717?w=500&q=80' },
                    { id: 'e20', name: 'Adjustable Laptop Cooling Stand', price: 34.99, rating: '4.5', img: 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=500&q=80' }
                ]
            },
            {
                id: 'fashion',
                name: 'Fashion',
                icon: '👔',
                items: [
                    { id: 'f1', name: 'Minimalist Leather Watch', price: 110.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=500&q=80' },
                    { id: 'f2', name: 'Vintage Denim Outerwear Jacket', price: 135.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1576995853123-5a10305d93c0?w=500&q=80' },
                    { id: 'f3', name: 'Urban Leather Street Sneakers', price: 125.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=500&q=80' },
                    { id: 'f4', name: 'Polarized Aviator Sunglasses', price: 85.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=500&q=80' },
                    { id: 'f5', name: 'Classic Organic Cotton Hoodie', price: 65.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?w=500&q=80' },
                    { id: 'f6', name: 'Executive Leather Briefcase', price: 210.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500&q=80' },
                    { id: 'f7', name: 'Slim Fit Tailored Blazer', price: 180.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=500&q=80' },
                    { id: 'f8', name: 'Merino Wool Knit Beanie', price: 29.99, rating: '4.5', img: 'https://images.unsplash.com/photo-1576871337632-b9aef4c17ab9?w=500&q=80' },
                    { id: 'f9', name: 'Modern Canvas Weekender Bag', price: 95.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1547949003-9792a18a2601?w=500&q=80' },
                    { id: 'f10', name: 'Breathable Running Shoes', price: 115.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?w=500&q=80' },
                    { id: 'f11', name: 'Italian Grain Leather Belt', price: 45.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1624222247344-550fb60583dc?w=500&q=80' },
                    { id: 'f12', name: 'Waterproof Winter Parka Coat', price: 240.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?w=500&q=80' },
                    { id: 'f13', name: 'Casual Linen Button-Down Shirt', price: 55.00, rating: '4.4', img: 'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=500&q=80' },
                    { id: 'f14', name: 'Designer Gold Accent Bracelet', price: 89.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1611591475179-42004245649f?w=500&q=80' },
                    { id: 'f15', name: 'Athletic Compression Joggers', price: 49.99, rating: '4.5', img: 'https://images.unsplash.com/photo-1552902865-b72c031ac5ea?w=500&q=80' },
                    { id: 'f16', name: 'Vintage Leather Biker Jacket', price: 299.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1521223890158-f9f7c3d5d504?w=500&q=80' },
                    { id: 'f17', name: 'Minimalist Cardholder Wallet', price: 35.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1627123424574-724758594e93?w=500&q=80' },
                    { id: 'f18', name: 'Cashmere Winter Scarf', price: 70.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?w=500&q=80' },
                    { id: 'f19', name: 'Retro High-Top Sneakers', price: 105.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1512374382149-233c42b6a83b?w=500&q=80' },
                    { id: 'f20', name: 'Satin Luxury Night Robe', price: 80.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?w=500&q=80' }
                ]
            },
            {
                id: 'home',
                name: 'Home & Living',
                icon: '🏠',
                items: [
                    { id: 'h1', name: 'Aroma Diffuser & Humidifier', price: 42.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1602928321679-560b4139c901?w=500&q=80' },
                    { id: 'h2', name: 'Ergonomic Memory Desk Chair', price: 220.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1580481072645-022f9a6d8310?w=500&q=80' },
                    { id: 'h3', name: 'Nordic Ceramic Vase Set', price: 38.50, rating: '4.6', img: 'https://images.unsplash.com/photo-1612196808214-b7e239e5f6b7?w=500&q=80' },
                    { id: 'h4', name: 'Handcrafted Soy Scented Candle', price: 24.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1603006905003-be475563bc59?w=500&q=80' },
                    { id: 'h5', name: 'Minimalist LED Desk Lamp', price: 54.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1534073828943-f801091bb18c?w=500&q=80' },
                    { id: 'h6', name: 'Smart Vacuum Robot Cleaner', price: 299.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1518640467707-6811f4a6ab73?w=500&q=80' },
                    { id: 'h7', name: 'Organic Bamboo Bed Sheet Set', price: 95.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=500&q=80' },
                    { id: 'h8', name: 'Precision French Coffee Press', price: 36.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=500&q=80' },
                    { id: 'h9', name: 'Modern Wall Clock Silent', price: 29.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1563861826100-9cb868fdbe1c?w=500&q=80' },
                    { id: 'h10', name: 'Indoor Succulent Garden Pots', price: 32.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1485955900006-10f4d324d411?w=500&q=80' },
                    { id: 'h11', name: 'Electric Espresso Machine', price: 189.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1570968915860-54d5c301fa9f?w=500&q=80' },
                    { id: 'h12', name: 'Velvet Soft Throw Pillow Cover', price: 18.00, rating: '4.4', img: 'https://images.unsplash.com/photo-1584100936595-c0654b55a2e2?w=500&q=80' },
                    { id: 'h13', name: 'Natural Wooden Cutting Board', price: 40.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?w=500&q=80' },
                    { id: 'h14', name: 'Air Purifier True HEPA Filter', price: 149.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=500&q=80' },
                    { id: 'h15', name: 'Stainless Steel Knife Set', price: 85.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1593618998160-e34014e67546?w=500&q=80' },
                    { id: 'h16', name: 'Non-Stick Ceramic Cookware', price: 129.99, rating: '4.8', img: 'https://images.unsplash.com/photo-1584992236310-6edddc08acff?w=500&q=80' },
                    { id: 'h17', name: 'Woven Cotton Storage Basket', price: 26.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1595428774223-ef52624120d2?w=500&q=80' },
                    { id: 'h18', name: 'Smart Temperature Control Mug', price: 110.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=500&q=80' },
                    { id: 'h19', name: 'Abstract Art Wall Canvas', price: 65.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1579783902614-a3fb3927b675?w=500&q=80' },
                    { id: 'h20', name: 'Plush Bathrobe Ultra-Soft', price: 75.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?w=500&q=80' }
                ]
            },
            {
                id: 'beauty',
                name: 'Beauty & Care',
                icon: '✨',
                items: [
                    { id: 'b1', name: 'Hydrating Face Serum Hyaluronic', price: 48.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?w=500&q=80' },
                    { id: 'b2', name: 'Botanical Hair Repair Oil', price: 34.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1608248597261-5421d55ab385?w=500&q=80' },
                    { id: 'b3', name: 'Sonic Facial Cleansing Brush', price: 79.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?w=500&q=80' },
                    { id: 'b4', name: 'Luxury Eau De Parfum 100ml', price: 120.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1541643600914-78b084683601?w=500&q=80' },
                    { id: 'b5', name: 'Jade Facial Roller & Gua Sha', price: 22.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1617897903246-719242758050?w=500&q=80' },
                    { id: 'b6', name: 'Organic Coconut Body Butter', price: 28.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1556228720-195a672e8a03?w=500&q=80' },
                    { id: 'b7', name: 'Pro Ionic Hair Dryer 1800W', price: 89.99, rating: '4.8', img: 'https://images.unsplash.com/photo-1522337660859-02fbefca4702?w=500&q=80' },
                    { id: 'b8', name: 'Vitamin C Brightening Balm', price: 39.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1567928269937-ae146e45b428?w=500&q=80' },
                    { id: 'b9', name: 'Matte Liquid Lipstick Set', price: 32.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1586495777744-4413f21062fa?w=500&q=80' },
                    { id: 'b10', name: 'Soothing Aloe Gel Moisturizer', price: 19.99, rating: '4.6', img: 'https://images.unsplash.com/photo-1561053720-76cd73ff22c3?w=500&q=80' },
                    { id: 'b11', name: 'Gentle Exfoliating Scrub', price: 26.00, rating: '4.4', img: 'https://images.unsplash.com/photo-1556228722-d119f649832d?w=500&q=80' },
                    { id: 'b12', name: 'Pro Ceramic Hair Straightener', price: 69.99, rating: '4.8', img: 'https://images.unsplash.com/photo-1560066984-138dadb4c035?w=500&q=80' },
                    { id: 'b13', name: 'Nourishing Eye Cream Anti-Aging', price: 45.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1571781926291-c477ebfd024b?w=500&q=80' },
                    { id: 'b14', name: 'Sunscreen Gel SPF 50+', price: 25.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1598440947619-2c35fc9aa908?w=500&q=80' },
                    { id: 'b15', name: 'Charcoal Detox Clay Mask', price: 24.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1567928269937-ae146e45b428?w=500&q=80' },
                    { id: 'b16', name: 'Rosewater Facial Mist Spray', price: 18.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1608248597261-5421d55ab385?w=500&q=80' },
                    { id: 'b17', name: 'Beard Grooming Kit & Oil', price: 38.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1621607512214-68297480165e?w=500&q=80' },
                    { id: 'b18', name: 'Eyelash Volumizing Serum', price: 29.00, rating: '4.4', img: 'https://images.unsplash.com/photo-1512496015851-a90fb38ba796?w=500&q=80' },
                    { id: 'b19', name: 'Natural Mineral Makeup Kit', price: 58.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?w=500&q=80' },
                    { id: 'b20', name: 'Luxury Spa Bath Bomb Set', price: 22.50, rating: '4.8', img: 'https://images.unsplash.com/photo-1507652313519-d4e9174996dd?w=500&q=80' }
                ]
            },
            {
                id: 'sports',
                name: 'Sports & Fitness',
                icon: '⚽',
                items: [
                    { id: 's1', name: 'Non-Slip Eco Yoga Mat 6mm', price: 45.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=500&q=80' },
                    { id: 's2', name: 'Adjustable Dumbbell Set 50lbs', price: 199.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1638805981949-33230983a54d?w=500&q=80' },
                    { id: 's3', name: 'Insulated Sports Water Bottle', price: 28.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=500&q=80' },
                    { id: 's4', name: 'Deep Tissue Massage Gun', price: 129.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1519823551278-64ac92734fb1?w=500&q=80' },
                    { id: 's5', name: 'Heavy Duty Resistance Bands', price: 25.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1598289431512-b97b0917affc?w=500&q=80' },
                    { id: 's6', name: 'Pro Speed Jump Rope', price: 16.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?w=500&q=80' },
                    { id: 's7', name: 'Hydration Running Vest Pack', price: 65.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1552674605-db6ffd4facb5?w=500&q=80' },
                    { id: 's8', name: 'Trail Hiking Backpack 35L', price: 89.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1622560480605-d83c853bc5c3?w=500&q=80' },
                    { id: 's9', name: 'Carbon Fiber Badminton Racket', price: 75.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1626224583764-f87db24ac4ea?w=500&q=80' },
                    { id: 's10', name: 'Official Size Leather Basketball', price: 39.99, rating: '4.8', img: 'https://images.unsplash.com/photo-1519861531473-9200262188bf?w=500&q=80' },
                    { id: 's11', name: 'Padded Cycling Gloves Short', price: 22.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=500&q=80' },
                    { id: 's12', name: 'High-Density Foam Roller', price: 29.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1518611012118-696072aa579a?w=500&q=80' },
                    { id: 's13', name: 'Outdoor Waterproof Tent 4P', price: 159.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1504280390367-361c6d9f38f4?w=500&q=80' },
                    { id: 's14', name: 'Trekking Walking Poles Pair', price: 42.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1551698618-1dfe5d97d256?w=500&q=80' },
                    { id: 's15', name: 'Boxing Gloves Training 12oz', price: 54.00, rating: '4.8', img: 'https://images.unsplash.com/photo-1549719386-74dfcbf7dbed?w=500&q=80' },
                    { id: 's16', name: 'GPS Bike Speedometer Computer', price: 85.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1485965120184-e220f721d03e?w=500&q=80' },
                    { id: 's17', name: 'Fitness Tracker Heart Monitor', price: 69.00, rating: '4.5', img: 'https://images.unsplash.com/photo-1510017803434-a899398421b3?w=500&q=80' },
                    { id: 's18', name: 'Inflatable Paddle Board Set', price: 349.00, rating: '4.9', img: 'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=500&q=80' },
                    { id: 's19', name: 'Weightlifting Leather Belt', price: 48.00, rating: '4.7', img: 'https://images.unsplash.com/photo-1517838277536-f5f99be501cd?w=500&q=80' },
                    { id: 's20', name: 'Agility Ladder & Cone Kit', price: 26.00, rating: '4.6', img: 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=500&q=80' }
                ]
            }
        ];

        let cart = [];
        let likedItems = new Set();
        let currentDirectBuyItem = null;

        /* =========================================================
           RENDER PRODUCTS SECTIONS
        ========================================================= */
        function renderProducts(searchQuery = '', filterCategory = 'all') {
            const container = document.getElementById('products-container');
            container.innerHTML = '';

            let totalDisplayed = 0;

            categoriesData.forEach(cat => {
                if (filterCategory !== 'all' && filterCategory !== cat.id) return;

                // Filter items by search
                const filteredItems = cat.items.filter(item => 
                    item.name.toLowerCase().includes(searchQuery.toLowerCase())
                );

                if (filteredItems.length === 0) return;

                totalDisplayed += filteredItems.length;

                // Build category block section
                const section = document.createElement('section');
                section.className = 'category-section-block';
                section.id = `cat-section-${cat.id}`;

                const langData = translations[currentLang];
                const catNameTranslated = langData[cat.id] || cat.name;

                section.innerHTML = `
                    <div class="category-section-header">
                        <h2 class="category-section-title">
                            ${cat.icon} ${catNameTranslated}
                            <span class="category-badge-count">${filteredItems.length} items</span>
                        </h2>
                    </div>
                    <div class="category-items-grid">
                        ${filteredItems.map(item => `
                            <div class="product-card" data-id="${item.id}">
                                <div class="image-frame">
                                    <img src="${item.img}" alt="${item.name}">
                                    <span class="badge badge-${cat.id}">${catNameTranslated}</span>
                                    <button class="like-btn ${likedItems.has(item.id) ? 'active' : ''}" onclick="toggleLike('${item.id}', this)">♥</button>
                                </div>
                                <div class="item-details">
                                    <div class="item-title" title="${item.name}">${item.name}</div>
                                    <div class="item-rating">★ ★ ★ ★ ★ <span>(${item.rating})</span></div>
                                    <div class="item-price">$${item.price.toFixed(2)}</div>
                                    <div class="action-row">
                                        <button class="btn btn-add-cart" onclick="addToCart('${item.id}')">
                                            🛒 ${langData.addToCart}
                                        </button>
                                        <button class="btn btn-buy-now" onclick="buyNow('${item.id}')">
                                            ⚡ ${langData.buyNow}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        `).join('')}
                    </div>
                `;

                container.appendChild(section);
            });

            if (totalDisplayed === 0) {
                container.innerHTML = `
                    <div class="empty-state" style="display:block;">
                        <div class="empty-icon">🔍</div>
                        <h3>No products found</h3>
                        <p>Try searching for a different item or switch categories.</p>
                    </div>
                `;
            }
        }

        /* =========================================================
           CART & ACTIONS FUNCTIONS
        ========================================================= */
        function getItemById(id) {
            for (let cat of categoriesData) {
                let found = cat.items.find(i => i.id === id);
                if (found) return found;
            }
            return null;
        }

        function addToCart(id) {
            const item = getItemById(id);
            if (!item) return;

            const existing = cart.find(c => c.id === id);
            if (existing) {
                existing.qty += 1;
            } else {
                cart.push({ ...item, qty: 1 });
            }

            updateCartUI();
            showToast(`Added "${item.name}" to cart!`);
        }

        function updateCartUI() {
            const countEl = document.getElementById('cart-count');
            const totalQty = cart.reduce((acc, i) => acc + i.qty, 0);
            countEl.textContent = totalQty;

            const wrapper = document.getElementById('cart-items-wrapper');
            const totalPriceEl = document.getElementById('cart-total-price');

            if (cart.length === 0) {
                wrapper.innerHTML = `
                    <div class="cart-empty-box">
                        <div style="font-size: 40px; margin-bottom: 10px;">🛒</div>
                        <p>Your cart is empty.</p>
                    </div>
                `;
                totalPriceEl.textContent = '$0.00';
                return;
            }

            let totalCost = 0;
            wrapper.innerHTML = cart.map(i => {
                const itemTotal = i.price * i.qty;
                totalCost += itemTotal;
                return `
                    <div class="cart-row">
                        <div class="cart-thumb">
                            <img src="${i.img}" alt="${i.name}">
                        </div>
                        <div>
                            <div class="cart-item-title">${i.name}</div>
                            <div class="cart-item-price">$${i.price.toFixed(2)}</div>
                            <div class="qty-controls">
                                <button class="qty-btn" onclick="changeQty('${i.id}', -1)">-</button>
                                <span>${i.qty}</span>
                                <button class="qty-btn" onclick="changeQty('${i.id}', 1)">+</button>
                            </div>
                        </div>
                        <div style="text-align: right; font-weight: 800;">
                            $${itemTotal.toFixed(2)}
                        </div>
                    </div>
                `;
            }).join('');

            totalPriceEl.textContent = `$${totalCost.toFixed(2)}`;
        }

        function changeQty(id, delta) {
            const idx = cart.findIndex(c => c.id === id);
            if (idx > -1) {
                cart[idx].qty += delta;
                if (cart[idx].qty <= 0) {
                    cart.splice(idx, 1);
                }
            }
            updateCartUI();
        }

        function buyNow(id) {
            const item = getItemById(id);
            if (!item) return;

            currentDirectBuyItem = item;
            const summary = document.getElementById('buynow-product-summary');
            summary.innerHTML = `
                <div class="cart-row">
                    <div class="cart-thumb"><img src="${item.img}"></div>
                    <div>
                        <div class="cart-item-title">${item.name}</div>
                        <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                    </div>
                </div>
            `;
            document.getElementById('buynow-modal').style.display = 'flex';
        }

        function completeDirectPurchase() {
            document.getElementById('buynow-modal').style.display = 'none';
            showToast(`🎉 Order placed successfully for ${currentDirectBuyItem.name}!`, '✅');
        }

        function toggleLike(id, btn) {
            if (likedItems.has(id)) {
                likedItems.delete(id);
                btn.classList.remove('active');
            } else {
                likedItems.add(id);
                btn.classList.add('active');
                showToast("Added to your wishlist! ♥");
            }
        }

        function showToast(msg, icon = '🛒') {
            const toast = document.getElementById('toast');
            document.getElementById('toast-msg').textContent = msg;
            document.getElementById('toast-icon').textContent = icon;
            toast.classList.add('show');
            setTimeout(() => {
                toast.classList.remove('show');
            }, 3000);
        }

        /* =========================================================
           SETTINGS & LANGUAGE CHANGE HANDLER
        ========================================================= */
        function updateLanguage(lang) {
            currentLang = lang;
            const dict = translations[lang] || translations.en;

            document.getElementById('nav-store-title').textContent = dict.navStore;
            document.getElementById('lang-label').textContent = dict.langLabel;
            document.getElementById('cart-btn-text').textContent = dict.cartBtn;
            document.getElementById('hero-tag').textContent = dict.heroTag;
            document.getElementById('hero-title').innerHTML = dict.heroTitle;
            document.getElementById('hero-desc').textContent = dict.heroDesc;
            document.getElementById('search-input').placeholder = dict.searchPlaceholder;
            document.getElementById('sidebar-title').textContent = dict.sidebarTitle;
            document.getElementById('total-text').textContent = dict.totalAmount;
            document.getElementById('cart-modal-title').textContent = dict.cartTitle;

            // Update sidebar category labels
            const menuBtns = document.querySelectorAll('.menu-item-btn');
            menuBtns.forEach(btn => {
                const target = btn.getAttribute('data-target');
                const labelSpan = btn.querySelector('.cat-label');
                if (labelSpan) {
                    if (target === 'all') labelSpan.textContent = dict.allCat;
                    else if (dict[target]) labelSpan.textContent = dict[target];
                }
            });

            // Re-render product grid with translated button labels and badges
            const currentSearch = document.getElementById('search-input').value;
            const currentCat = document.getElementById('category-select').value;
            renderProducts(currentSearch, currentCat);
        }

        /* =========================================================
           EVENTS LISTENERS & INITIALIZATION
        ========================================================= */
        document.addEventListener('DOMContentLoaded', () => {
            renderProducts();

            // Language Switcher
            document.getElementById('lang-select').addEventListener('change', (e) => {
                updateLanguage(e.target.value);
            });

            // Search input listener
            const searchInput = document.getElementById('search-input');
            const clearBtn = document.getElementById('clear-search-btn');

            searchInput.addEventListener('input', (e) => {
                const val = e.target.value;
                clearBtn.style.display = val ? 'flex' : 'none';
                renderProducts(val, document.getElementById('category-select').value);
            });

            clearBtn.addEventListener('click', () => {
                searchInput.value = '';
                clearBtn.style.display = 'none';
                renderProducts('', document.getElementById('category-select').value);
            });

            // Category select listener
            const catSelect = document.getElementById('category-select');
            catSelect.addEventListener('change', (e) => {
                const val = e.target.value;
                updateCategoryActiveStates(val);
                renderProducts(searchInput.value, val);
            });

            // Quick Chips Listener
            document.querySelectorAll('.chip').forEach(chip => {
                chip.addEventListener('click', () => {
                    const cat = chip.getAttribute('data-category');
                    catSelect.value = cat;
                    updateCategoryActiveStates(cat);
                    renderProducts(searchInput.value, cat);
                });
            });

            // Sidebar Menu Click Listener
            document.querySelectorAll('.menu-item-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    const target = btn.getAttribute('data-target');
                    catSelect.value = target;
                    updateCategoryActiveStates(target);
                    renderProducts(searchInput.value, target);

                    if (target !== 'all') {
                        const targetEl = document.getElementById(`cat-section-${target}`);
                        if (targetEl) targetEl.scrollIntoView({ behavior: 'smooth' });
                    }
                });
            });

            // Cart Modal Handlers
            document.getElementById('open-cart-btn').addEventListener('click', () => {
                document.getElementById('cart-modal').style.display = 'flex';
            });
            document.getElementById('close-cart-btn').addEventListener('click', () => {
                document.getElementById('cart-modal').style.display = 'none';
            });
            document.getElementById('close-buynow-btn').addEventListener('click', () => {
                document.getElementById('buynow-modal').style.display = 'none';
            });

            document.getElementById('checkout-btn').addEventListener('click', () => {
                if (cart.length === 0) {
                    alert('Your cart is empty!');
                    return;
                }
                document.getElementById('cart-modal').style.display = 'none';
                cart = [];
                updateCartUI();
                showToast("🎉 Order placed successfully! Thank you for shopping.", '✅');
            });
        });

        function updateCategoryActiveStates(catId) {
            document.querySelectorAll('.chip').forEach(c => {
                c.classList.toggle('active', c.getAttribute('data-category') === catId);
            });
            document.querySelectorAll('.menu-item-btn').forEach(m => {
                m.classList.toggle('active', m.getAttribute('data-target') === catId);
            });
        }
    </script>
</body>

</html>
