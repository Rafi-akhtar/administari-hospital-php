/* Reset Dasar */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f8f9fa;
    color: #333;
}

/* --- HEADER --- */
header {
    background-color: #727cb6; /* Warna ungu kebiruan mirip di gambar */
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 2rem;
    position: relative;
    z-index: 10;
}

.logo {
    font-size: 1.2rem;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    display: flex;
    gap: 1.5rem;
}

.nav-links li a {
    color: white;
    text-decoration: none;
    font-size: 0.9rem;
    opacity: 0.8;
    transition: opacity 0.3s ease;
}

.nav-links li a:hover {
    opacity: 1;
}

/* Hamburger Menu (Sembunyi di Desktop) */
.hamburger {
    display: none;
    cursor: pointer;
    flex-direction: column;
    gap: 4px;
}

.hamburger span {
    width: 25px;
    height: 3px;
    background-color: white;
    border-radius: 2px;
}

/* --- HERO SECTION --- */
.hero {
    position: relative;
    height: 350px;
    /* Ganti URL di bawah dengan gambar ruang kelas Anda yang sebenarnya */
    background-image: url('https://images.unsplash.com/photo-1524178232363-1fb2b075b655?q=80&w=1000&auto=format&fit=crop'); 
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
}

.hero-overlay {
    position: absolute;
    top: 0; left: 0; width: 100%; height: 100%;
    background-color: rgba(0, 0, 0, 0.4); /* Efek gelap agar teks terbaca */
}

.hero-content {
    position: relative;
    z-index: 1;
    color: white;
    text-align: center;
    padding: 0 20px;
}

.hero-content h1 {
    font-size: 2.5rem;
    font-weight: 600;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

/* --- MAIN CONTENT (BERITA TERBARU) --- */
main {
    padding: 3rem 2rem;
    max-width: 1200px;
    margin: 0 auto;
}

.news-section h2 {
    color: #4a5568;
    margin-bottom: 2rem;
    font-size: 1.5rem;
}

/* CSS Grid untuk membagi berita jadi 4 kolom di layar besar */
.news-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 2rem;
}

.news-card {
    background: transparent;
}

.news-card h3 {
    font-size: 1rem;
    color: #2d3748;
    margin-bottom: 0.5rem;
    line-height: 1.3;
}

.news-card p {
    font-size: 0.85rem;
    color: #718096;
    line-height: 1.5;
}

/* --- FOOTER --- */
footer {
    background-color: #727cb6;
    color: white;
    text-align: center;
    padding: 1.5rem;
    position: relative;
    overflow: hidden;
}

footer p {
    font-size: 0.9rem;
    opacity: 0.9;
    position: relative;
    z-index: 2;
}

/* --- RESPONSIVITAS (MEDIA QUERIES) --- */

/* Untuk Tablet / Layar Menengah (Bawah 1024px) */
@media (max-width: 1024px) {
    .news-grid {
        grid-template-columns: repeat(2, 1fr); /* Ubah ke 2 kolom */
    }
}

/* Untuk HP (Bawah 768px - Sama seperti proyeksi kiri di gambar Anda) */
@media (max-width: 768px) {
    .hamburger {
        display: flex; /* Munculkan tombol menu */
    }

    .nav-links {
        display: none; /* Sembunyikan menu bawaan */
        flex-direction: column;
        position: absolute;
        top: 60px;
        left: 0;
        width: 100%;
        background-color: #727cb6;
        padding: 1rem 0;
        text-align: center;
    }

    .nav-links.active {
        display: flex; /* Munculkan menu saat tombol ditekan */
    }

    .hero-content h1 {
        font-size: 1.8rem;
    }

    .news-grid {
        grid-template-columns: 1fr; /* Ubah ke 1 kolom (vertikal) */
    }
}
