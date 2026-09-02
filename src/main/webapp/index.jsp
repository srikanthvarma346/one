<style>
/* =========================================================
   NEXUSSHOP — MODERN PURPLE / BLUE UI
   ========================================================= */

:root {
    --bg: #f5f7ff;
    --bg-card: #ffffff;

    --primary: #15152d;
    --primary-light: #292951;

    --accent: #7c3aed;
    --accent-2: #4f46e5;
    --accent-light: #ede9fe;
    --accent-dark: #5b21b6;

    --cyan: #06b6d4;
    --pink: #ec4899;

    --muted: #686b85;
    --muted-light: #9da0b5;

    --surface: #eef0f8;

    --success: #10b981;
    --warning: #f59e0b;

    --radius: 20px;
    --radius-sm: 12px;

    --shadow:
        0 8px 30px rgba(43, 35, 90, 0.08);

    --shadow-hover:
        0 20px 50px rgba(79, 70, 229, 0.18);

    --transition: 0.3s cubic-bezier(0.4, 0, 0.2, 1);

    --container: 1240px;
}


/* =========================================================
   RESET
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
    font-family: 'Inter', system-ui, sans-serif;
    background:
        radial-gradient(circle at 10% 10%, rgba(124,58,237,.06), transparent 25%),
        radial-gradient(circle at 90% 20%, rgba(6,182,212,.05), transparent 25%),
        var(--bg);

    color: var(--primary);
    line-height: 1.5;

    -webkit-font-smoothing: antialiased;
}

a {
    color: inherit;
    text-decoration: none;
}

img {
    display: block;
    max-width: 100%;
}

button {
    cursor: pointer;
    font-family: inherit;
    border: none;
    background: none;
    color: inherit;
}

input {
    font-family: inherit;
}

.container {
    width: 100%;
    max-width: var(--container);
    margin: auto;
    padding: 0 24px;
}


/* =========================================================
   UTILITIES
   ========================================================= */

.muted {
    color: var(--muted);
}

.text-center {
    text-align: center;
}

.sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
}


/* =========================================================
   BUTTONS
   ========================================================= */

.btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;

    gap: 9px;

    padding: 13px 28px;

    border-radius: 999px;

    font-weight: 700;
    font-size: 14px;

    transition: var(--transition);

    border: 1px solid transparent;
}

.btn-primary {
    background:
        linear-gradient(135deg, var(--accent), var(--accent-2));

    color: white;

    box-shadow:
        0 8px 22px rgba(124,58,237,.28);
}

.btn-primary:hover {
    transform: translateY(-3px);

    box-shadow:
        0 14px 32px rgba(124,58,237,.38);

    filter: brightness(1.05);
}

.btn-secondary {
    background: var(--primary);
    color: white;
}

.btn-secondary:hover {
    background: var(--primary-light);
    transform: translateY(-3px);
}

.btn-outline {
    background: rgba(255,255,255,.7);
    color: var(--primary);

    border-color: rgba(124,58,237,.18);
}

.btn-outline:hover {
    background: var(--accent);
    color: white;

    border-color: var(--accent);

    transform: translateY(-2px);
}

.btn-ghost {
    background: rgba(255,255,255,.12);

    color: white;

    border-color: rgba(255,255,255,.28);

    backdrop-filter: blur(10px);
}

.btn-ghost:hover {
    background: rgba(255,255,255,.22);

    transform: translateY(-3px);
}

.btn-sm {
    padding: 8px 18px;
    font-size: 13px;
}


/* =========================================================
   HEADER
   ========================================================= */

header {
    position: sticky;

    top: 0;

    z-index: 100;

    background:
        rgba(255,255,255,.78);

    backdrop-filter: blur(20px);

    -webkit-backdrop-filter: blur(20px);

    border-bottom:
        1px solid rgba(124,58,237,.08);

    box-shadow:
        0 5px 25px rgba(30,30,80,.04);
}

.header-inner {
    display: flex;

    align-items: center;

    justify-content: space-between;

    gap: 18px;

    padding: 12px 0;

    min-height: 72px;
}


/* BRAND */

.brand {
    display: flex;

    align-items: center;

    gap: 10px;

    font-weight: 800;

    font-size: 22px;

    letter-spacing: -.7px;

    color: var(--primary);

    flex-shrink: 0;
}

