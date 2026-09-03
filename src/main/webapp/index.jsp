<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta
    name="viewport"
    content="width=device-width, initial-scale=1.0"
>

<meta
    name="description"
    content="NovaShop - Modern e-commerce shopping experience"
>

<title>NovaShop - Modern E-Commerce</title>


<style>

/* =====================================================
   RESET & VARIABLES
===================================================== */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {

    --primary: #6c5ce7;
    --primary-dark: #5849d1;
    --primary-light: #8e7cf0;

    --secondary: #00cec9;
    --accent: #ff7675;

    --bg: #f6f7fb;
    --card: #ffffff;

    --text: #1e1e2f;
    --muted: #777b87;

    --border: #e7e8ef;

    --success: #00b894;
    --warning: #fdcb6e;

    --danger: #ff4757;

    --shadow:
        0 10px 30px rgba(31, 38, 135, 0.08);

    --shadow-hover:
        0 20px 45px rgba(31, 38, 135, 0.15);

    --radius: 18px;

    --transition: 0.25s ease;
}

body.dark {

    --bg: #11131a;
    --card: #1b1e27;

    --text: #f5f5f5;
    --muted: #a8acb8;

    --border: #303441;

    --shadow:
        0 10px 30px rgba(0, 0, 0, 0.3);

    --shadow-hover:
        0 20px 45px rgba(0, 0, 0, 0.45);
}


/* =====================================================
   BASE
===================================================== */

html {
    scroll-behavior: smooth;
}

body {

    font-family:
        Inter,
        ui-sans-serif,
        system-ui,
        -apple-system,
        BlinkMacSystemFont,
        "Segoe UI",
        Arial,
        sans-serif;

    background:

        radial-gradient(
            circle at top left,
            rgba(108,92,231,0.12),
            transparent 30%
        ),

        radial-gradient(
            circle at bottom right,
            rgba(0,206,201,0.10),
            transparent 30%
        ),

        var(--bg);

    color: var(--text);

    min-height: 100vh;

    transition:
        background var(--transition),
        color var(--transition);

    overflow-x: hidden;
}

body.no-scroll {
    overflow: hidden;
}

button,
input,
select,
textarea {
    font: inherit;
}

button {
    cursor: pointer;
}

img {
    max-width: 100%;
    display: block;
}

a {
    color: inherit;
}

::selection {
    background: var(--primary);
    color: white;
}


/* =====================================================
   HEADER
===================================================== */

header {

    position: sticky;

    top: 0;

    z-index: 1000;

    background:
        rgba(255,255,255,0.88);

    backdrop-filter:
        blur(18px);

    border-bottom:
        1px solid var(--border);

    transition:
        background var(--transition);
}

body.dark header {
    background:
        rgba(17,19,26,0.90);
}

.navbar {

    max-width: 1400px;

    margin: auto;

    min-height: 75px;

    padding: 12px 25px;

    display: flex;

    align-items: center;

    gap: 25px;
}


/* LOGO */

.logo {

    text-decoration: none;

    color: var(--text);

    font-size: 25px;

    font-weight: 900;

    white-space: nowrap;

    letter-spacing: -1px;
}

.logo span {
    color: var(--primary);
}


/* SEARCH */

.search-wrapper {

    flex: 1;

    max-width: 650px;

    position: relative;
}

.search-box {

    width: 100%;

    height: 46px;

    border:
        1px solid var(--border);

    border-radius: 30px;

    padding:
        0 80px 0 20px;

    outline: none;

    background: var(--card);

    color: var(--text);

    box-shadow:
        0 5px 20px rgba(0,0,0,0.04);

    transition:
        border var(--transition),
        box-shadow var(--transition);
}

.search-box::placeholder {
    color: var(--muted);
}

.search-box:focus {

    border-color:
        var(--primary);

    box-shadow:
        0 0 0 4px
        rgba(108,92,231,0.12);
}

.search-icon {

    position: absolute;

    right: 18px;

    top: 50%;

    transform:
        translateY(-50%);

    color: var(--muted);

    pointer-events: none;
}


/* HEADER ACTIONS */

.header-actions {

    display: flex;

    align-items: center;

    gap: 10px;
}

.icon-btn {

    width: 43px;
    height: 43px;

    border:
        1px solid var(--border);

    border-radius: 50%;

    background: var(--card);

    color: var(--text);

    display: grid;

    place-items: center;

    position: relative;

    transition:
        transform var(--transition),
        color var(--transition),
        border-color var(--transition);
}

