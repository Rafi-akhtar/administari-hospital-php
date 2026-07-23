/* ==========================================================
   SMK Negeri Nusantara — Stylesheet
   ========================================================== */

:root {
  --primary: #4c5fbf;
  --primary-dark: #3a4a9c;
  --primary-darker: #262f66;
  --ink: #22252e;
  --ink-soft: #5c6172;
  --bg: #ffffff;
  --bg-alt: #f6f7fb;
  --card-bg: #f1f2f8;
  --card-border: #e3e5f0;
  --radius: 10px;
  --shadow: 0 14px 30px -14px rgba(38, 45, 90, 0.28);
  --header-h: 68px;
  --font-display: "Poppins", system-ui, -apple-system, Segoe UI, sans-serif;
  --font-body: "Inter", system-ui, -apple-system, Segoe UI, sans-serif;
}

* { box-sizing: border-box; }

html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  font-family: var(--font-body);
  color: var(--ink);
  background: var(--bg);
  line-height: 1.6;
}

img { max-width: 100%; display: block; }

a { color: inherit; text-decoration: none; }

ul { list-style: none; margin: 0; padding: 0; }

section[id], footer[id] { scroll-margin-top: calc(var(--header-h) + 12px); }

/* -------------------- Header / Nav -------------------- */

.site-header {
  position: sticky;
  top: 0;
  z-index: 100;
  background: var(--primary);
  transition: box-shadow .25s ease, background-color .25s ease;
}

.site-header.scrolled {
  background: var(--primary-dark);
  box-shadow: 0 8px 20px -10px rgba(20, 24, 60, 0.45);
}

.header-inner {
  max-width: 1180px;
  margin: 0 auto;
  padding: 0.9rem 1.5rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  min-height: var(--header-h);
}

.brand {
  font-family: var(--font-display);
  font-weight: 700;
  font-size: 1.15rem;
  color: #fff;
  letter-spacing: 0.2px;
}

.main-nav ul {
  display: flex;
  gap: 1.9rem;
}

.nav-link {
  position: relative;
  display: inline-block;
  padding: 0.35rem 0.05rem;
  font-size: 0.94rem;
  font-weight: 500;
  color: rgba(255, 255, 255, 0.85);
  transition: color .2s ease;
}

.nav-link::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: -2px;
  width: 100%;
  height: 2px;
  background: #fff;
  transform: scaleX(0);
  transform-origin: left;
  transition: transform .2s ease;
}

.nav-link:hover,
.nav-link:focus-visible {
  color: #fff;
}

.nav-link.active {
  color: #fff;
  font-weight: 600;
}

.nav-link.active::after,
.nav-link:hover::after {
  transform: scaleX(1);
}

.nav-toggle {
  display: none;
  flex-direction: column;
  justify-content: center;
  gap: 5px;
  width: 40px;
  height: 40px;
  border: none;
  background: transparent;
  cursor: pointer;
  padding: 0;
}

.nav-toggle span {
  display: block;
  width: 24px;
  height: 2px;
  background: #fff;
  border-radius: 2px;
  transition: transform .25s ease, opacity .25s ease;
}

.nav-toggle.open span:nth-child(1) { transform: translateY(7px) rotate(45deg); }
.nav-toggle.open span:nth-child(2) { opacity: 0; }
.nav-toggle.open span:nth-child(3) { transform: translateY(-7px) rotate(-45deg); }

/* -------------------- Hero -------------------- */

.hero {
  position: relative;
  min-height: 58vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 3rem 1.5rem;
  overflow: hidden;
  background: linear-gradient(135deg, #4c5fbf 0%, #33469e 45%, #212a68 100%);
}

.hero::before {
  content: "";
  position: absolute;
  inset: 0;
  background-image: radial-gradient(rgba(255, 255, 255, 0.12) 1.5px, transparent 1.5px);
  background-size: 26px 26px;
  opacity: 0.7;
}

.hero-title-wrap {
  position: relative;
  z-index: 1;
  max-width: 800px;
  background: rgba(9, 13, 36, 0.45);
  backdrop-filter: blur(3px);
  padding: 1.2rem 2.25rem;
  border-radius: 8px;
}

.hero-title {
  margin: 0;
  text-align: center;
  color: #fff;
  font-family: var(--font-display);
  font-weight: 800;
  font-size: clamp(1.4rem, 4.4vw, 2.5rem);
  line-height: 1.3;
}

/* -------------------- Section shared -------------------- */

.section-eyebrow {
  text-align: center;
  text-transform: uppercase;
  letter-spacing: 1.5px;
  font-size: 0.78rem;
  font-weight: 600;
  color: var(--primary);
  margin: 0 0 0.6rem;
}

.section-heading {
  font-family: var(--font-display);
  font-weight: 700;
  font-size: clamp(1.35rem, 2.6vw, 1.75rem);
  color: var(--ink);
  margin: 0 0 2rem;
}

.section-heading--center { text-align: center; margin: 0 auto 1.1rem; max-width: 640px; }

/* -------------------- Profil -------------------- */

.profil {
  max-width: 720px;
  margin: 0 auto;
  padding: 4rem 1.5rem 3rem;
  text-align: center;
}

.profil-text {
  color: var(--ink-soft);
  font-size: 1rem;
}

/* -------------------- Jurusan -------------------- */

.jurusan {
  max-width: 1180px;
  margin: 0 auto;
  padding: 1.5rem 1.5rem 4rem;
}

.jurusan-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 1.5rem;
}