.brand .accent {
    background:
        linear-gradient(
            90deg,
            var(--accent),
            var(--pink)
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.brand i {
    font-size: 26px;

    color: var(--accent);

    filter:
        drop-shadow(
            0 4px 8px rgba(124,58,237,.25)
        );
}


/* NAVIGATION */

nav.main-nav ul {
    display: flex;

    gap: 4px;

    list-style: none;

    align-items: center;
}

nav.main-nav li a {
    display: flex;

    align-items: center;

    gap: 7px;

    padding: 9px 15px;

    border-radius: 10px;

    font-weight: 600;

    font-size: 13px;

    color: var(--muted);

    transition: var(--transition);
}

nav.main-nav li a:hover,
nav.main-nav li a.active {
    color: var(--accent);

    background:
        linear-gradient(
            135deg,
            #f0eaff,
            #eef2ff
        );
}


/* HEADER ICONS */

.header-actions {
    display: flex;

    align-items: center;

    gap: 6px;
}

.header-actions .icon-btn {
    width: 42px;
    height: 42px;

    display: grid;

    place-items: center;

    border-radius: 50%;

    font-size: 17px;

    color: var(--muted);

    transition: var(--transition);

    position: relative;
}

.header-actions .icon-btn:hover {
    color: var(--accent);

    background:
        var(--accent-light);

    transform: translateY(-2px);
}


/* CART */

.cart-wrap {
    position: relative;
}

.cart-count {
    position: absolute;

    top: -3px;
    right: -3px;

    background:
        linear-gradient(
            135deg,
            var(--pink),
            var(--accent)
        );

    color: white;

    font-size: 10px;

    font-weight: 800;

    width: 20px;
    height: 20px;

    border-radius: 50%;

    display: grid;

    place-items: center;

    border: 2px solid white;

    transition: .2s;
}


/* =========================================================
   SEARCH
   ========================================================= */

.search-wrap {
    display: flex;

    align-items: center;

    background:
        rgba(238,240,248,.9);

    border-radius: 999px;

    padding: 0 16px 0 18px;

    transition: var(--transition);

    border: 2px solid transparent;

    min-width: 220px;
}

.search-wrap:focus-within {
    border-color: var(--accent);

    background: white;

    box-shadow:
        0 0 0 5px rgba(124,58,237,.10);
}

.search-wrap input {
    border: 0;

    background: transparent;

    outline: none;

    width: 100%;

    padding: 10px 0;

    font-size: 13px;

    color: var(--primary);
}

.search-wrap input::placeholder {
    color: var(--muted-light);
}

.search-wrap button {
    padding: 8px 0 8px 10px;

    color: var(--muted);

    transition: var(--transition);
}

.search-wrap button:hover {
    color: var(--accent);

    transform: scale(1.1);
}


/* =========================================================
   MOBILE BUTTON
   ========================================================= */

.mobile-toggle {
    display: none;

    width: 42px;
    height: 42px;

    border-radius: 50%;

    font-size: 19px;

    background:
        var(--accent-light);

    color: var(--accent);

    transition: var(--transition);
}

.mobile-toggle:hover {
    background: var(--accent);
    color: white;
}


/* MOBILE MENU */

#mobileMenu {
    display: none;

    background:
        rgba(255,255,255,.97);

    border-top:
        1px solid rgba(124,58,237,.08);

    padding: 12px 0 20px;
}

#mobileMenu ul {
    list-style: none;

    display: flex;

    flex-direction: column;

    gap: 4px;
}

#mobileMenu ul li a {
    display: flex;

    align-items: center;

    gap: 12px;

    padding: 13px 16px;

    border-radius: 12px;

    font-weight: 600;

    color: var(--primary);

    transition: var(--transition);
}

#mobileMenu ul li a:hover {
    color: var(--accent);

    background: var(--accent-light);
}

#mobileMenu ul li a i {
    width: 22px;

    color: var(--accent);
}


/* =========================================================
   HERO
   ========================================================= */

.hero {
    position: relative;

    display: flex;

    align-items: center;

    min-height: 500px;

    padding: 70px 0;

    border-radius: 28px;

    overflow: hidden;

    margin: 22px 24px 0;

    background:
        linear-gradient(
            120deg,
            #171533 0%,
            #30206d 45%,
            #4338ca 100%
        );

    box-shadow:
        0 25px 70px rgba(67,56,202,.22);
}