.icon-btn:hover {

    transform:
        translateY(-2px);

    color:
        var(--primary);

    border-color:
        var(--primary);
}

.icon-btn:focus-visible {

    outline:
        3px solid
        rgba(108,92,231,0.25);

    outline-offset: 2px;
}

.badge {

    position: absolute;

    top: -5px;

    right: -3px;

    background:
        var(--accent);

    color: white;

    min-width: 20px;

    height: 20px;

    padding: 0 5px;

    border-radius: 50%;

    font-size: 11px;

    display: grid;

    place-items: center;

    font-weight: 800;

    border:
        2px solid var(--card);
}


/* =====================================================
   HERO
===================================================== */

.hero {

    max-width: 1400px;

    margin:
        35px auto 20px;

    padding:
        0 25px;
}

.hero-card {

    min-height: 390px;

    border-radius: 30px;

    overflow: hidden;

    position: relative;

    display: flex;

    align-items: center;

    padding: 55px;

    background:

        linear-gradient(
            120deg,
            #6c5ce7,
            #8e7cf0 50%,
            #00cec9
        );

    color: white;

    box-shadow:
        0 25px 60px
        rgba(108,92,231,0.25);
}

.hero-card::before {

    content: "";

    position: absolute;

    width: 350px;
    height: 350px;

    border-radius: 50%;

    background:
        rgba(255,255,255,0.08);

    right: 12%;
    top: -100px;
}

.hero-card::after {

    content: "";

    position: absolute;

    width: 220px;
    height: 220px;

    border-radius: 50%;

    background:
        rgba(255,255,255,0.08);

    right: 2%;
    bottom: -100px;
}

.hero-decoration {

    position: absolute;

    right: 8%;

    bottom: 20px;

    font-size: 160px;

    opacity: 0.12;

    transform: rotate(-12deg);

    z-index: 1;
}

.hero-content {

    max-width: 680px;

    position: relative;

    z-index: 2;
}

.hero-small {

    font-size: 14px;

    text-transform: uppercase;

    letter-spacing: 2px;

    opacity: 0.85;

    margin-bottom: 12px;

    font-weight: 700;
}

.hero h1 {

    font-size:
        clamp(38px, 6vw, 68px);

    line-height: 1;

    letter-spacing: -2px;

    margin-bottom: 20px;
}

.hero p {

    font-size: 17px;

    line-height: 1.7;

    max-width: 550px;

    opacity: 0.9;

    margin-bottom: 28px;
}

.hero-buttons {

    display: flex;

    gap: 12px;

    flex-wrap: wrap;
}

.hero-btn {

    border: none;

    background: white;

    color: var(--primary);

    padding:
        14px 25px;

    border-radius: 30px;

    font-weight: 800;

    box-shadow:
        0 10px 25px
        rgba(0,0,0,0.15);

    transition:
        transform var(--transition),
        box-shadow var(--transition);
}

.hero-btn:hover {

    transform:
        translateY(-3px);

    box-shadow:
        0 15px 30px
        rgba(0,0,0,0.2);
}

.hero-secondary {

    border:
        1px solid
        rgba(255,255,255,0.35);

    background:
        rgba(255,255,255,0.12);

    color: white;

    padding:
        14px 22px;

    border-radius: 30px;

    font-weight: 700;

    backdrop-filter:
        blur(8px);
}


/* =====================================================
   FEATURES
===================================================== */

.features {

    max-width: 1400px;

    margin:
        25px auto 0;

    padding:
        0 25px;

    display: grid;

    grid-template-columns:
        repeat(4, 1fr);

    gap: 15px;
}

.feature {

    display: flex;

    align-items: center;

    gap: 13px;

    background: var(--card);

    border:
        1px solid var(--border);

    padding: 17px;

    border-radius:
        14px;

    box-shadow:
        var(--shadow);
}

.feature-icon {

    width: 42px;
    height: 42px;

    border-radius: 12px;

    display: grid;

    place-items: center;

    background:
        rgba(108,92,231,0.1);

    font-size: 20px;
}

.feature strong {

    display: block;

    font-size: 13px;

    margin-bottom: 3px;
}

.feature span {

    color: var(--muted);

    font-size: 12px;
}


/* =====================================================
   SECTION
===================================================== */

.section {

    max-width: 1400px;

    margin:
        45px auto;

    padding:
        0 25px;
}

