<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SMK Negeri Nusantara</title>
    <!-- Menghubungkan file CSS -->
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Bagian Header & Navigasi -->
    <header>
        <div class="logo">SMK Negeri Nusantara</div>
        <nav>
            <ul class="nav-links" id="nav-links">
                <li><a href="#">Beranda</a></li>
                <li><a href="#">Profil</a></li>
                <li><a href="#">Jurusan</a></li>
                <li><a href="#">Berita</a></li>
                <li><a href="#">Kontak</a></li>
            </ul>
            <!-- Ikon menu untuk tampilan HP -->
            <div class="hamburger" id="hamburger">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </nav>
    </header>

    <!-- Bagian Hero (Banner Utama) -->
    <section class="hero">
        <div class="hero-overlay"></div>
        <div class="hero-content">
            <h1>Selamat Datang di SMK Negeri Nusantara</h1>
        </div>
    </section>

    <!-- Bagian Konten Utama (Berita Terbaru) -->
    <main>
        <section class="news-section">
            <h2>Berita Terbaru</h2>
            <!-- Wadah untuk kartu berita, isinya akan dimuat lewat JavaScript -->
            <div class="news-grid" id="news-grid">
                <!-- Konten digenerate oleh script.js -->
            </div>
        </section>
    </main>

    <!-- Bagian Footer -->
    <footer>
        <p>&copy; 2023 SMK Negeri Nusantara. Semua hak dilindungi.</p>
        <div class="footer-pattern"></div>
    </footer>

    <!-- Menghubungkan file JavaScript -->
    <script src="script.js"></script>
</body>
</html>

