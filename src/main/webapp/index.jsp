<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AURA - Premier Modern Lifestyle, Tech & Gourmet Store</title>
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

        .badge-food { background: rgba(239, 68, 68, 0.85); }
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

        @media (max-width: 1024px) {
            .app-workspace { grid-template-columns: 1fr; }
            .category-sidebar { position: static; }
        }

        @media (max-width: 850px) {
            nav { padding: 0 20px; }
            main { padding: 20px 20px 60px; }
            .hero-banner { padding: 32px; }
            .hero-bg-img { display: none; }
            .search-row { grid-template-columns: 1fr; }
            .category-items-grid { grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); }
        }
    </style>
</head>

<body>

    <div class="app-bg-wrapper">
        <img class="app-bg-image" src="https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=1600&q=80" alt="Atmospheric Background">
    </div>
    <div class="bg-overlay"></div>

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
            <img class="hero-bg-img" src="https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=1000&q=80" alt="Hero Background Item">
            <div class="hero-content">
                <span class="hero-tag" id="hero-tag">Next-Gen Collection</span>
                <h1 class="hero-title" id="hero-title">Elevate Your <span>Lifestyle</span>, Food & Tech</h1>
                <p class="hero-desc" id="hero-desc">Discover curated gourmet delights, premium tech, and lifestyle essentials built for performance, comfort, and modern living.</p>
            </div>
        </section>

        <!-- SEARCH AND FILTER CONTROLS -->
        <section class="controls-card">
            <div class="search-row">
                <div class="search-box">
                    <svg class="search-icon-svg" viewBox="0 0 24 24"><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/></svg>
                    <input type="text" id="search-input" class="search-input" placeholder="Search across all products and delicious food...">
                    <button id="clear-search-btn" class="clear-search-btn">✕</button>
                </div>

                <select id="category-select" class="select-input">
                    <option value="all">All Categories</option>
                    <option value="food">Food & Gourmet</option>
                    <option value="electronics">Electronics</option>
                    <option value="fashion">Fashion</option>
                    <option value="home">Home & Living</option>
                    <option value="beauty">Beauty & Care</option>
                    <option value="sports">Sports & Fitness</option>
                </select>
            </div>

            <!-- SCROLLABLE QUICK CHIPS -->
            <div class="category-scroll">
                <button class="chip active" data-category="all">All Products</button>
                <button class="chip" data-category="food">🍔 Food & Gourmet</button>
                <button class="chip" data-category="electronics">🎧 Electronics</button>
                <button class="chip" data-category="fashion">👔 Fashion</button>
                <button class="chip" data-category="home">🏠 Home & Living</button>
                <button class="chip" data-category="beauty">✨ Beauty</button>
                <button class="chip" data-category="sports">⚽ Sports</button>
            </div>
        </section>

        <!-- APP WORKSPACE -->
        <div class="app-workspace">
            
            <!-- LEFT MENU SIDEBAR -->
            <aside class="category-sidebar">
                <div class="sidebar-title" id="sidebar-title">📁 Menu Categories</div>
                <ul class="menu-list" id="sidebar-menu">
                    <li>
                        <button class="menu-item-btn active" data-target="all">
                            <span>🌐 <span class="cat-label">All Categories</span></span>
                            <span class="menu-item-count" id="count-all">0</span>
                        </button>
                    </li>
                    <li>
                        <button class="menu-item-btn" data-target="food">
                            <span>🍔 <span class="cat-label">Food & Gourmet</span></span>
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
                            <span>⚽ <span class="cat-label">Sports & Fitness</span></span>
                            <span class="menu-item-count" id="count-sports">0</span>
                        </button>
                    </li>
                </ul>
            </aside>

            <!-- PRODUCTS DISPLAY CONTAINER -->
            <div class="products-area" id="products-area">
                <!-- Dynamic Content Injected Here -->
            </div>

            <!-- EMPTY STATE -->
            <div class="empty-state" id="empty-state">
                <div class="empty-icon">🔍</div>
                <h3 id="empty-title">No matching products found</h3>
                <p id="empty-desc">Try adjusting your search terms or filter settings.</p>
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
            <div id="cart-items-list">
                <!-- Cart items will be loaded dynamically -->
            </div>
            <div class="cart-footer">
                <div class="cart-total-row">
                    <span id="total-label">Total:</span>
                    <span id="cart-total-price">$0.00</span>
                </div>
                <button class="btn btn-buy-now" style="width: 100%; height: 48px; font-size: 15px;" id="checkout-btn">
                    Proceed to Checkout
                </button>
            </div>
        </div>
    </div>

    <!-- CHECKOUT MODAL -->
    <div class="modal-overlay" id="checkout-modal">
        <div class="modal-box">
            <div class="modal-header">
                <h3 id="checkout-modal-title">Complete Your Order</h3>
                <button class="close-modal-btn" id="close-checkout-btn">✕</button>
            </div>
            <form id="checkout-form">
                <div class="form-group">
                    <label id="lbl-name">Full Name</label>
                    <input type="text" class="form-control" required placeholder="John Doe">
                </div>
                <div class="form-group">
                    <label id="lbl-email">Email Address</label>
                    <input type="email" class="form-control" required placeholder="john@example.com">
                </div>
                <div class="form-group">
                    <label id="lbl-address">Shipping Address</label>
                    <input type="text" class="form-control" required placeholder="123 Main St, City, Country">
                </div>
                <button type="submit" class="btn btn-add-cart" style="width: 100%; height: 48px; font-size: 15px; margin-top: 20px;">
                    Confirm & Pay
                </button>
            </form>
        </div>
    </div>

    <!-- APPLICATION LOGIC JS -->
    <script>
        /* =========================================================
           DATA & TRANSLATION ENGINE
        ========================================================= */
        const translations = {
            en: {
                storeTitle: "STORE",
                langLabel: "Lang:",
                cartBtn: "Cart",
                heroTag: "Next-Gen Collection",
                heroTitle: "Elevate Your <span>Lifestyle</span>, Food & Tech",
                heroDesc: "Discover curated gourmet delights, premium tech, and lifestyle essentials built for performance, comfort, and modern living.",
                searchPlaceholder: "Search across all products and delicious food...",
                menuTitle: "📁 Menu Categories",
                allCategories: "All Categories",
                foodCategory: "Food & Gourmet",
                electronicsCategory: "Electronics",
                fashionCategory: "Fashion",
                homeCategory: "Home & Living",
                beautyCategory: "Beauty & Care",
                sportsCategory: "Sports & Fitness",
                addToCart: "Add to Cart",
                buyNow: "Buy Now",
                addedToast: "Item added to cart!",
                cartTitle: "Shopping Cart",
                emptyCart: "Your cart is currently empty.",
                total: "Total:",
                checkout: "Proceed to Checkout",
                checkoutTitle: "Complete Your Order",
                name: "Full Name",
                email: "Email Address",
                address: "Shipping Address",
                confirmPay: "Confirm & Pay",
                orderSuccess: "Thank you for your order! Your payment was successful.",
                noProducts: "No matching products found",
                noProductsDesc: "Try adjusting your search terms or filter settings."
            },
            te: {
                storeTitle: "స్టోర్",
                langLabel: "భాష:",
                cartBtn: "కార్ట్",
                heroTag: "లేటెస్ట్ కలెక్షన్",
                heroTitle: "మీ <span>జీవనశైలి</span>, ఫుడ్ మరియు టెక్నాలజీని మెరుగుపరచండి",
                heroDesc: "అత్యుత్తమ నాణ్యత గల రుచికరమైన ఆహారం, తాజా ఎలక్ట్రానిక్స్ మరియు ఆధునిక లైఫ్‌స్టైల్ ఉత్పత్తులను ఇక్కడ పొందండి.",
                searchPlaceholder: "అన్ని రకాల ఉత్పత్తులు మరియు ఆహారాన్ని శోధించండి...",
                menuTitle: "📁 మెనూ వర్గాలు",
                allCategories: "అన్ని వర్గాలు",
                foodCategory: "ఫుడ్ & గొర్మేట్",
                electronicsCategory: "ఎలక్ట్రానిక్స్",
                fashionCategory: "ఫ్యాషన్",
                homeCategory: "హోమ్ & లివింగ్",
                beautyCategory: "బ్యూటీ & కేర్",
                sportsCategory: "స్పోర్ట్స్ & ఫిట్‌నెస్",
                addToCart: "కార్ట్‌కు జోడించు",
                buyNow: "ఇప్పుడే కొనండి",
                addedToast: "కార్ట్‌లో జోడించబడింది!",
                cartTitle: "షాపింగ్ కార్ట్",
                emptyCart: "మీ కార్ట్ ఖాళీగా ఉంది.",
                total: "మొత్తం ధర:",
                checkout: "చెల్లింపు కొనసాగించండి",
                checkoutTitle: "మీ ఆర్డర్‌ పూర్తి చేయండి",
                name: "పూర్తి పేరు",
                email: "ఈమెయిల్ చిరునామా",
                address: "షిప్పింగ్ చిరునామా",
                confirmPay: "సమర్పించు మరియు చెల్లించు",
                orderSuccess: "ధన్యవాదాలు! మీ ఆర్డర్ విజయవంతంగా పూర్తయింది.",
                noProducts: "ఉత్పత్తులేవీ కనుగొనబడలేదు",
                noProductsDesc: "దయచేసి వేరే పదాలతో శోధించండి."
            },
            hi: {
                storeTitle: "स्टोर",
                langLabel: "भाषा:",
                cartBtn: "कार्ट",
                heroTag: "नेक्स्ट-जेन कलेक्शन",
                heroTitle: "अपनी <span>जीवनशैली</span>, भोजन और तकनीक को बेहतर बनाएं",
                heroDesc: "प्रीमियम तकनीक, स्वादिष्ट भोजन और आधुनिक जीवनशैली के लिए उत्कृष्ट उत्पादों की खोज करें।",
                searchPlaceholder: "सभी उत्पादों और स्वादिष्ट व्यंजनों को खोजें...",
                menuTitle: "📁 श्रेणी मेनू",
                allCategories: "सभी श्रेणियां",
                foodCategory: "खाद्य और व्यंजन",
                electronicsCategory: "इलेक्ट्रॉनिक्स",
                fashionCategory: "फैशन",
                homeCategory: "होम एंड लिविंग",
                beautyCategory: "ब्यूटी एंड केयर",
                sportsCategory: "खेल और फिटनेस",
                addToCart: "कार्ट में जोड़ें",
                buyNow: "अभी खरीदें",
                addedToast: "कार्ट में जोड़ा गया!",
                cartTitle: "शॉपिंग कार्ट",
                emptyCart: "आपकी कार्ट खाली है।",
                total: "कुल योग:",
                checkout: "चेकआउट करें",
                checkoutTitle: "अपना ऑर्डर पूरा करें",
                name: "पूरा नाम",
                email: "ईमेल पता",
                address: "डिलिवरी का पता",
                confirmPay: "भुगतान करें",
                orderSuccess: "धन्यवाद! आपका ऑर्डर सफलतापूर्वक पूरा हो गया है।",
                noProducts: "कोई उत्पाद नहीं मिला",
                noProductsDesc: "कृपया कोई अन्य शब्द खोजें।"
            },
            es: {
                storeTitle: "TIENDA",
                langLabel: "Idioma:",
                cartBtn: "Carrito",
                heroTag: "Colección Next-Gen",
                heroTitle: "Eleva tu <span>Estilo de Vida</span>, Comida y Tecnología",
                heroDesc: "Descubre delicias gourmet, tecnología de vanguardia y productos esenciales para el estilo de vida moderno.",
                searchPlaceholder: "Buscar productos y deliciosa comida...",
                menuTitle: "📁 Categorías",
                allCategories: "Todas las Categorías",
                foodCategory: "Comida y Gourmet",
                electronicsCategory: "Electrónica",
                fashionCategory: "Moda",
                homeCategory: "Hogar y Vida",
                beautyCategory: "Belleza y Cuidado",
                sportsCategory: "Deportes y Fitness",
                addToCart: "Añadir al Carrito",
                buyNow: "Comprar Ahora",
                addedToast: "¡Añadido al carrito!",
                cartTitle: "Carrito de Compras",
                emptyCart: "Tu carrito está vacío.",
                total: "Total:",
                checkout: "Proceder al Pago",
                checkoutTitle: "Completa tu Pedido",
                name: "Nombre Completo",
                email: "Correo Electrónico",
                address: "Dirección de Envío",
                confirmPay: "Confirmar y Pagar",
                orderSuccess: "¡Gracias por tu compra! El pago se ha realizado con éxito.",
                noProducts: "No se encontraron productos",
                noProductsDesc: "Prueba ajustando tus términos de búsqueda."
            }
        };

        const products = [
            // FOOD
            { id: 1, category: 'food', title: 'Artisanal Truffle Pasta Bowl', price: 24.99, rating: 4.9, reviews: 128, img: 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=600&q=80' },
            { id: 2, category: 'food', title: 'Gourmet Wagyu Beef Burger', price: 18.50, rating: 4.8, reviews: 210, img: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&q=80' },
            { id: 3, category: 'food', title: 'Fresh Sushi & Sashimi Platter', price: 32.00, rating: 4.9, reviews: 95, img: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=600&q=80' },
            
            // ELECTRONICS
            { id: 4, category: 'electronics', title: 'Wireless Noise-Canceling Headphones', price: 299.99, rating: 4.8, reviews: 450, img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&q=80' },
            { id: 5, category: 'electronics', title: 'Smart Minimalist Watch Series 7', price: 199.50, rating: 4.7, reviews: 310, img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600&q=80' },
            { id: 6, category: 'electronics', title: 'Portable RGB Bluetooth Speaker', price: 89.99, rating: 4.6, reviews: 180, img: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=600&q=80' },

            // FASHION
            { id: 7, category: 'fashion', title: 'Classic Urban Denim Jacket', price: 79.00, rating: 4.5, reviews: 88, img: 'https://images.unsplash.com/photo-1576995853123-5a10305d93c0?w=600&q=80' },
            { id: 8, category: 'fashion', title: 'Premium Leather Sneakers', price: 120.00, rating: 4.8, reviews: 142, img: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=600&q=80' },

            // HOME
            { id: 9, category: 'home', title: 'Minimalist Ceramic Vase Set', price: 45.00, rating: 4.7, reviews: 64, img: 'https://images.unsplash.com/photo-1612196808214-b7e239e5f6b7?w=600&q=80' },
            { id: 10, category: 'home', title: 'Aromatic Essential Oil Diffuser', price: 34.99, rating: 4.6, reviews: 115, img: 'https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?w=600&q=80' },

            // BEAUTY
            { id: 11, category: 'beauty', title: 'Organic Hydrating Facial Serum', price: 48.00, rating: 4.9, reviews: 230, img: 'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?w=600&q=80' },

            // SPORTS
            { id: 12, category: 'sports', title: 'Non-Slip Eco-Friendly Yoga Mat', price: 39.99, rating: 4.8, reviews: 175, img: 'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=600&q=80' }
        ];

        /* =========================================================
           APPLICATION STATE & VARIABLES
        ========================================================= */
        let currentLang = 'en';
        let cart = [];
        let wishlist = new Set();
        let currentCategory = 'all';
        let searchQuery = '';

        /* =========================================================
           DOM ELEMENTS
        ========================================================= */
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

        /* =========================================================
           INITIALIZATION
        ========================================================= */
        function init() {
            updateCounts();
            renderProducts();
            setupEventListeners();
            updateLanguageUI();
        }

        /* =========================================================
           PRODUCTS & UI RENDERING
        ========================================================= */
        function renderProducts() {
            productsArea.innerHTML = '';
            
            const categoriesToRender = currentCategory === 'all' 
                ? ['food', 'electronics', 'fashion', 'home', 'beauty', 'sports'] 
                : [currentCategory];

            let totalVisibleProducts = 0;

            categoriesToRender.forEach(catKey => {
                const filtered = products.filter(p => p.category === catKey && p.title.toLowerCase().includes(searchQuery.toLowerCase()));
                
                if (filtered.length > 0) {
                    totalVisibleProducts += filtered.length;

                    const section = document.createElement('div');
                    section.className = 'category-section-block';
                    section.id = `section-${catKey}`;

                    const catTitleText = translations[currentLang][`${catKey}Category`] || catKey;

                    section.innerHTML = `
                        <div class="category-section-header">
                            <h2 class="category-section-title">
                                ${getCategoryIcon(catKey)} ${catTitleText}
                            </h2>
                            <span class="category-badge-count">${filtered.length} items</span>
                        </div>
                        <div class="category-items-grid">
                            ${filtered.map(item => createProductCardHTML(item)).join('')}
                        </div>
                    `;

                    productsArea.appendChild(section);
                }
            });

            if (totalVisibleProducts === 0) {
                emptyState.style.display = 'block';
            } else {
                emptyState.style.display = 'none';
            }
        }

        function createProductCardHTML(item) {
            const isLiked = wishlist.has(item.id);
            const t = translations[currentLang];

            return `
                <div class="product-card" data-id="${item.id}">
                    <div class="image-frame">
                        <span class="badge badge-${item.category}">${t[`${item.category}Category`] || item.category}</span>
                        <button class="like-btn ${isLiked ? 'active' : ''}" onclick="toggleLike(${item.id})">♥</button>
                        <img src="${item.img}" alt="${item.title}">
                    </div>
                    <div class="item-details">
                        <div class="item-title">${item.title}</div>
                        <div class="item-rating">★ ${item.rating} <span>(${item.reviews})</span></div>
                        <div class="item-price">$${item.price.toFixed(2)}</div>
                        <div class="action-row">
                            <button class="btn btn-add-cart" onclick="addToCart(${item.id})">
                                🛒 ${t.addToCart}
                            </button>
                            <button class="btn btn-buy-now" onclick="quickBuy(${item.id})">
                                ⚡ ${t.buyNow}
                            </button>
                        </div>
                    </div>
                </div>
            `;
        }

        function getCategoryIcon(cat) {
            const icons = { food: '🍔', electronics: '🎧', fashion: '👔', home: '🏠', beauty: '✨', sports: '⚽' };
            return icons[cat] || '📦';
        }

        function updateCounts() {
            const categories = ['all', 'food', 'electronics', 'fashion', 'home', 'beauty', 'sports'];
            categories.forEach(cat => {
                const countElem = document.getElementById(`count-${cat}`);
                if (countElem) {
                    if (cat === 'all') {
                        countElem.innerText = products.length;
                    } else {
                        countElem.innerText = products.filter(p => p.category === cat).length;
                    }
                }
            });
        }

        /* =========================================================
           CART & WISHLIST INTERACTIONS
        ========================================================= */
        window.addToCart = function(id) {
            const existing = cart.find(item => item.id === id);
            if (existing) {
                existing.qty += 1;
            } else {
                const product = products.find(p => p.id === id);
                cart.push({ ...product, qty: 1 });
            }
            updateCartUI();
            showToast(translations[currentLang].addedToast);
        };

        window.quickBuy = function(id) {
            addToCart(id);
            openCartModal();
        };

        window.toggleLike = function(id) {
            if (wishlist.has(id)) {
                wishlist.delete(id);
            } else {
                wishlist.add(id);
            }
            renderProducts();
        };

        function updateCartUI() {
            const totalQty = cart.reduce((sum, item) => sum + item.qty, 0);
            cartCount.innerText = totalQty;

            const cartItemsList = document.getElementById('cart-items-list');
            const cartTotalPrice = document.getElementById('cart-total-price');
            const t = translations[currentLang];

            if (cart.length === 0) {
                cartItemsList.innerHTML = `<div class="cart-empty-box">${t.emptyCart}</div>`;
                cartTotalPrice.innerText = '$0.00';
                checkoutBtn.disabled = true;
                checkoutBtn.style.opacity = '0.5';
                return;
            }

            checkoutBtn.disabled = false;
            checkoutBtn.style.opacity = '1';

            let total = 0;
            cartItemsList.innerHTML = cart.map((item, index) => {
                const itemTotal = item.price * item.qty;
                total += itemTotal;
                return `
                    <div class="cart-row">
                        <div class="cart-thumb">
                            <img src="${item.img}" alt="${item.title}">
                        </div>
                        <div>
                            <div class="cart-item-title">${item.title}</div>
                            <div class="cart-item-price">$${item.price.toFixed(2)}</div>
                            <div class="qty-controls">
                                <button class="qty-btn" onclick="changeQty(${index}, -1)">-</button>
                                <span style="font-size:13px; font-weight:700;">${item.qty}</span>
                                <button class="qty-btn" onclick="changeQty(${index}, 1)">+</button>
                            </div>
                        </div>
                        <button style="background:none; border:none; color:#ef4444; font-size:16px; cursor:pointer;" onclick="removeItem(${index})">🗑</button>
                    </div>
                `;
            }).join('');

            cartTotalPrice.innerText = `$${total.toFixed(2)}`;
        }

        window.changeQty = function(index, delta) {
            cart[index].qty += delta;
            if (cart[index].qty <= 0) {
                cart.splice(index, 1);
            }
            updateCartUI();
        };

        window.removeItem = function(index) {
            cart.splice(index, 1);
            updateCartUI();
        };

        function showToast(msg) {
            document.getElementById('toast-msg').innerText = msg;
            toast.classList.add('show');
            setTimeout(() => {
                toast.classList.remove('show');
            }, 3000);
        }

        /* =========================================================
           LANGUAGE TRANSLATION LOGIC
        ========================================================= */
        function updateLanguageUI() {
            const t = translations[currentLang];

            document.getElementById('nav-store-title').innerText = t.storeTitle;
            document.getElementById('lang-label').innerText = t.langLabel;
            document.getElementById('cart-btn-text').innerText = t.cartBtn;
            document.getElementById('hero-tag').innerText = t.heroTag;
            document.getElementById('hero-title').innerHTML = t.heroTitle;
            document.getElementById('hero-desc').innerText = t.heroDesc;
            searchInput.placeholder = t.searchPlaceholder;
            document.getElementById('sidebar-title').innerText = t.menuTitle;

            // Labels for categories
            document.querySelectorAll('.cat-label').forEach(el => {
                const parent = el.closest('[data-target]');
                if (parent) {
                    const key = parent.getAttribute('data-target');
                    if (key === 'all') el.innerText = t.allCategories;
                    else el.innerText = t[key + 'Category'] || key;
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
            document.getElementById('empty-title').innerText = t.noProducts;
            document.getElementById('empty-desc').innerText = t.noProductsDesc;

            renderProducts();
            updateCartUI();
        }

        /* =========================================================
           EVENT LISTENERS & FILTERING
        ========================================================= */
        function setupEventListeners() {
            // Language Select
            langSelect.addEventListener('change', (e) => {
                currentLang = e.target.value;
                updateLanguageUI();
            });

            // Search Input
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

            // Category Filter via Dropdown
            categorySelect.addEventListener('change', (e) => {
                setCategory(e.target.value);
            });

            // Category Filter via Chips & Sidebar
            document.querySelectorAll('.chip, .menu-item-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    const cat = btn.getAttribute('data-category') || btn.getAttribute('data-target');
                    if (cat) setCategory(cat);
                });
            });

            // Modals
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

            // Update UI selections
            categorySelect.value = cat;

            document.querySelectorAll('.chip').forEach(c => {
                c.classList.toggle('active', c.getAttribute('data-category') === cat);
            });

            document.querySelectorAll('.menu-item-btn').forEach(m => {
                m.classList.toggle('active', m.getAttribute('data-target') === cat);
            });

            renderProducts();
        }

        function openCartModal() {
            updateCartUI();
            cartModal.style.display = 'flex';
        }

        function closeCartModal() {
            cartModal.style.display = 'none';
        }

        function closeCheckoutModal() {
            checkoutModal.style.display = 'none';
        }

        // Run application on load
        window.addEventListener('DOMContentLoaded', init);
    </script>
</body>

</html>