.section-header {

    display: flex;

    justify-content:
        space-between;

    align-items: center;

    margin-bottom: 22px;

    gap: 20px;
}

.section-title {

    font-size: 28px;

    font-weight: 900;

    letter-spacing: -0.7px;
}

.section-subtitle {

    color: var(--muted);

    margin-top: 5px;

    font-size: 14px;
}


/* =====================================================
   CATEGORIES
===================================================== */

.categories {

    display: grid;

    grid-template-columns:
        repeat(7, 1fr);

    gap: 15px;
}

.category {

    border:
        1px solid var(--border);

    background:
        var(--card);

    border-radius:
        var(--radius);

    padding:
        22px 12px;

    text-align:
        center;

    transition:
        transform var(--transition),
        border-color var(--transition),
        color var(--transition),
        box-shadow var(--transition);

    box-shadow:
        var(--shadow);

    user-select:
        none;

    cursor:
        pointer;
}

.category:hover,
.category.active {

    transform:
        translateY(-5px);

    border-color:
        var(--primary);

    color:
        var(--primary);

    box-shadow:
        0 15px 35px
        rgba(108,92,231,0.15);
}

.category-icon {

    font-size: 34px;

    margin-bottom: 10px;
}

.category-name {

    font-size: 14px;

    font-weight: 800;
}


/* =====================================================
   SHOP LAYOUT
===================================================== */

.shop-layout {

    display: grid;

    grid-template-columns:
        240px 1fr;

    gap: 25px;
}


/* =====================================================
   FILTERS
===================================================== */

.filters {

    background:
        var(--card);

    border:
        1px solid var(--border);

    border-radius:
        var(--radius);

    padding:
        22px;

    height:
        fit-content;

    box-shadow:
        var(--shadow);

    position:
        sticky;

    top:
        100px;
}

.filter-title {

    font-size: 18px;

    font-weight: 900;

    margin-bottom: 20px;

    display: flex;

    justify-content:
        space-between;

    align-items: center;
}

.filter-group {

    margin-bottom: 25px;
}

.filter-group label {

    display: block;

    font-size: 13px;

    font-weight: 800;

    margin-bottom: 9px;
}

.filter-select {

    width: 100%;

    padding: 11px;

    border:
        1px solid var(--border);

    border-radius: 10px;

    outline: none;

    background:
        var(--bg);

    color:
        var(--text);
}

.filter-select:focus {

    border-color:
        var(--primary);
}

.range-value {

    color:
        var(--primary);

    font-weight:
        800;

    margin-top:
        8px;

    font-size:
        13px;
}

input[type="range"] {

    width:
        100%;

    accent-color:
        var(--primary);
}

.clear-btn {

    width:
        100%;

    border:
        1px solid var(--border);

    background:
        transparent;

    color:
        var(--text);

    padding:
        11px;

    border-radius:
        10px;

    transition:
        all var(--transition);
}

.clear-btn:hover {

    border-color:
        var(--primary);

    color:
        var(--primary);

    background:
        rgba(108,92,231,0.05);
}


/* =====================================================
   PRODUCTS
===================================================== */

.products-area {
    min-width: 0;
}

.products-top {

    display: flex;

    justify-content:
        space-between;

    align-items:
        center;

    margin-bottom:
        18px;

    gap:
        15px;
}

.result-count {

    color:
        var(--muted);

    font-size:
        14px;
}

.sort-select {

    padding:
        10px 15px;

    border:
        1px solid var(--border);

    border-radius:
        10px;

    background:
        var(--card);

    color:
        var(--text);

    outline:
        none;
}

.products {

    display:
        grid;

    grid-template-columns:
        repeat(3, 1fr);

    gap:
        20px;
}


/* =====================================================
   PRODUCT CARD
===================================================== */

.product-card {

    background:
        var(--card);

    border:
        1px solid var(--border);

    border-radius:
        var(--radius);

    overflow:
        hidden;

    position:
        relative;

    box-shadow:
        var(--shadow);

    transition:
        transform var(--transition),
        box-shadow var(--transition),
        border-color var(--transition);
}

.product-card:hover {

    transform:
        translateY(-7px);

    box-shadow:
        var(--shadow-hover);

    border-color:
        rgba(108,92,231,0.25);
}

.product-image-container {

    height:
        230px;

    background:
        linear-gradient(
            135deg,
            #f8f9fc,
            #eef0f7
        );

    position:
        relative;

    overflow:
        hidden;
}