/* IMAGE */

.hero::before {
    content: '';

    position: absolute;

    inset: 0;

    background:
        url(
            'https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80'
        )
        center/cover no-repeat;

    opacity: .20;

    mix-blend-mode: screen;
}


/* GLOW */

.hero::after {
    content: '';

    position: absolute;

    width: 400px;
    height: 400px;

    right: -100px;
    top: -130px;

    background:
        radial-gradient(
            circle,
            rgba(236,72,153,.35),
            transparent 65%
        );

    filter: blur(10px);
}

.hero .container {
    position: relative;

    z-index: 2;
}

.hero .badge {
    display: inline-flex;

    align-items: center;

    gap: 7px;

    background:
        rgba(255,255,255,.10);

    color: #ddd6fe;

    border:
        1px solid rgba(255,255,255,.18);

    padding: 7px 16px;

    border-radius: 999px;

    font-weight: 700;

    font-size: 12px;

    margin-bottom: 20px;

    backdrop-filter: blur(10px);
}

.hero h1 {
    font-family: 'Playfair Display', serif;

    font-size: 54px;

    font-weight: 700;

    color: white;

    line-height: 1.1;

    max-width: 650px;

    margin-bottom: 18px;

    letter-spacing: -.5px;
}

.hero p {
    color:
        rgba(255,255,255,.78);

    font-size: 17px;

    max-width: 540px;

    margin-bottom: 30px;

    line-height: 1.7;
}

.hero .actions {
    display: flex;

    gap: 12px;

    flex-wrap: wrap;
}


/* =========================================================
   SECTIONS
   ========================================================= */

.section {
    padding: 64px 0;
}

.section-header {
    display: flex;

    align-items: flex-end;

    justify-content: space-between;

    gap: 16px;

    margin-bottom: 30px;

    flex-wrap: wrap;
}

.section-header .title-group h2 {
    font-size: 29px;

    font-weight: 800;

    letter-spacing: -.5px;
}

.section-header .title-group p {
    color: var(--muted);

    margin-top: 5px;

    font-size: 14px;
}

.section-header .view-all {
    font-weight: 700;

    color: var(--accent);

    display: flex;

    align-items: center;

    gap: 6px;

    font-size: 14px;

    transition: var(--transition);
}

.section-header .view-all:hover {
    gap: 12px;

    color: var(--accent-dark);
}


/* =========================================================
   CATEGORY CARDS
   ========================================================= */

.categories-grid {
    display: grid;

    grid-template-columns:
        repeat(6,1fr);

    gap: 16px;
}

.cat-card {
    position: relative;

    background:
        rgba(255,255,255,.85);

    border-radius: var(--radius);

    padding: 26px 16px;

    text-align: center;

    box-shadow: var(--shadow);

    transition: var(--transition);

    cursor: pointer;

    border: 1px solid rgba(124,58,237,.06);

    overflow: hidden;
}

.cat-card::before {
    content: '';

    position: absolute;

    width: 100px;
    height: 100px;

    right: -50px;
    top: -50px;

    background:
        rgba(124,58,237,.08);

    border-radius: 50%;

    transition: .4s;
}

.cat-card:hover {
    transform: translateY(-8px);

    box-shadow:
        var(--shadow-hover);

    border-color:
        rgba(124,58,237,.25);
}

.cat-card:hover::before {
    transform: scale(2.2);
}

.cat-card .icon-wrap {
    position: relative;

    width: 58px;
    height: 58px;

    border-radius: 17px;

    background:
        linear-gradient(
            135deg,
            #ede9fe,
            #e0e7ff
        );

    display: grid;

    place-items: center;

    margin: 0 auto 14px;

    font-size: 23px;

    color: var(--accent);

    transition: var(--transition);
}

.cat-card:hover .icon-wrap {
    background:
        linear-gradient(
            135deg,
            var(--accent),
            var(--accent-2)
        );

    color: white;

    transform:
        rotate(-5deg)
        scale(1.08);

    box-shadow:
        0 8px 20px rgba(124,58,237,.25);
}

