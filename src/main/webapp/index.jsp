<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>ShopSphere - Smart Shopping</title>

    <style>

        /* =========================================================
           GLOBAL
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
                Inter,
                "Segoe UI",
                Tahoma,
                Geneva,
                Verdana,
                sans-serif;

            background: #f5f7fb;
            color: #172033;
            min-height: 100vh;
            padding-top: 82px;

            transition:
                background .3s ease,
                color .3s ease;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* =========================================================
           DARK MODE
        ========================================================= */

        body.dark {
            background: #0f172a;
            color: #e5e7eb;
        }

        body.dark nav {
            background: rgba(15, 23, 42, .96);
            border-color: #263247;
        }

        body.dark .brand {
            color: white;
        }

        body.dark nav a {
            color: #cbd5e1;
        }

        body.dark nav a:hover {
            color: #60a5fa;
            background: #172554;
        }

        body.dark .search-area,
        body.dark .category-filter {
            background: #1e293b;
            border-color: #334155;
            color: white;
        }

        body.dark .item-card,
        body.dark .modal-content,
        body.dark .cart-item {
            background: #1e293b;
            border-color: #334155;
            color: #e5e7eb;
        }

        body.dark .item-title,
        body.dark .category-section h2,
        body.dark .modal-header h3,
        body.dark .cart-item-name,
        body.dark .empty-cart h4 {
            color: #f8fafc;
        }

        body.dark .category-header {
            border-color: #334155;
        }

        body.dark .item-img {
            background:
                linear-gradient(
                    135deg,
                    #172554,
                    #312e81
                );
        }

        body.dark .cart-item:hover {
            border-color: #475569;
        }

        /* =========================================================
           NAVIGATION
        ========================================================= */

        nav {
            position: fixed;
            top: 0;
            left: 0;

            width: 100%;
            min-height: 78px;

            display: flex;
            align-items: center;
            gap: 18px;

            padding: 12px 25px;

            background:
                rgba(255,255,255,.96);

            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);

            border-bottom: 1px solid #e8edf5;

            box-shadow:
                0 4px 25px
                rgba(15,23,42,.07);

            z-index: 1000;
        }

        /* =========================================================
           BRAND
        ========================================================= */

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;

            flex-shrink: 0;

            color: #111827;

            font-size: 20px;
            font-weight: 900;

            text-decoration: none;
            letter-spacing: -.5px;
        }

        .brand-icon {
            width: 38px;
            height: 38px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 11px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #7c3aed
                );

            box-shadow:
                0 7px 18px
                rgba(37,99,235,.25);
        }

        .brand span:last-child span {
            color: #2563eb;
        }

        /* =========================================================
           NAV LINKS
        ========================================================= */

        .nav-links {
            display: flex;
            align-items: center;

            gap: 5px;

            flex: 1;

            overflow-x: auto;

            scrollbar-width: none;

            padding: 3px;
        }

        .nav-links::-webkit-scrollbar {
            display: none;
        }

        nav a {
            text-decoration: none;

            color: #64748b;

            font-size: 12px;
            font-weight: 750;

            white-space: nowrap;

            padding: 9px 12px;

            border-radius: 9px;

            transition: all .25s ease;
        }

        nav a:hover {
            color: #2563eb;
            background: #eff6ff;
        }

        /* =========================================================
           NAV ACTIONS
        ========================================================= */

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;

            border: none;
            border-radius: 10px;

            background: #f1f5f9;
            color: #334155;

            font-size: 17px;

            transition: all .2s ease;
        }

        .icon-btn:hover {
            background: #e2e8f0;
            transform: translateY(-1px);
        }

        body.dark .icon-btn {
            background: #1e293b;
            color: #f8fafc;
        }

        .cart-btn {
            position: relative;

            display: flex;
            align-items: center;
            justify-content: center;

            gap: 8px;

            padding: 11px 15px;

            border: none;
            border-radius: 11px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #4f46e5
                );

            font-size: 13px;
            font-weight: 800;

            white-space: nowrap;

            box-shadow:
                0 7px 18px
                rgba(37,99,235,.22);

            transition: all .25s ease;
        }

        .cart-btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 10px 25px
                rgba(37,99,235,.3);
        }

        #cart-count {
            min-width: 23px;
            height: 23px;

            display: inline-flex;
            align-items: center;
            justify-content: center;

            border-radius: 7px;

            color: #2563eb;
            background: white;

            font-size: 11px;
            font-weight: 900;
        }

        /* =========================================================
           MAIN
        ========================================================= */

        main {
            max-width: 1350px;

            margin: 0 auto;

            padding:
                28px 24px 60px;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            position: relative;

            overflow: hidden;

            margin-bottom: 28px;

            padding: 45px;

            border-radius: 24px;

            background:
                linear-gradient(
                    135deg,
                    #172554,
                    #312e81,
                    #4c1d95
                );

            color: white;

            box-shadow:
                0 20px 50px
                rgba(30,41,59,.18);
        }

        .hero::before {
            content: "";

            position: absolute;

            width: 300px;
            height: 300px;

            right: -100px;
            top: -120px;

            border-radius: 50%;

            background:
                rgba(255,255,255,.09);
        }

        .hero::after {
            content: "";

            position: absolute;

            width: 180px;
            height: 180px;

            right: 180px;
            bottom: -100px;

            border-radius: 50%;

            background:
                rgba(255,255,255,.07);
        }

        .hero-content {
            position: relative;
            z-index: 2;

            max-width: 760px;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 7px;

            margin-bottom: 15px;

            padding: 7px 12px;

            border-radius: 30px;

            background:
                rgba(255,255,255,.12);

            border:
                1px solid
                rgba(255,255,255,.15);

            font-size: 11px;
            font-weight: 800;
        }

        .hero h1 {
            margin-bottom: 12px;

            font-size: 38px;
            line-height: 1.15;

            letter-spacing: -1px;
        }

        .hero p {
            max-width: 650px;

            color:
                rgba(255,255,255,.78);

            font-size: 15px;
            line-height: 1.7;
        }

        .hero-stats {
            position: relative;
            z-index: 2;

            display: flex;
            gap: 30px;

            margin-top: 25px;
        }

        .hero-stat {
            display: flex;
            flex-direction: column;
            gap: 3px;
        }

        .hero-stat strong {
            font-size: 21px;
        }

        .hero-stat span {
            color:
                rgba(255,255,255,.65);

            font-size: 11px;
        }

        /* =========================================================
           SEARCH PANEL
        ========================================================= */

        .search-panel {
            display: grid;

            grid-template-columns:
                minmax(250px, 1fr)
                220px;

            gap: 12px;

            margin-bottom: 35px;
        }

        .search-wrapper {
            position: relative;
        }

        .search-area {
            width: 100%;

            height: 50px;

            padding:
                0 48px 0 45px;

            border:
                1px solid #dfe6f0;

            border-radius: 13px;

            outline: none;

            background: white;

            color: #172033;

            font-size: 14px;

            box-shadow:
                0 5px 20px
                rgba(15,23,42,.04);

            transition:
                border .2s ease,
                box-shadow .2s ease;
        }

        .search-area:focus {
            border-color: #2563eb;

            box-shadow:
                0 0 0 4px
                rgba(37,99,235,.1);
        }

        .search-icon {
            position: absolute;

            left: 16px;
            top: 50%;

            transform:
                translateY(-50%);

            font-size: 17px;
        }

        .clear-search {
            position: absolute;

            right: 12px;
            top: 50%;

            transform:
                translateY(-50%);

            width: 28px;
            height: 28px;

            border: none;

            border-radius: 7px;

            background: #f1f5f9;
            color: #64748b;

            display: none;
        }

        .category-filter {
            height: 50px;

            padding:
                0 14px;

            border:
                1px solid #dfe6f0;

            border-radius: 13px;

            outline: none;

            background: white;

            color: #172033;

            font-size: 13px;
            font-weight: 700;

            cursor: pointer;
        }

        /* =========================================================
           RESULTS BAR
        ========================================================= */

        .results-bar {
            display: flex;

            align-items: center;
            justify-content: space-between;

            gap: 15px;

            margin-bottom: 28px;
        }

        .results-text {
            color: #64748b;
            font-size: 13px;
            font-weight: 700;
        }

        body.dark .results-text {
            color: #94a3b8;
        }

        .clear-filters {
            border: none;

            padding:
                8px 12px;

            border-radius: 8px;

            background: #fee2e2;
            color: #dc2626;

            font-size: 11px;
            font-weight: 800;

            display: none;
        }

        /* =========================================================
           CATEGORY
        ========================================================= */

        .category-section {
            margin-bottom: 70px;

            scroll-margin-top: 105px;
        }

        .category-header {
            display: flex;

            align-items: flex-end;
            justify-content: space-between;

            margin-bottom: 22px;
            padding-bottom: 13px;

            border-bottom:
                1px solid #e5eaf2;
        }

        .category-heading-area {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .category-icon {
            width: 42px;
            height: 42px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 11px;

            color: #2563eb;
            background: #eff6ff;

            font-size: 19px;
        }

        .category-section h2 {
            position: relative;

            color: #111827;

            font-size: 24px;
            font-weight: 850;

            letter-spacing: -.5px;
        }

        .category-section h2::after {
            content: "";

            position: absolute;

            left: 0;
            bottom: -18px;

            width: 45px;
            height: 4px;

            border-radius: 10px;

            background:
                linear-gradient(
                    90deg,
                    #2563eb,
                    #7c3aed
                );
        }

        .category-badge {
            padding: 7px 12px;

            border-radius: 8px;

            color: #2563eb;
            background: #eff6ff;

            font-size: 11px;
            font-weight: 800;
        }

        /* =========================================================
           PRODUCT GRID
        ========================================================= */

        .item-grid {
            display: grid;

            grid-template-columns:
                repeat(
                    auto-fill,
                    minmax(215px, 1fr)
                );

            gap: 20px;
        }

        /* =========================================================
           PRODUCT CARD
        ========================================================= */

        .item-card {
            position: relative;

            display: flex;
            flex-direction: column;

            overflow: hidden;

            padding: 11px;

            border:
                1px solid #e7ebf2;

            border-radius: 17px;

            background: white;

            box-shadow:
                0 5px 20px
                rgba(15,23,42,.045);

            transition:
                transform .3s ease,
                box-shadow .3s ease,
                border-color .3s ease;
        }

        .item-card:hover {
            transform: translateY(-7px);

            border-color: #d7e3f7;

            box-shadow:
                0 18px 40px
                rgba(15,23,42,.12);
        }

        .item-card::before {
            content: "";

            position: absolute;

            top: 0;
            left: 0;

            width: 100%;
            height: 3px;

            background:
                linear-gradient(
                    90deg,
                    #2563eb,
                    #7c3aed,
                    #ec4899
                );

            opacity: 0;

            transition: opacity .3s ease;
        }

        .item-card:hover::before {
            opacity: 1;
        }

        /* =========================================================
           IMAGE
        ========================================================= */

        .item-img {
            position: relative;

            width: 100%;
            height: 175px;

            display: flex;
            align-items: center;
            justify-content: center;

            overflow: hidden;

            margin-bottom: 14px;

            border-radius: 12px;

            background:
                linear-gradient(
                    135deg,
                    #f1f5ff,
                    #f7f3ff
                );
        }

        .item-img img {
            width: 100%;
            height: 100%;

            display: block;

            object-fit: cover;

            transition:
                transform .45s ease;
        }

        .item-card:hover
        .item-img img {
            transform: scale(1.08);
        }

        .image-overlay {
            position: absolute;

            left: 9px;
            bottom: 9px;

            padding: 5px 9px;

            border-radius: 6px;

            color: white;

            background:
                rgba(15,23,42,.72);

            backdrop-filter: blur(5px);

            font-size: 9px;
            font-weight: 800;
        }

        .wishlist-btn {
            position: absolute;

            right: 9px;
            top: 9px;

            width: 34px;
            height: 34px;

            display: flex;
            align-items: center;
            justify-content: center;

            border: none;

            border-radius: 9px;

            color: #64748b;

            background:
                rgba(255,255,255,.92);

            font-size: 17px;

            box-shadow:
                0 4px 12px
                rgba(15,23,42,.12);

            z-index: 3;

            transition: all .2s ease;
        }

        .wishlist-btn:hover {
            transform: scale(1.08);
        }

        .wishlist-btn.active {
            color: #ef4444;
        }

        /* =========================================================
           PRODUCT INFO
        ========================================================= */

        .item-title {
            min-height: 42px;

            margin-bottom: 5px;

            color: #1e293b;

            font-size: 15px;
            font-weight: 750;

            line-height: 1.4;
        }

        .item-price {
            margin-bottom: 13px;

            color: #2563eb;

            font-size: 19px;
            font-weight: 900;
        }

        .product-rating {
            margin-bottom: 9px;

            color: #f59e0b;

            font-size: 11px;
        }

        .card-buttons {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 7px;

            margin-top: auto;
        }

        .btn {
            min-height: 40px;

            padding: 8px 5px;

            border: none;

            border-radius: 9px;

            font-size: 10px;
            font-weight: 800;

            transition: all .2s ease;
        }

        .btn:active {
            transform: scale(.95);
        }

        .add-cart-btn {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #1d4ed8
                );
        }

        .add-cart-btn:hover {
            transform: translateY(-1px);

            box-shadow:
                0 7px 15px
                rgba(37,99,235,.25);
        }

        .details-btn {
            color: #475569;

            background: #f1f5f9;

            border:
                1px solid #e2e8f0;
        }

        .details-btn:hover {
            color: #2563eb;
            background: #eff6ff;
        }

        .buy-now-btn {
            color: #92400e;

            background: #fef3c7;

            border:
                1px solid #fde68a;
        }

        .buy-now-btn:hover {
            color: #78350f;
            background: #fde68a;
        }

        /* =========================================================
           NO RESULTS
        ========================================================= */

        .no-results {
            display: none;

            padding: 70px 20px;

            text-align: center;
        }

        .no-results-icon {
            margin-bottom: 12px;

            font-size: 50px;
        }

        .no-results h3 {
            margin-bottom: 7px;

            color: #1e293b;

            font-size: 20px;
        }

        body.dark .no-results h3 {
            color: white;
        }

        .no-results p {
            color: #64748b;
            font-size: 13px;
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

            background:
                rgba(15,23,42,.68);

            backdrop-filter: blur(8px);

            z-index: 2000;
        }

        .modal-content {
            width: 100%;
            max-width: 650px;

            max-height: 88vh;

            overflow-y: auto;

            padding: 25px;

            border-radius: 20px;

            background: white;

            box-shadow:
                0 30px 80px
                rgba(0,0,0,.28);

            animation:
                modalSlide .25s ease;
        }

        .modal-content.large {
            max-width: 850px;
        }

        @keyframes modalSlide {

            from {
                opacity: 0;
                transform:
                    translateY(20px)
                    scale(.97);
            }

            to {
                opacity: 1;
                transform:
                    translateY(0)
                    scale(1);
            }
        }

        .modal-header {
            display: flex;

            align-items: center;
            justify-content: space-between;

            margin-bottom: 20px;

            padding-bottom: 16px;

            border-bottom:
                1px solid #e5e7eb;
        }

        body.dark .modal-header {
            border-color: #334155;
        }

        .modal-header h3 {
            color: #111827;

            font-size: 21px;
            font-weight: 850;
        }

        .close-btn {
            width: 37px;
            height: 37px;

            display: flex;
            align-items: center;
            justify-content: center;

            border: none;

            border-radius: 10px;

            color: #64748b;
            background: #f1f5f9;

            font-size: 22px;

            transition: all .2s ease;
        }

        .close-btn:hover {
            color: #dc2626;
            background: #fee2e2;

            transform: rotate(90deg);
        }

        /* =========================================================
           PRODUCT DETAILS
        ========================================================= */

        .details-layout {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 25px;
        }

        .details-image {
            width: 100%;
            height: 360px;

            overflow: hidden;

            border-radius: 15px;

            background: #f1f5f9;
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

            margin-bottom: 10px;

            padding: 6px 10px;

            border-radius: 7px;

            color: #2563eb;
            background: #eff6ff;

            font-size: 10px;
            font-weight: 800;
        }

        .details-info h2 {
            margin-bottom: 10px;

            color: #111827;

            font-size: 28px;
        }

        body.dark .details-info h2 {
            color: white;
        }

        .details-price {
            margin-bottom: 12px;

            color: #2563eb;

            font-size: 26px;
            font-weight: 900;
        }

        .details-rating {
            margin-bottom: 20px;

            color: #f59e0b;

            font-size: 13px;
        }

        .details-description {
            margin-bottom: 25px;

            color: #64748b;

            font-size: 14px;
            line-height: 1.7;
        }

        body.dark .details-description {
            color: #94a3b8;
        }

        .details-actions {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 10px;

            margin-top: auto;
        }

        .details-actions button {
            min-height: 45px;

            border: none;

            border-radius: 10px;

            font-weight: 800;
        }

        /* =========================================================
           EMPTY CART
        ========================================================= */

        .empty-cart {
            padding: 55px 15px;

            text-align: center;

            color: #64748b;
        }

        .empty-cart-icon {
            margin-bottom: 15px;

            font-size: 52px;
        }

        .empty-cart h4 {
            margin-bottom: 7px;

            color: #1e293b;

            font-size: 18px;
        }

        .empty-cart p {
            font-size: 13px;
        }

        /* =========================================================
           CART
        ========================================================= */

        .cart-item {
            display: grid;

            grid-template-columns:
                85px 1fr auto;

            align-items: center;

            gap: 14px;

            margin-bottom: 12px;

            padding: 12px;

            border:
                1px solid #e5eaf1;

            border-radius: 13px;

            background: white;

            transition: all .2s ease;
        }

        .cart-item-image {
            width: 85px;
            height: 85px;

            overflow: hidden;

            border-radius: 10px;

            background: #f1f5f9;
        }

        .cart-item-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;
        }

        .cart-item-name {
            margin-bottom: 5px;

            color: #1e293b;

            font-size: 14px;
            font-weight: 850;
        }

        .cart-item-price {
            color: #2563eb;

            font-size: 12px;
            font-weight: 700;
        }

        .cart-item-total {
            margin-top: 5px;

            color: #111827;

            font-size: 12px;
            font-weight: 800;
        }

        .quantity-controls {
            display: flex;
            align-items: center;

            gap: 7px;

            margin-top: 9px;
        }

        .quantity-btn {
            width: 28px;
            height: 28px;

            border: none;

            border-radius: 7px;

            color: #2563eb;
            background: #eff6ff;

            font-size: 16px;
            font-weight: 900;
        }

        .quantity-btn:hover {
            color: white;
            background: #2563eb;
        }

        .quantity-value {
            min-width: 25px;

            text-align: center;

            color: #1e293b;

            font-size: 13px;
            font-weight: 800;
        }

        .cart-actions {
            display: flex;
            flex-direction: column;

            gap: 7px;
        }

        .cart-buy-btn,
        .remove-btn {
            padding: 8px 12px;

            border: none;

            border-radius: 7px;

            font-size: 11px;
            font-weight: 800;

            white-space: nowrap;
        }

        .cart-buy-btn {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    #16a34a,
                    #15803d
                );
        }

        .remove-btn {
            color: #dc2626;

            background: #fee2e2;
        }

        .remove-btn:hover {
            color: white;
            background: #dc2626;
        }

        /* =========================================================
           CART SUMMARY
        ========================================================= */

        .cart-summary {
            margin-top: 20px;

            padding-top: 18px;

            border-top:
                1px solid #e5e7eb;
        }

        .cart-total-row {
            display: flex;

            align-items: center;
            justify-content: space-between;

            color: #1e293b;

            font-size: 19px;
            font-weight: 900;
        }

        #cart-total-price {
            color: #2563eb;
        }

        .checkout-btn {
            width: 100%;

            margin-top: 15px;

            padding: 14px;

            border: none;

            border-radius: 10px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #16a34a,
                    #15803d
                );

            font-size: 14px;
            font-weight: 850;
        }

        /* =========================================================
           WISHLIST
        ========================================================= */

        .wishlist-grid {
            display: grid;

            grid-template-columns:
                repeat(
                    auto-fill,
                    minmax(180px,1fr)
                );

            gap: 15px;
        }

        .wishlist-card {
            overflow: hidden;

            border:
                1px solid #e5e7eb;

            border-radius: 12px;

            background: white;
        }

        .wishlist-card img {
            width: 100%;
            height: 140px;

            display: block;

            object-fit: cover;
        }

        .wishlist-card-body {
            padding: 12px;
        }

        .wishlist-card h4 {
            margin-bottom: 5px;

            color: #1e293b;

            font-size: 13px;
        }

        .wishlist-price {
            margin-bottom: 10px;

            color: #2563eb;

            font-size: 15px;
            font-weight: 900;
        }

        .wishlist-card button {
            width: 100%;

            padding: 9px;

            border: none;

            border-radius: 8px;

            color: white;

            background: #2563eb;

            font-size: 10px;
            font-weight: 800;
        }

        /* =========================================================
           TOAST
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
            min-width: 280px;
            max-width: 390px;

            display: flex;
            align-items: center;

            gap: 10px;

            padding: 13px 16px;

            border-left:
                4px solid #22c55e;

            border-radius: 11px;

            color: #1e293b;

            background: white;

            box-shadow:
                0 12px 35px
                rgba(15,23,42,.15);

            animation:
                toastIn .3s ease;
        }

        .toast.error {
            border-left-color: #dc2626;
        }

        .toast-icon {
            font-size: 19px;
        }

        @keyframes toastIn {

            from {
                opacity: 0;
                transform: translateX(30px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }

        }

        @keyframes toastOut {

            from {
                opacity: 1;
                transform: translateX(0);
            }

            to {
                opacity: 0;
                transform: translateX(30px);
            }

        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            margin-top: 20px;

            padding: 35px 20px;

            text-align: center;

            color: #cbd5e1;

            background:
                linear-gradient(
                    135deg,
                    #111827,
                    #0f172a
                );
        }

        footer .footer-brand {
            margin-bottom: 7px;

            color: white;

            font-size: 17px;
            font-weight: 850;
        }

        footer p {
            opacity: .75;

            font-size: 12px;
        }

        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 1100px) {

            .brand {
                display: none;
            }

            .item-grid {
                grid-template-columns:
                    repeat(
                        auto-fill,
                        minmax(200px,1fr)
                    );
            }

        }

        @media (max-width: 850px) {

            nav {
                padding: 11px 16px;
                gap: 10px;
            }

            nav a {
                padding: 8px 10px;
                font-size: 11px;
            }

            .nav-actions {
                flex-shrink: 0;
            }

            .cart-btn {
                padding: 10px 12px;
            }

            main {
                padding:
                    24px 16px 45px;
            }

            .hero {
                padding:
                    35px 28px;
            }

            .hero h1 {
                font-size: 32px;
            }

            .details-layout {
                grid-template-columns: 1fr;
            }

            .details-image {
                height: 280px;
            }

        }

        @media (max-width: 600px) {

            body {
                padding-top: 132px;
            }

            nav {
                flex-direction: column;
                align-items: stretch;

                min-height: auto;

                padding:
                    10px 12px;
            }

            .nav-links {
                width: 100%;
            }

            .nav-actions {
                width: 100%;
            }

            .theme-btn {
                width: 45px;
            }

            .cart-btn {
                flex: 1;
            }

            .search-panel {
                grid-template-columns: 1fr;
            }

            .hero {
                padding:
                    30px 22px;

                border-radius: 18px;
            }

            .hero h1 {
                font-size: 27px;
            }

            .hero p {
                font-size: 13px;
            }

            .hero-stats {
                gap: 18px;
            }

            .hero-stat strong {
                font-size: 17px;
            }

            .category-section {
                margin-bottom: 55px;
            }

            .category-section h2 {
                font-size: 20px;
            }

            .category-icon {
                width: 36px;
                height: 36px;

                font-size: 16px;
            }

            .category-badge {
                font-size: 9px;

                padding:
                    6px 9px;
            }

            .item-grid {
                grid-template-columns:
                    repeat(2,1fr);

                gap: 10px;
            }

            .item-card {
                padding: 9px;
                border-radius: 12px;
            }

            .item-img {
                height: 130px;
            }

            .item-title {
                min-height: 38px;

                font-size: 13px;
            }

            .item-price {
                font-size: 16px;
            }

            .card-buttons {
                grid-template-columns: 1fr;
                gap: 5px;
            }

            .modal-content {
                padding: 18px;

                max-height: 90vh;

                border-radius: 16px;
            }

            .cart-item {
                grid-template-columns:
                    65px 1fr;

                gap: 10px;
            }

            .cart-item-image {
                width: 65px;
                height: 65px;
            }

            .cart-actions {
                grid-column: 1 / -1;

                flex-direction: row;
            }

            .cart-buy-btn,
            .remove-btn {
                flex: 1;
            }

            #toast-container {
                left: 12px;
                right: 12px;
                bottom: 12px;
            }

            .toast {
                min-width: 0;
                width: 100%;
            }

            .details-actions {
                grid-template-columns: 1fr;
            }

        }

        @media (max-width: 400px) {

            .item-grid {
                grid-template-columns: 1fr;
            }

            .item-img {
                height: 170px;
            }

            .card-buttons {
                grid-template-columns:
                    1fr 1fr;
            }

        }

    </style>

</head>


<body>

    <!-- =========================================================
         NAVIGATION
    ========================================================= -->

    <nav>

        <a href="#top" class="brand">

            <span class="brand-icon">
                🛍️
            </span>

            <span>
                Shop<span>Sphere</span>
            </span>

        </a>


        <div
            class="nav-links"
            id="navbar">
        </div>


        <div class="nav-actions">

            <button
                class="icon-btn theme-btn"
                onclick="toggleDarkMode()"
                title="Toggle dark mode">

                🌙

            </button>


            <button
                class="icon-btn"
                onclick="openWishlist()"
                title="Wishlist">

                ❤️

            </button>


            <button
                class="cart-btn"
                onclick="toggleCartModal(true)">

                🛒 Cart

                <span id="cart-count">
                    0
                </span>

            </button>

        </div>

    </nav>


    <!-- =========================================================
         MAIN
    ========================================================= -->

    <main id="top">


        <!-- =====================================================
             HERO
        ===================================================== -->

        <section class="hero">

            <div class="hero-content">

                <div class="hero-label">
                    ✨ Welcome to ShopSphere
                </div>

                <h1>
                    Everything you need,
                    all in one place.
                </h1>

                <p>
                    Discover electronics, fashion,
                    home essentials, books, sports,
                    beauty products and more.
                    Search, compare and shop your favorites.
                </p>


                <div class="hero-stats">

                    <div class="hero-stat">

                        <strong>
                            12
                        </strong>

                        <span>
                            Categories
                        </span>

                    </div>


                    <div class="hero-stat">

                        <strong>
                            240+
                        </strong>

                        <span>
                            Products
                        </span>

                    </div>


                    <div class="hero-stat">

                        <strong>
                            24/7
                        </strong>

                        <span>
                            Shopping
                        </span>

                    </div>

                </div>

            </div>

        </section>


        <!-- =====================================================
             SEARCH
        ===================================================== -->

        <div class="search-panel">

            <div class="search-wrapper">

                <span class="search-icon">
                    🔎
                </span>

                <input
                    type="search"
                    id="search-input"
                    class="search-area"
                    placeholder="Search products..."
                    autocomplete="off">

                <button
                    class="clear-search"
                    id="clear-search"
                    onclick="clearSearch()">

                    ×

                </button>

            </div>


            <select
                id="category-filter"
                class="category-filter">

                <option value="all">
                    All Categories
                </option>

            </select>

        </div>


        <div class="results-bar">

            <span
                id="results-text"
                class="results-text">

                Showing all products

            </span>


            <button
                id="clear-filters"
                class="clear-filters"
                onclick="clearFilters()">

                Clear Filters

            </button>

        </div>


        <!-- =====================================================
             PRODUCTS
        ===================================================== -->

        <div id="content-container">
        </div>


        <div
            id="no-results"
            class="no-results">

            <div class="no-results-icon">
                🔍
            </div>

            <h3>
                No products found
            </h3>

            <p>
                Try another search term or category.
            </p>

        </div>

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


            <div id="cart-items-container">
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
         PRODUCT DETAILS MODAL
    ========================================================= -->

    <div
        class="modal-overlay"
        id="details-modal"
        onclick="handleDetailsModalClick(event)">

        <div class="modal-content large">

            <div class="modal-header">

                <h3>
                    Product Details
                </h3>

                <button
                    class="close-btn"
                    onclick="closeDetails()">

                    &times;

                </button>

            </div>


            <div id="details-container">
            </div>

        </div>

    </div>


    <!-- =========================================================
         WISHLIST MODAL