body.dark
.product-image-container {

    background:
        #242832;
}

.product-image {

    width:
        100%;

    height:
        100%;

    object-fit:
        cover;

    transition:
        transform 0.5s;
}

.product-card:hover
.product-image {

    transform:
        scale(1.08);
}

.discount {

    position:
        absolute;

    top:
        13px;

    left:
        13px;

    background:
        var(--accent);

    color:
        white;

    padding:
        5px 9px;

    border-radius:
        7px;

    font-size:
        11px;

    font-weight:
        900;
}

.wishlist {

    position:
        absolute;

    top:
        12px;

    right:
        12px;

    width:
        38px;

    height:
        38px;

    border:
        none;

    border-radius:
        50%;

    background:
        rgba(255,255,255,0.94);

    display:
        grid;

    place-items:
        center;

    font-size:
        18px;

    transition:
        transform var(--transition),
        color var(--transition);

    box-shadow:
        0 5px 15px rgba(0,0,0,0.1);
}

.wishlist:hover,
.wishlist.active {

    color:
        var(--accent);

    transform:
        scale(1.1);
}

.product-info {

    padding:
        18px;
}

.product-category {

    font-size:
        11px;

    text-transform:
        uppercase;

    color:
        var(--primary);

    font-weight:
        900;

    letter-spacing:
        1px;

    margin-bottom:
        7px;
}

.product-name {

    font-size:
        16px;

    font-weight:
        800;

    line-height:
        1.4;

    margin-bottom:
        8px;

    min-height:
        45px;
}

.rating {

    color:
        #f39c12;

    font-size:
        13px;

    margin-bottom:
        12px;
}

.rating span {

    color:
        var(--muted);

    margin-left:
        4px;
}

.price-row {

    display:
        flex;

    align-items:
        center;

    gap:
        9px;

    margin-bottom:
        15px;
}

.price {

    font-size:
        21px;

    font-weight:
        900;
}

.old-price {

    color:
        var(--muted);

    text-decoration:
        line-through;

    font-size:
        13px;
}

.add-cart {

    width:
        100%;

    border:
        none;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            #8e7cf0
        );

    color:
        white;

    padding:
        12px;

    border-radius:
        11px;

    font-weight:
        800;

    transition:
        transform var(--transition),
        box-shadow var(--transition);
}

.add-cart:hover {

    transform:
        translateY(-2px);

    box-shadow:
        0 8px 18px
        rgba(108,92,231,0.3);
}

.add-cart:active {

    transform:
        scale(0.98);
}


/* =====================================================
   EMPTY / NO RESULTS
===================================================== */

.no-results {

    grid-column:
        1 / -1;

    text-align:
        center;

    padding:
        80px 20px;

    color:
        var(--muted);

    background:
        var(--card);

    border:
        1px solid var(--border);

    border-radius:
        var(--radius);
}

.no-results-icon {

    font-size:
        50px;

    margin-bottom:
        15px;
}

.no-results h2 {

    color:
        var(--text);

    margin-bottom:
        8px;
}


/* =====================================================
   CART OVERLAY
===================================================== */

.overlay {

    position:
        fixed;

    inset:
        0;

    background:
        rgba(0,0,0,0.45);

    backdrop-filter:
        blur(4px);

    z-index:
        1100;

    opacity:
        0;

    visibility:
        hidden;

    transition:
        0.3s;
}

.overlay.show {

    opacity:
        1;

    visibility:
        visible;
}


/* =====================================================
   CART DRAWER
===================================================== */

.cart-drawer {

    position:
        fixed;

    top:
        0;

    right:
        -450px;

    width:
        430px;

    max-width:
        100%;

    height:
        100vh;

    background:
        var(--card);

    z-index:
        1200;

    display:
        flex;

    flex-direction:
        column;

    box-shadow:
        -15px 0 50px
        rgba(0,0,0,0.18);

    transition:
        right 0.35s ease;
}

.cart-drawer.show {

    right:
        0;
}

.cart-header {

    padding:
        22px;

    display:
        flex;

    justify-content:
        space-between;

    align-items:
        center;

    border-bottom:
        1px solid var(--border);
}

.cart-header h2 {

    font-size:
        21px;
}

.close-btn {

    width:
        38px;

    height:
        38px;

    border:
        none;

    border-radius:
        50%;

    background:
        var(--bg);

    color:
        var(--text);

    font-size:
        20px;

    transition:
        transform var(--transition);
}