.cat-card h4 {
    font-size: 14px;

    font-weight: 700;

    position: relative;
}

.cat-card .count {
    font-size: 12px;

    color: var(--muted);

    margin-top: 4px;

    position: relative;
}


/* =========================================================
   PRODUCT CARDS
   ========================================================= */

.products-grid {
    display: grid;

    grid-template-columns:
        repeat(4,1fr);

    gap: 20px;
}

.product-card {
    background:
        rgba(255,255,255,.95);

    border-radius: var(--radius);

    overflow: hidden;

    box-shadow: var(--shadow);

    transition: var(--transition);

    display: flex;

    flex-direction: column;

    border:
        1px solid rgba(124,58,237,.06);
}

.product-card:hover {
    transform:
        translateY(-9px);

    box-shadow:
        var(--shadow-hover);

    border-color:
        rgba(124,58,237,.18);
}

.product-card .img-wrap {
    position: relative;

    overflow: hidden;

    background:
        linear-gradient(
            135deg,
            #eef2ff,
            #f5f3ff
        );

    aspect-ratio: 1/1;
}

.product-card .img-wrap img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition:
        transform .5s ease;
}

.product-card:hover .img-wrap img {
    transform: scale(1.07);
}


/* PRODUCT BADGE */

.product-card .badge {
    position: absolute;

    top: 13px;
    left: 13px;

    background:
        linear-gradient(
            135deg,
            var(--accent),
            var(--pink)
        );

    color: white;

    padding: 5px 12px;

    border-radius: 999px;

    font-size: 10px;

    font-weight: 800;

    letter-spacing: .4px;

    box-shadow:
        0 5px 15px rgba(124,58,237,.22);
}

.product-card .badge.sale {
    background:
        linear-gradient(
            135deg,
            #f59e0b,
            #f97316
        );

    color: white;
}


/* WISHLIST */

.product-card .wish-btn {
    position: absolute;

    top: 12px;
    right: 12px;

    width: 38px;
    height: 38px;

    border-radius: 50%;

    background:
        rgba(255,255,255,.90);

    display: grid;

    place-items: center;

    font-size: 16px;

    color: var(--muted);

    transition: var(--transition);

    backdrop-filter: blur(8px);

    box-shadow:
        0 5px 15px rgba(0,0,0,.08);
}

.product-card .wish-btn:hover {
    background:
        #fff;

    color:
        var(--pink);

    transform:
        scale(1.12);
}


/* PRODUCT BODY */

.product-card .body {
    padding: 17px 18px 13px;

    flex: 1;

    display: flex;

    flex-direction: column;

    gap: 6px;
}

.product-card .body .category-tag {
    font-size: 10px;

    color: var(--accent);

    text-transform: uppercase;

    letter-spacing: 1px;

    font-weight: 800;
}

.product-card .body h5 {
    font-size: 15px;

    font-weight: 700;

    line-height: 1.35;

    display: -webkit-box;

    -webkit-line-clamp: 2;

    -webkit-box-orient: vertical;

    overflow: hidden;
}


/* PRICE */

.product-card .body .price-row {
    display: flex;

    align-items: center;

    gap: 9px;

    margin-top: 5px;
}

.product-card .body .price {
    font-weight: 800;

    font-size: 19px;

    color: var(--primary);
}

.product-card .body .old-price {
    color: var(--muted-light);

    text-decoration: line-through;

    font-size: 13px;
}


/* RATING */

.product-card .body .rating {
    display: flex;

    align-items: center;

    gap: 4px;

    font-size: 12px;

    color: #f59e0b;
}

.product-card .body .rating span {
    color: var(--muted);

    font-weight: 400;
}


/* ADD BUTTON */

.product-card .footer {
    padding: 0 18px 18px;

    display: flex;

    gap: 10px;
}

.product-card .footer .add-btn {
    flex: 1;

    padding: 11px;

    border-radius: 11px;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            #30305b
        );

    color: white;

    font-weight: 700;

    font-size: 13px;

    transition: var(--transition);

    display: flex;

    align-items: center;

    justify-content: center;

    gap: 8px;
}

.product-card .footer .add-btn:hover {
    background:
        linear-gradient(
            135deg,
            var(--accent),
            var(--accent-2)
        );

    transform:
        translateY(-2px);

    box-shadow:
        0 7px 18px rgba(124,58,237,.25);
}

