<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SMK Negeri Nusantara</title>
  <meta name="description" content="Website resmi SMK Negeri Nusantara — profil sekolah, jurusan, dan berita terbaru.">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;700;800&family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="style.css">
</head>
<body>

  <header class="site-header" id="header">
    <div class="header-inner">
      <a href="#beranda" class="brand">SMK Negeri Nusantara</a>

      <button class="nav-toggle" id="navToggle" aria-label="Buka menu navigasi" aria-expanded="false" aria-controls="mainNav">
        <span></span><span></span><span></span>
      </button>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#beranda" class="nav-link active" data-section="beranda">Beranda</a></li>
          <li><a href="#profil" class="nav-link" data-section="profil">Profil</a></li>
          <li><a href="#jurusan" class="nav-link" data-section="jurusan">Jurusan</a></li>
          <li><a href="#berita" class="nav-link" data-section="berita">Berita</a></li>
          <li><a href="#kontak" class="nav-link" data-section="kontak">Kontak</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <main>
    <section class="hero" id="beranda">
      <div class="hero-title-wrap">
        <h1 class="hero-title">Selamat Datang di SMK Negeri Nusantara</h1>
      </div>
    </section>

    <section class="profil" id="profil">
      <p class="section-eyebrow">Tentang Kami</p>
      <h2 class="section-heading section-heading--center">Mencetak Lulusan Siap Kerja &amp; Siap Berkarya</h2>
      <p class="profil-text">
        SMK Negeri Nusantara adalah sekolah menengah kejuruan yang berfokus mencetak lulusan siap kerja
        di bidang teknologi. Kami memadukan kurikulum akademik dengan praktik industri agar siswa siap
        menghadapi dunia kerja maupun melanjutkan pendidikan ke jenjang yang lebih tinggi.
      </p>
    </section>

    <section class="jurusan" id="jurusan">
      <h2 class="section-heading">Program Keahlian</h2>
      <div class="jurusan-grid">
        <article class="jurusan-card">
          <span class="jurusan-icon" aria-hidden="true">💻</span>
          <h3 class="jurusan-title">Rekayasa Perangkat Lunak</h3>
          <p class="jurusan-desc">Merancang dan membangun aplikasi web maupun mobile dari nol.</p>
        </article>
        <article class="jurusan-card">
          <span class="jurusan-icon" aria-hidden="true">🌐</span>
          <h3 class="jurusan-title">Teknik Komputer &amp; Jaringan</h3>
          <p class="jurusan-desc">Instalasi, konfigurasi, dan keamanan jaringan komputer.</p>
        </article>
        <article class="jurusan-card">
          <span class="jurusan-icon" aria-hidden="true">🎬</span>
          <h3 class="jurusan-title">Multimedia</h3>
          <p class="jurusan-desc">Mengasah kreativitas di bidang desain grafis, animasi, dan video.</p>
        </article>
        <article class="jurusan-card">
          <span class="jurusan-icon" aria-hidden="true">🎨</span>
          <h3 class="jurusan-title">Desain Komunikasi Visual</h3>
          <p class="jurusan-desc">Mempelajari branding, UI/UX, dan komunikasi visual modern.</p>
        </article>
      </div>
    </section>

    <section class="news" id="berita">
      <div class="news-container">
        <h2 class="news-heading">Berita Terbaru</h2>
        <div class="news-grid" id="newsGrid">
          <!-- Kartu berita dirender otomatis oleh script.js -->
        </div>
        <noscript><p class="news-noscript">Aktifkan JavaScript untuk menampilkan daftar berita terbaru.</p></noscript>
      </div>
    </section>
  </main>

  <footer class="site-footer" id="kontak">
    <div class="skyline" id="skyline" aria-hidden="true"></div>
    <div class="footer-bottom">
      <p class="footer-contact">Jl. Pendidikan Raya No. 1, Jakarta &nbsp;•&nbsp; [email protected] &nbsp;•&nbsp; (021) 123-4567</p>
      <p class="footer-copy">&copy; <span id="year"></span> SMK Negeri Nusantara. Semua hak dilindungi.</p>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>