.close-btn:hover {

    transform:
        rotate(90deg);
}

.cart-items {

    flex:
        1;

    overflow-y:
        auto;

    padding:
        20px;
}

.cart-item {

    display:
        flex;

    gap:
        13px;

    padding:
        13px 0;

    border-bottom:
        1px solid var(--border);
}

.cart-item-image {

    width:
        70px;

    height:
        70px;

    border-radius:
        10px;

    object-fit:
        cover;
}

.cart-item-info {

    flex:
        1;

    min-width:
        0;
}

.cart-item-name {

    font-size:
        14px;

    font-weight:
        800;

    line-height:
        1.4;

    margin-bottom:
        6px;
}

.cart-item-price {

    color:
        var(--primary);

    font-weight:
        900;

    font-size:
        14px;
}

.cart-controls {

    display:
        flex;

    align-items:
        center;

    gap:
        8px;

    margin-top:
        9px;
}

.quantity-btn {

    width:
        26px;

    height:
        26px;

    border:
        1px solid var(--border);

    background:
        var(--bg);

    color:
        var(--text);

    border-radius:
        6px;
}

.quantity-btn:hover {

    border-color:
        var(--primary);

    color:
        var(--primary);
}

.delete-btn {

    margin-left:
        auto;

    border:
        none;

    background:
        transparent;

    color:
        var(--accent);

    font-size:
        12px;
}

.cart-footer {

    padding:
        22px;

    border-top:
        1px solid var(--border);

    background:
        var(--card);
}

.subtotal {

    display:
        flex;

    justify-content:
        space-between;

    font-size:
        18px;

    font-weight:
        900;

    margin-bottom:
        15px;
}

.checkout-btn {

    width:
        100%;

    padding:
        14px;

    border:
        none;

    border-radius:
        12px;

    color:
        white;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            #8e7cf0
        );

    font-weight:
        900;
}

.checkout-btn:hover {

    box-shadow:
        0 10px 25px
        rgba(108,92,231,0.3);
}


/* =====================================================
   EMPTY CART
===================================================== */

.empty-cart {

    text-align:
        center;

    color:
        var(--muted);

    padding:
        60px 20px;
}

.empty-cart-icon {

    font-size:
        55px;

    margin-bottom:
        15px;
}

.empty-cart h3 {

    color:
        var(--text);

    margin-bottom:
        7px;
}


/* =====================================================
   CHECKOUT MODAL
===================================================== */

.modal {

    position:
        fixed;

    inset:
        0;

    background:
        rgba(0,0,0,0.55);

    backdrop-filter:
        blur(5px);

    display:
        flex;

    align-items:
        center;

    justify-content:
        center;

    z-index:
        2000;

    opacity:
        0;

    visibility:
        hidden;

    transition:
        0.25s;

    padding:
        20px;
}

.modal.show {

    opacity:
        1;

    visibility:
        visible;
}

.modal-content {

    width:
        min(520px, 100%);

    max-height:
        90vh;

    overflow-y:
        auto;

    background:
        var(--card);

    border-radius:
        22px;

    padding:
        28px;

    box-shadow:
        0 30px 80px
        rgba(0,0,0,0.25);

    transform:
        translateY(20px);

    transition:
        0.25s;
}

.modal.show
.modal-content {

    transform:
        translateY(0);
}

.modal-header {

    display:
        flex;

    justify-content:
        space-between;

    align-items:
        center;

    margin-bottom:
        20px;
}

.modal-header h2 {

    font-size:
        23px;
}

.form-group {

    margin-bottom:
        15px;
}

.form-group label {

    display:
        block;

    font-size:
        13px;

    font-weight:
        800;

    margin-bottom:
        7px;
}

.form-control {

    width:
        100%;

    padding:
        12px 14px;

    border:
        1px solid var(--border);

    border-radius:
        10px;

    background:
        var(--bg);

    color:
        var(--text);

    outline:
        none;
}

.form-control:focus {

    border-color:
        var(--primary);

    box-shadow:
        0 0 0 3px
        rgba(108,92,231,0.1);
}

.modal-buttons {

    display:
        flex;

    gap:
        10px;

    margin-top:
        20px;
}

.modal-buttons button {

    flex:
        1;

    padding:
        12px;

    border-radius:
        10px;

    font-weight:
        800;
}

.cancel-btn {

    background:
        var(--bg);

    border:
        1px solid var(--border);

    color:
        var(--text);
}