.product-card .footer .add-btn.added {
    background:
        linear-gradient(
            135deg,
            #10b981,
            #059669
        );
}


/* =========================================================
   FLASH DEAL
   ========================================================= */

.deal-wrap {
    display: flex;

    background:
        rgba(255,255,255,.95);

    border-radius: 24px;

    overflow: hidden;

    box-shadow: var(--shadow);

    border:
        1px solid rgba(124,58,237,.08);
}

.deal-wrap .deal-img {
    flex: 0 0 48%;

    background:
        linear-gradient(
            135deg,
            #e0e7ff,
            #ede9fe
        );

    min-height: 320px;

    overflow: hidden;
}

.deal-wrap .deal-img img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .5s;
}

.deal-wrap:hover .deal-img img {
    transform: scale(1.04);
}

.deal-wrap .deal-content {
    flex: 1;

    padding: 45px;

    display: flex;

    flex-direction: column;

    justify-content: center;
}

.deal-wrap .deal-content .tag {
    display: inline-flex;

    align-items: center;

    gap: 6px;

    background:
        #fff7ed;

    color:
        #ea580c;

    padding: 6px 14px;

    border-radius: 999px;

    font-size: 11px;

    font-weight: 800;

    text-transform: uppercase;

    letter-spacing: .5px;

    align-self: flex-start;

    margin-bottom: 13px;
}

.deal-wrap .deal-content h3 {
    font-size: 30px;

    font-weight: 800;

    margin-bottom: 7px;
}

.deal-wrap .deal-content .desc {
    color: var(--muted);

    margin-bottom: 18px;
}

.deal-wrap .deal-content .price-big {
    font-size: 34px;

    font-weight: 900;

    color: var(--accent);
}

.deal-wrap .deal-content .price-big .old {
    font-size: 19px;

    font-weight: 400;

    color: var(--muted-light);

    text-decoration: line-through;

    margin-left: 10px;
}

.deal-wrap .deal-content .stock {
    font-size: 13px;

    color: var(--muted);

    margin: 5px 0 16px;
}

.deal-wrap .deal-content .stock strong {
    color: #ef4444;
}


/* TIMER */

.timer-grid {
    display: flex;

    gap: 10px;

    margin: 16px 0 22px;
}

.timer-box {
    background:
        linear-gradient(
            135deg,
            #191936,
            #29295b
        );

    color: white;

    padding: 11px 14px;

    border-radius: 13px;

    min-width: 68px;

    text-align: center;

    box-shadow:
        0 7px 20px rgba(21,21,45,.15);
}

.timer-box .num {
    font-size: 24px;

    font-weight: 800;

    line-height: 1.2;
}

.timer-box .label {
    font-size: 9px;

    opacity: .65;

    text-transform: uppercase;

    letter-spacing: .8px;
}


/* =========================================================
   TESTIMONIALS
   ========================================================= */

.testimonials-scroll {
    display: flex;

    gap: 20px;

    overflow-x: auto;

    padding: 8px 4px 18px;

    scroll-snap-type: x mandatory;
}

.testimonials-scroll::-webkit-scrollbar {
    height: 5px;
}

.testimonials-scroll::-webkit-scrollbar-thumb {
    background:
        linear-gradient(
            90deg,
            var(--accent),
            var(--pink)
        );

    border-radius: 999px;
}

.testimonial-card {
    flex: 0 0 340px;

    background:
        rgba(255,255,255,.9);

    border-radius: var(--radius);

    padding: 26px;

    box-shadow: var(--shadow);

    scroll-snap-align: start;

    transition: var(--transition);

    border:
        1px solid rgba(124,58,237,.06);
}

.testimonial-card:hover {
    transform: translateY(-5px);

    box-shadow: var(--shadow-hover);
}

.testimonial-card .stars {
    color: #f59e0b;

    font-size: 15px;

    letter-spacing: 2px;

    margin-bottom: 12px;
}

.testimonial-card blockquote {
    font-size: 14px;

    line-height: 1.7;

    color: var(--primary);

    margin-bottom: 17px;

    font-style: italic;
}