.jurusan-card {
  background: #fff;
  border: 1px solid var(--card-border);
  border-radius: var(--radius);
  padding: 1.6rem 1.4rem;
  text-align: center;
  transition: transform .2s ease, box-shadow .2s ease;
}

.jurusan-card:hover {
  transform: translateY(-4px);
  box-shadow: var(--shadow);
}

.jurusan-icon {
  display: inline-block;
  font-size: 1.8rem;
  margin-bottom: 0.75rem;
}

.jurusan-title {
  font-family: var(--font-display);
  font-size: 1rem;
  font-weight: 700;
  margin: 0 0 0.5rem;
}

.jurusan-desc {
  font-size: 0.88rem;
  color: var(--ink-soft);
  margin: 0;
}

/* -------------------- Berita -------------------- */

.news {
  background: var(--bg-alt);
  padding: 4rem 1.5rem;
}

.news-container {
  max-width: 1180px;
  margin: 0 auto;
}

.news-heading {
  font-family: var(--font-display);
  font-weight: 700;
  font-size: clamp(1.35rem, 2.6vw, 1.75rem);
  color: var(--ink);
  margin: 0 0 1.75rem;
}

.news-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
  gap: 1.5rem;
}

.news-card {
  background: var(--card-bg);
  border: 1px solid var(--card-border);
  border-radius: var(--radius);
  padding: 1.4rem 1.3rem;
  transition: transform .2s ease, box-shadow .2s ease, background-color .2s ease;
}

.news-card:hover {
  transform: translateY(-4px);
  box-shadow: var(--shadow);
  background: #fff;
}

.news-card-title {
  font-family: var(--font-display);
  font-weight: 700;
  font-size: 1rem;
  line-height: 1.35;
  margin: 0 0 0.55rem;
  color: var(--ink);
}

.news-card-desc {
  font-size: 0.87rem;
  color: var(--ink-soft);
  margin: 0;
  line-height: 1.55;
}

.news-noscript {
  color: var(--ink-soft);
  font-size: 0.9rem;
}

/* -------------------- Footer -------------------- */

.site-footer { background: var(--bg); }

.skyline {
  height: 46px;
  background: #fff;
  display: flex;
  align-items: flex-end;
  gap: 5px;
  padding: 0 6px;
  overflow: hidden;
}

.skyline span {
  flex: 1 1 auto;
  min-width: 8px;
  max-width: 28px;
  background: #dee1ef;
  border-radius: 2px 2px 0 0;
}

.footer-bottom {
  background: var(--primary-darker);
  padding: 1.1rem 1.5rem;
  text-align: center;
}

.footer-contact {
  margin: 0 0 0.35rem;
  font-size: 0.82rem;
  color: rgba(255, 255, 255, 0.75);
}

.footer-copy {
  margin: 0;
  font-size: 0.82rem;
  color: rgba(255, 255, 255, 0.9);
}

/* -------------------- Focus visibility -------------------- */

a:focus-visible,
button:focus-visible {
  outline: 2px solid #ffffff;
  outline-offset: 3px;
  border-radius: 2px;
}

.jurusan-card:focus-visible,
.news-card:focus-visible {
  outline: 2px solid var(--primary);
  outline-offset: 2px;
}

/* -------------------- Responsive -------------------- */

@media (max-width: 768px) {
  .nav-toggle { display: flex; }

  .main-nav {
    position: absolute;
    top: 100%;
    left: 0;
    right: 0;
    background: var(--primary-dark);
    max-height: 0;
    overflow: hidden;
    transition: max-height .25s ease;
  }

  .main-nav.open { max-height: 320px; }

  .main-nav ul {
    flex-direction: column;
    gap: 0;
    padding: 0.5rem 1.5rem 1rem;
  }

  .main-nav li { border-top: 1px solid rgba(255, 255, 255, 0.12); }
  .main-nav li:first-child { border-top: none; }

  .nav-link { display: block; padding: 0.85rem 0.1rem; }
  .nav-link::after { display: none; }
}

@media (max-width: 480px) {
  .hero-title-wrap { padding: 1rem 1.4rem; }
}

/* -------------------- Reduced motion -------------------- */

@media (prefers-reduced-motion: reduce) {
  html { scroll-behavior: auto; }
  * { transition-duration: 0.001ms !important; animation-duration: 0.001ms !important; }
}