.place-order {

    background:
        var(--primary);

    border:
        1px solid var(--primary);

    color:
        white;
}


/* =====================================================
   SUCCESS MODAL
===================================================== */

.success-box {

    text-align:
        center;

    padding:
        20px 10px;
}

.success-icon {

    width:
        75px;

    height:
        75px;

    margin:
        0 auto 20px;

    border-radius:
        50%;

    display:
        grid;

    place-items:
        center;

    background:
        rgba(0,184,148,0.12);

    color:
        var(--success);

    font-size:
        36px;
}

.success-box h2 {

    margin-bottom:
        8px;
}

.success-box p {

    color:
        var(--muted);

    line-height:
        1.6;
}

.success-order {

    margin:
        18px 0;

    padding:
        12px;

    border-radius:
        10px;

    background:
        var(--bg);

    font-weight:
        900;

    color:
        var(--primary);
}


/* =====================================================
   TOAST
===================================================== */

.toast {

    position:
        fixed;

    right:
        25px;

    bottom:
        25px;

    background:
        var(--text);

    color:
        var(--card);

    padding:
        14px 20px;

    border-radius:
        12px;

    z-index:
        3000;

    transform:
        translateY(100px);

    opacity:
        0;

    transition:
        0.3s;

    box-shadow:
        0 10px 30px
        rgba(0,0,0,0.2);

    font-size:
        14px;

    max-width:
        350px;
}

.toast.show {

    transform:
        translateY(0);

    opacity:
        1;
}


/* =====================================================
   NEWSLETTER
===================================================== */

.newsletter {

    max-width:
        1400px;

    margin:
        60px auto;

    padding:
        0 25px;
}

.newsletter-box {

    border-radius:
        25px;

    padding:
        40px;

    background:
        linear-gradient(
            135deg,
            rgba(108,92,231,0.12),
            rgba(0,206,201,0.10)
        );

    border:
        1px solid var(--border);

    display:
        flex;

    justify-content:
        space-between;

    align-items:
        center;

    gap:
        30px;
}

.newsletter-text {

    max-width:
        550px;
}

.newsletter-text h2 {

    font-size:
        28px;

    margin-bottom:
        8px;
}

.newsletter-text p {

    color:
        var(--muted);

    line-height:
        1.6;
}

.newsletter-form {

    display:
        flex;

    gap:
        10px;

    width:
        min(480px, 100%);
}

.newsletter-input {

    flex:
        1;

    min-width:
        0;

    border:
        1px solid var(--border);

    border-radius:
        12px;

    padding:
        13px 15px;

    background:
        var(--card);

    color:
        var(--text);

    outline:
        none;
}

.newsletter-button {

    border:
        none;

    border-radius:
        12px;

    padding:
        13px 20px;

    background:
        var(--primary);

    color:
        white;

    font-weight:
        800;
}


/* =====================================================
   FOOTER
===================================================== */

footer {

    margin-top:
        70px;

    background:
        #151722;

    color:
        white;

    padding:
        50px 25px 25px;
}

.footer-grid {

    max-width:
        1400px;

    margin:
        auto;

    display:
        grid;

    grid-template-columns:
        2fr 1fr 1fr 1fr;

    gap:
        40px;
}

.footer-logo {

    font-size:
        25px;

    font-weight:
        900;

    margin-bottom:
        15px;
}

.footer-logo span {

    color:
        #8e7cf0;
}

.footer-text {

    color:
        #a5a8b4;

    line-height:
        1.7;

    max-width:
        400px;
}

.footer-column h3 {

    margin-bottom:
        15px;
}

.footer-column a {

    display:
        block;

    color:
        #a5a8b4;

    text-decoration:
        none;

    margin-bottom:
        10px;

    font-size:
        14px;
}

.footer-column a:hover {

    color:
        white;
}

.copyright {

    max-width:
        1400px;

    margin:
        40px auto 0;

    padding-top:
        20px;

    border-top:
        1px solid #30323e;

    color:
        #858895;

    font-size:
        13px;

    text-align:
        center;
}


/* =====================================================
   BACK TO TOP
===================================================== */

.back-top {

    position:
        fixed;

    right:
        25px;

    bottom:
        80px;

    width:
        43px;

    height:
        43px;

    border:
        none;

    border-radius:
        50%;

    background:
        var(--primary);

    color:
        white;

    display:
        grid;

    place-items:
        center;

    opacity:
        0;

    visibility:
        hidden;

    transform:
        translateY(10px);

    transition:
        all var(--transition);

    z-index:
        900;
}