.testimonial-card .author {
    display: flex;

    align-items: center;

    gap: 12px;
}

.testimonial-card .author .avatar {
    width: 45px;
    height: 45px;

    border-radius: 50%;

    object-fit: cover;

    background: var(--surface);

    border:
        3px solid #ede9fe;
}

.testimonial-card .author .name {
    font-weight: 700;

    font-size: 13px;
}

.testimonial-card .author .role {
    font-size: 12px;

    color: var(--muted);
}


/* =========================================================
   NEWSLETTER
   ========================================================= */

.newsletter-wrap {
    position: relative;

    overflow: hidden;

    background:
        linear-gradient(
            120deg,
            #181634,
            #4c1d95,
            #4338ca
        );

    border-radius: 24px;

    padding: 52px 56px;

    color: white;

    display: flex;

    align-items: center;

    justify-content: space-between;

    gap: 32px;

    flex-wrap: wrap;

    box-shadow:
        0 20px 60px rgba(67,56,202,.20);
}

.newsletter-wrap::before {
    content: '';

    position: absolute;

    width: 250px;
    height: 250px;

    right: -70px;
    top: -100px;

    background:
        rgba(236,72,153,.25);

    border-radius: 50%;

    filter: blur(10px);
}

.newsletter-wrap .text {
    position: relative;
    z-index: 1;
}

.newsletter-wrap .text h3 {
    font-size: 27px;

    font-weight: 800;

    margin-bottom: 5px;
}

.newsletter-wrap .text p {
    opacity: .75;

    font-size: 14px;
}

.newsletter-wrap form {
    display: flex;

    gap: 10px;

    flex-wrap: wrap;

    flex: 1;

    max-width: 500px;

    position: relative;

    z-index: 1;
}

.newsletter-wrap form input {
    flex: 1;

    min-width: 200px;

    padding: 14px 20px;

    border-radius: 999px;

    border:
        1px solid rgba(255,255,255,.15);

    font-size: 14px;

    background:
        rgba(255,255,255,.10);

    color: white;

    outline: none;

    transition: var(--transition);
}

.newsletter-wrap form input::placeholder {
    color: rgba(255,255,255,.5);
}

.newsletter-wrap form input:focus {
    border-color:
        rgba(255,255,255,.6);

    background:
        rgba(255,255,255,.16);

    box-shadow:
        0 0 0 4px rgba(255,255,255,.07);
}

.newsletter-wrap form .btn {
    background:
        linear-gradient(
            135deg,
            #ec4899,
            #7c3aed
        );

    color: white;

    border: none;

    padding: 14px 28px;
}

.newsletter-wrap form .btn:hover {
    transform: translateY(-2px);

    box-shadow:
        0 8px 25px rgba(236,72,153,.3);
}

#newsletterMsg {
    margin-top: 10px;

    font-size: 13px;

    width: 100%;
}


/* =========================================================
   FOOTER
   ========================================================= */

footer {
    margin-top: 20px;

    padding: 50px 0 28px;

    background:
        rgba(255,255,255,.55);

    border-top:
        1px solid rgba(124,58,237,.08);
}

.footer-grid {
    display: grid;

    grid-template-columns:
        2fr 1fr 1fr 1fr;

    gap: 40px;

    margin-bottom: 35px;
}

.footer-grid .brand-col .brand {
    font-size: 20px;

    margin-bottom: 10px;
}

.footer-grid .brand-col p {
    color: var(--muted);

    font-size: 13px;

    max-width: 300px;

    line-height: 1.7;
}

.footer-grid .brand-col .socials {
    display: flex;

    gap: 9px;

    margin-top: 16px;
}

.footer-grid .brand-col .socials a {
    width: 39px;
    height: 39px;

    border-radius: 11px;

    background:
        var(--accent-light);

    display: grid;

    place-items: center;

    color: var(--accent);

    transition: var(--transition);
}

.footer-grid .brand-col .socials a:hover {
    background:
        linear-gradient(
            135deg,
            var(--accent),
            var(--pink)
        );

    color: white;

    transform:
        translateY(-3px);
}

.footer-grid .col h5 {
    font-weight: 800;

    font-size: 13px;

    margin-bottom: 14px;
}

.footer-grid .col ul {
    list-style: none;

    display: flex;

    flex-direction: column;

    gap: 8px;
}

