/* =========================================================
   ATTRACTIVE ELECTROMART UI ENHANCEMENTS
   Existing HTML + JavaScript remain unchanged
   ========================================================= */

body {
    background:
        radial-gradient(circle at 10% 10%, rgba(254, 189, 105, 0.18), transparent 28%),
        radial-gradient(circle at 90% 20%, rgba(0, 113, 133, 0.12), transparent 30%),
        radial-gradient(circle at 50% 100%, rgba(240, 136, 4, 0.10), transparent 35%),
        linear-gradient(135deg, #eef2f3 0%, #dfe7eb 50%, #f5f7f8 100%);
    color: var(--text-main);
}

/* Header enhancement */
header {
    background: linear-gradient(135deg, #0b1117, #131921 55%, #1d2935);
    box-shadow: 0 4px 18px rgba(0, 0, 0, 0.25);
}

.navbar {
    padding-top: 0.7rem;
    padding-bottom: 0.7rem;
}

/* Logo */
.logo {
    font-size: 1.5rem;
    letter-spacing: 0.3px;
    text-shadow: 0 2px 8px rgba(254, 189, 105, 0.2);
}

.logo span {
    color: #febd69;
}

/* Search bar */
.search-bar {
    box-shadow: 0 3px 12px rgba(0, 0, 0, 0.25);
    border: 2px solid transparent;
    transition: all 0.25s ease;
}

.search-bar:focus-within {
    border-color: var(--amazon-orange);
    box-shadow:
        0 0 0 3px rgba(240, 136, 4, 0.18),
        0 4px 15px rgba(0, 0, 0, 0.25);
}

.search-bar input {
    background: #ffffff;
}

.search-btn {
    transition: all 0.2s ease;
}

.search-btn:hover {
    background: #f7a928;
    transform: scale(1.03);
}

/* Navigation */
.subnav {
    background: linear-gradient(90deg, #182431, #232f3e, #182431);
    box-shadow: inset 0 1px rgba(255,255,255,0.05);
}

.subnav a {
    transition: all 0.2s ease;
}

.subnav a:hover {
    background: rgba(255,255,255,0.08);
}

/* Main container */
.container {
    margin-top: 2rem;
    margin-bottom: 2rem;
}

/* Sidebar */
.sidebar {
    background:
        linear-gradient(145deg, rgba(255,255,255,0.98), rgba(247,249,250,0.96));
    border: 1px solid rgba(213, 217, 217, 0.8);
    box-shadow:
        0 8px 25px rgba(0, 0, 0, 0.08),
        0 2px 6px rgba(0, 0, 0, 0.05);
    transition: transform 0.25s ease, box-shadow 0.25s ease;
}

.sidebar:hover {
    transform: translateY(-2px);
    box-shadow:
        0 12px 30px rgba(0, 0, 0, 0.11),
        0 3px 8px rgba(0, 0, 0, 0.06);
}

.sidebar h3 {
    color: #17212b;
    font-size: 1.05rem;
}

/* Filter controls */
.filter-group select,
.filter-group input[type="range"] {
    background: #ffffff;
    transition: all 0.2s ease;
}

.filter-group select:focus {
    border-color: var(--amazon-orange);
    box-shadow: 0 0 0 3px rgba(240,136,4,0.12);
}

/* Product grid */
.product-grid {
    gap: 1.4rem;
}

/* Product cards */
.product-card {
    position: relative;
    overflow: hidden;
    background: linear-gradient(145deg, #ffffff, #fafbfc);
    border: 1px solid rgba(213, 217, 217, 0.9);
    border-radius: 10px;
    padding: 1.1rem;
    box-shadow:
        0 4px 12px rgba(0, 0, 0, 0.06),
        0 1px 3px rgba(0, 0, 0, 0.05);
    transition:
        transform 0.25s ease,
        box-shadow 0.25s ease,
        border-color 0.25s ease;
}

/* Small decorative glow */
.product-card::before {
    content: "";
    position: absolute;
    top: -60px;
    right: -60px;
    width: 130px;
    height: 130px;
    border-radius: 50%;
    background: radial-gradient(
        circle,
        rgba(254,189,105,0.22),
        transparent 70%
    );
    pointer-events: none;
}

.product-card:hover {
    transform: translateY(-7px);
    border-color: #c9d1d5;
    box-shadow:
        0 15px 35px rgba(0, 0, 0, 0.13),
        0 5px 10px rgba(0, 0, 0, 0.06);
}

/* Product image */
.product-image {
    height: 190px;
    border-radius: 7px;
    padding: 0.4rem;
    transition: transform 0.35s ease;
}

.product-card:hover .product-image {
    transform: scale(1.06);
}

/* Product information */
.product-category {
    color: #6b7478;
    font-weight: 600;
}

.product-title {
    font-weight: 600;
    transition: color 0.2s ease;
}

.product-title:hover {
    color: #c45500;
}

/* Rating */
.amazon-badge-row {
    background: rgba(255, 164, 28, 0.08);
    width: fit-content;
    padding: 0.18rem 0.4rem;
    border-radius: 5px;
}

.star-rating {
    text-shadow: 0 1px 3px rgba(255,164,28,0.25);
}

/* Price */
.product-price {
    font-size: 1.4rem;
    margin-top: 0.2rem;
    text-shadow: 0 1px 1px rgba(177,39,4,0.08);
}

/* Prime delivery */
.prime-shipping {
    padding: 0.3rem 0;
}

.prime-shipping strong {
    color: #00a8e1;
    font-size: 0.85rem;
}

/* Add to cart */
.add-to-cart-btn {
    position: relative;
    overflow: hidden;
    background: linear-gradient(
        180deg,
        #ffe34a 0%,
        #ffd814 55%,
        #f7ca00 100%
    );
    box-shadow:
        0 3px 7px rgba(0, 0, 0, 0.12),
        inset 0 1px rgba(255,255,255,0.5);
    transition:
        transform 0.2s ease,
        box-shadow 0.2s ease,
        background 0.2s ease;
}

.add-to-cart-btn:hover {
    background: linear-gradient(
        180deg,
        #ffe95e,
        #ffd814
    );
    transform: translateY(-2px);
    box-shadow:
        0 5px 12px rgba(0, 0, 0, 0.16),
        inset 0 1px rgba(255,255,255,0.5);
}

.add-to-cart-btn:active {
    transform: translateY(0);
}

/* Cart button */
.cart-btn {
    transition: all 0.2s ease;
}

.cart-btn:hover {
    background: rgba(255,255,255,0.06);
}

.cart-badge {
    min-width: 22px;
    text-align: center;
    box-shadow: 0 2px 5px rgba(0,0,0,0.25);
}

/* Cart overlay */
.cart-overlay.open {
    backdrop-filter: blur(3px);
}

/* Cart drawer */
.cart-drawer {
    box-shadow: -10px 0 35px rgba(0,0,0,0.25);
}

.cart-header {
    background:
        linear-gradient(135deg, #0b1117, #131921, #232f3e);
    box-shadow: 0 3px 10px rgba(0,0,0,0.15);
}

.cart-item {
    border-radius: 7px;
    padding: 0.7rem;
    transition: background 0.2s ease;
}

.cart-item:hover {
    background: #f6f8f9;
}

.cart-item img {
    background: white;
    border-radius: 6px;
}

.quantity-btn {
    transition: all 0.15s ease;
}

.quantity-btn:hover {
    background: #d5d9d9;
    transform: scale(1.05);
}

.remove-btn {
    transition: color 0.2s ease;
}

.remove-btn:hover {
    color: #c45500;
}

/* Cart footer */
.cart-footer {
    background:
        linear-gradient(180deg, #fafafa, #f1f3f3);
    box-shadow: 0 -3px 12px rgba(0,0,0,0.05);
}

.checkout-btn {
    background: linear-gradient(
        180deg,
        #ffe45c,
        #ffd814
    );
    box-shadow:
        0 3px 8px rgba(0,0,0,0.12);
    transition: all 0.2s ease;
}

.checkout-btn:hover {
    background: linear-gradient(
        180deg,
        #ffeb76,
        #f7ca00
    );
    transform: translateY(-2px);
}

/* Checkout modal */
.modal {
    backdrop-filter: blur(5px);
}

.modal-content {
    background:
        linear-gradient(145deg, #ffffff, #f8fafb);
    border-radius: 12px;
    box-shadow:
        0 25px 60px rgba(0,0,0,0.3),
        0 5px 15px rgba(0,0,0,0.12);
    animation: modalPop 0.25s ease-out;
}

@keyframes modalPop {
    from {
        opacity: 0;
        transform: scale(0.94) translateY(10px);
    }
    to {
        opacity: 1;
        transform: scale(1) translateY(0);
    }
}

.form-group input {
    transition: all 0.2s ease;
}

.form-group input:hover {
    border-color: #adb1b8;
}

/* Toast */
.toast {
    background:
        linear-gradient(135deg, #131921, #232f3e);
    border-left: 4px solid #febd69;
    box-shadow:
        0 8px 25px rgba(0,0,0,0.25);
}

/* Better scrollbar */
::-webkit-scrollbar {
    width: 9px;
}

::-webkit-scrollbar-track {
    background: #e9edef;
}

::-webkit-scrollbar-thumb {
    background: #aeb7bd;
    border-radius: 10px;
}

::-webkit-scrollbar-thumb:hover {
    background: #7f8b92;
}

/* Mobile improvements */
@media (max-width: 768px) {
    body {
        background:
            linear-gradient(145deg, #eef2f3, #dfe7eb);
    }

    .container {
        margin-top: 1rem;
        padding: 0 0.7rem;
    }

    .sidebar {
        border-radius: 10px;
    }

    .product-card {
        border-radius: 9px;
    }

    .product-card:hover {
        transform: translateY(-3px);
    }
}