.back-top.show {

    opacity:
        1;

    visibility:
        visible;

    transform:
        translateY(0);
}

.back-top:hover {

    background:
        var(--primary-dark);

    transform:
        translateY(-3px);
}


/* =====================================================
   RESPONSIVE
===================================================== */

@media (max-width: 1100px) {

    .categories {

        grid-template-columns:
            repeat(4, 1fr);
    }

    .products {

        grid-template-columns:
            repeat(2, 1fr);
    }

    .features {

        grid-template-columns:
            repeat(2, 1fr);
    }

}


@media (max-width: 800px) {

    .navbar {

        height:
            auto;

        padding:
            15px;

        flex-wrap:
            wrap;
    }

    .logo {

        order:
            1;
    }

    .header-actions {

        order:
            2;

        margin-left:
            auto;
    }

    .search-wrapper {

        order:
            3;

        flex-basis:
            100%;

        max-width:
            none;
    }

    .hero {

        margin-top:
            20px;
    }

    .hero-card {

        padding:
            35px 25px;

        min-height:
            350px;

        border-radius:
            22px;
    }

    .hero-decoration {

        font-size:
            100px;

        right:
            5%;
    }

    .shop-layout {

        grid-template-columns:
            1fr;
    }

    .filters {

        position:
            static;
    }

    .newsletter-box {

        flex-direction:
            column;

        align-items:
            flex-start;

        padding:
            30px;
    }

    .newsletter-form {

        width:
            100%;
    }

    .footer-grid {

        grid-template-columns:
            1fr 1fr;
    }

}


@media (max-width: 550px) {

    .categories {

        grid-template-columns:
            repeat(2, 1fr);
    }

    .products {

        grid-template-columns:
            1fr;
    }

    .features {

        grid-template-columns:
            1fr;
    }

    .section {

        padding:
            0 15px;
    }

    .hero {

        padding:
            0 15px;
    }

    .features {

        padding:
            0 15px;
    }

    .newsletter {

        padding:
            0 15px;
    }

    .hero-card {

        padding:
            30px 22px;
    }

    .hero h1 {

        font-size:
            40px;
    }

    .section-title {

        font-size:
            23px;
    }

    .products-top {

        align-items:
            flex-start;

        flex-direction:
            column;
    }

    .sort-select {

        width:
            100%;
    }

    .footer-grid {

        grid-template-columns:
            1fr;
    }

    .newsletter-form {

        flex-direction:
            column;
    }

    .newsletter-button {

        width:
            100%;
    }

    .cart-drawer {

        width:
            100%;

        right:
            -100%;
    }

    .cart-header {

        padding:
            18px;
    }

    .cart-items {

        padding:
            15px;
    }

    .cart-footer {

        padding:
            18px;
    }

    .toast {

        left:
            15px;

        right:
            15px;

        bottom:
            15px;

        max-width:
            none;

        text-align:
            center;
    }

    .back-top {

        right:
            15px;

        bottom:
            75px;
    }

}


/* =====================================================
   REDUCED MOTION
===================================================== */

@media (prefers-reduced-motion: reduce) {

    *,
    *::before,
    *::after {

        scroll-behavior:
            auto !important;

        transition:
            none !important;

        animation:
            none !important;
    }

}

</style>

</head>


<body>


<!-- =====================================================
     HEADER
===================================================== -->

<header>

    <div class="navbar">

        <a
            href="#"
            class="logo"
            aria-label="NovaShop home">

            Nova<span>Shop</span>

        </a>


        <div class="search-wrapper">

            <input
                type="search"
                id="searchInput"
                class="search-box"
                placeholder="Search products..."
                aria-label="Search products"
            >

            <span
                class="search-icon"
                aria-hidden="true">

                🔍

            </span>

        </div>


        <div class="header-actions">

            <button
                class="icon-btn"
                id="themeBtn"
                title="Toggle theme"
                aria-label="Toggle theme">

                🌙

            </button>


            <button
                class="icon-btn"
                id="wishlistBtn"
                title="Wishlist"
                aria-label="Wishlist">

                ❤️

                <span
                    class="badge"
                    id="wishlistCount">

                    0

                </span>

            </button>


            <button
                class="icon-btn"
                id="cartBtn"
                title="Shopping Cart"
                aria-label="Shopping Cart">

                🛒

                <span
                    class="badge"
                    id="cartCount">

                    0

                </span>

            </button>

        </div>

    </div>