.footer-grid .col ul li a {
    color: var(--muted);

    font-size: 13px;

    transition: var(--transition);
}

.footer-grid .col ul li a:hover {
    color: var(--accent);

    padding-left: 4px;
}

.footer-bottom {
    text-align: center;

    padding-top: 22px;

    border-top:
        1px solid rgba(124,58,237,.08);

    color: var(--muted-light);

    font-size: 12px;
}


/* =========================================================
   RESPONSIVE
   ========================================================= */

@media (max-width:1200px) {

    .products-grid {
        grid-template-columns:
            repeat(3,1fr);
    }

    .categories-grid {
        grid-template-columns:
            repeat(3,1fr);
    }

    .footer-grid {
        grid-template-columns:
            1fr 1fr;
    }
}


@media (max-width:992px) {

    .hero h1 {
        font-size: 42px;
    }

    .hero {
        min-height: 420px;

        margin:
            16px 16px 0;
    }

    .deal-wrap {
        flex-direction: column;
    }

    .deal-wrap .deal-img {
        flex:
            0 0 260px;
    }

    .deal-wrap .deal-content {
        padding: 32px;
    }

    .newsletter-wrap {
        padding: 35px 30px;

        flex-direction: column;

        text-align: center;
    }

    .newsletter-wrap form {
        max-width: 100%;
    }

    .search-wrap {
        min-width: 160px;
    }
}


@media (max-width:768px) {

    nav.main-nav {
        display: none;
    }

    .mobile-toggle {
        display: grid;

        place-items: center;
    }

    .products-grid {
        grid-template-columns:
            repeat(2,1fr);

        gap: 14px;
    }

    .categories-grid {
        grid-template-columns:
            repeat(2,1fr);

        gap: 12px;
    }

    .hero h1 {
        font-size: 31px;
    }

    .hero p {
        font-size: 14px;
    }

    .section {
        padding: 42px 0;
    }

    .section-header .title-group h2 {
        font-size: 23px;
    }

    .footer-grid {
        grid-template-columns: 1fr;

        gap: 25px;
    }

    .brand {
        font-size: 18px;
    }

    .brand i {
        font-size: 20px;
    }

    .search-wrap {
        min-width: 120px;

        padding:
            0 10px 0 14px;
    }

    .header-actions .icon-btn {
        width: 36px;
        height: 36px;

        font-size: 15px;
    }

    .testimonial-card {
        flex:
            0 0 280px;
    }

    .hero .actions .btn {
        padding:
            10px 20px;

        font-size: 13px;
    }
}


@media (max-width:480px) {

    .container {
        padding:
            0 14px;
    }

    .products-grid {
        grid-template-columns:
            1fr 1fr;

        gap: 10px;
    }

    .categories-grid {
        grid-template-columns:
            1fr 1fr;

        gap: 10px;
    }

    .hero {
        margin:
            10px 10px 0;

        min-height: 330px;

        padding:
            30px 0;

        border-radius:
            18px;
    }

    .hero h1 {
        font-size: 25px;
    }

    .hero p {
        font-size: 13px;

        line-height: 1.6;
    }

    .deal-wrap .deal-content {
        padding:
            23px 18px;
    }

    .deal-wrap .deal-img {
        flex:
            0 0 190px;
    }

    .newsletter-wrap {
        padding:
            27px 18px;
    }

    .newsletter-wrap .text h3 {
        font-size: 21px;
    }

    .product-card .body {
        padding:
            12px 12px 8px;
    }

    .product-card .body h5 {
        font-size: 13px;
    }

    .product-card .body .price {
        font-size: 15px;
    }

    .product-card .footer {
        padding:
            0 12px 12px;
    }

    .product-card .footer .add-btn {
        font-size: 11px;

        padding: 8px;
    }

    .timer-box {
        min-width: 46px;

        padding:
            6px 8px;
    }

    .timer-box .num {
        font-size: 16px;
    }

    .timer-box .label {
        font-size: 8px;
    }

    .cat-card {
        padding:
            17px 10px;
    }

    .cat-card .icon-wrap {
        width: 45px;
        height: 45px;

        font-size: 18px;
    }

    .cat-card h4 {
        font-size: 12px;
    }
}
</style>