</header>



<!-- =====================================================
     HERO
===================================================== -->

<section class="hero">

    <div class="hero-card">

        <div class="hero-content">

            <div class="hero-small">
                New Collection 2026
            </div>

            <h1>
                Upgrade Your
                Everyday.
            </h1>

            <p>

                Discover premium products designed
                for modern living. Shop technology,
                fashion, lifestyle and accessories
                at amazing prices.

            </p>

            <div class="hero-buttons">

                <button
                    class="hero-btn"
                    onclick="scrollToProducts()">

                    Shop Now →

                </button>

                <button
                    class="hero-secondary"
                    onclick="selectCategory('electronics')">

                    Explore Electronics

                </button>

            </div>

        </div>


        <div
            class="hero-decoration"
            aria-hidden="true">

            🛍️

        </div>

    </div>

</section>



<!-- =====================================================
     FEATURES
===================================================== -->

<section class="features">

    <div class="feature">

        <div class="feature-icon">
            🚚
        </div>

        <div>

            <strong>
                Fast Delivery
            </strong>

            <span>
                Quick & reliable shipping
            </span>

        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            🔒
        </div>

        <div>

            <strong>
                Secure Checkout
            </strong>

            <span>
                Safe shopping experience
            </span>

        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            ↩️
        </div>

        <div>

            <strong>
                Easy Returns
            </strong>

            <span>
                Simple return process
            </span>

        </div>

    </div>


    <div class="feature">

        <div class="feature-icon">
            ⭐
        </div>

        <div>

            <strong>
                Top Rated
            </strong>

            <span>
                Loved by our customers
            </span>

        </div>

    </div>

</section>



<!-- =====================================================
     CATEGORY SECTION
===================================================== -->

<section class="section">

    <div class="section-header">

        <div>

            <h2 class="section-title">
                Shop by Category
            </h2>

            <p class="section-subtitle">
                Find exactly what you're looking for
            </p>

        </div>

    </div>


    <div class="categories">


        <div
            class="category active"
            data-category="all">

            <div class="category-icon">
                ✨
            </div>

            <div class="category-name">
                All
            </div>

        </div>


        <div
            class="category"
            data-category="shop">

            <div class="category-icon">
                🛍️
            </div>

            <div class="category-name">
                Shop
            </div>

        </div>


        <div
            class="category"
            data-category="electronics">

            <div class="category-icon">
                💻
            </div>

            <div class="category-name">
                Electronics
            </div>

        </div>


        <div
            class="category"
            data-category="fashion">

            <div class="category-icon">
                👕
            </div>

            <div class="category-name">
                Fashion
            </div>

        </div>


        <div
            class="category"
            data-category="home">

            <div class="category-icon">
                🏠
            </div>

            <div class="category-name">
                Home
            </div>

        </div>


        <div
            class="category"
            data-category="sports">

            <div class="category-icon">
                ⚽
            </div>

            <div class="category-name">
                Sports
            </div>

        </div>


        <div
            class="category"
            data-category="accessories">

            <div class="category-icon">
                🎧
            </div>

            <div class="category-name">
                Accessories
            </div>

        </div>

    </div>

</section>



<!-- =====================================================
     PRODUCTS / SHOP
===================================================== -->

<section
    class="section"
    id="productsSection">

    <div class="shop-layout">


        <!-- FILTERS -->

        <aside class="filters">

            <div class="filter-title">
                Shop Filters
            </div>


            <div class="filter-group">

                <label for="categoryFilter">
                    Category
                </label>

                <select
                    id="categoryFilter"
                    class="filter-select">

                    <option value="all">
                        All Categories
                    </option>

                    <option value="electronics">
                        Electronics
                    </option>

                    <option value="fashion">
                        Fashion
                    </option>

                    <option value="home">
                        Home
                    </option>

                    <option value="sports">
                        Sports
                    </option>

                    <option value="accessories">
                        Accessories
                    </option>

                </select>

            </div>


            <div class="filter-group">

                <label for="priceFilter">
                    Maximum Price
                </label>

                <input
                    type="range"
                    id="priceFilter"
                    min="20"
                    max="1500"
                    value="1500"
                    step="10"
                >

                <div
                    class="range-value"
                    id="priceValue">

                    Up to $1500

                </div>

            </div>


            <div class="filter-group">

                <label for="rating
