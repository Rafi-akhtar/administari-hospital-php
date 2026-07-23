const newsItems = [
  {
    title: "Introduction to Artificial Intelligence",
    desc: "Learn the basics of Artificial Intelligence and its applications in various industries."
  },
  {
    title: "Web Development with React",
    desc: "Build modern web applications using React.js and explore its powerful features."
  },
  {
    title: "Data Science Fundamentals",
    desc: "Dive into the world of Data Science and discover how to analyze and interpret data."
  },
  {
    title: "Machine Learning Algorithms",
    desc: "Explore various Machine Learning algorithms and understand their workings."
  },
  {
    title: "Introduction to Blockchain",
    desc: "Learn about Blockchain technology, its use-cases, and how it ensures secure transactions."
  },
  {
    title: "iOS App Development",
    desc: "Get started with iOS app development using Swift and create feature-rich applications."
  },
  {
    title: "Python for Data Analysis",
    desc: "Utilize Python libraries like pandas and NumPy for data manipulation and analysis."
  },
  {
    title: "Cybersecurity Best Practices",
    desc: "Learn essential cybersecurity practices to safeguard your digital assets."
  },
  {
    title: "Cloud Computing Essentials",
    desc: "Understand the fundamentals of Cloud Computing and its benefits for businesses."
  },
  {
    title: "Introduction to UX Design",
    desc: "Discover the principles of User Experience (UX) design and create intuitive user interfaces."
  }
];

// Render kartu berita ke dalam grid
function renderNews() {
  const grid = document.getElementById("newsGrid");
  if (!grid) return;

  grid.innerHTML = newsItems
    .map(
      (item) => `
      <article class="news-card">
        <h3 class="news-card-title">${item.title}</h3>
        <p class="news-card-desc">${item.desc}</p>
      </article>
    `
    )
    .join("");
}

// -------------------- Menu mobile (hamburger) --------------------
function setupNavToggle() {
  const toggle = document.getElementById("navToggle");
  const nav = document.getElementById("mainNav");
  if (!toggle || !nav) return;

  toggle.addEventListener("click", () => {
    const isOpen = nav.classList.toggle("open");
    toggle.classList.toggle("open", isOpen);
    toggle.setAttribute("aria-expanded", String(isOpen));
  });

  // Tutup menu setiap kali link diklik (khusus tampilan mobile)
  nav.querySelectorAll("a").forEach((link) => {
    link.addEventListener("click", () => {
      nav.classList.remove("open");
      toggle.classList.remove("open");
      toggle.setAttribute("aria-expanded", "false");
    });
  });
}

// -------------------- Header berubah gaya saat discroll --------------------
function setupHeaderScroll() {
  const header = document.getElementById("header");
  if (!header) return;

  const onScroll = () => {
    header.classList.toggle("scrolled", window.scrollY > 12);
  };

  onScroll();
  window.addEventListener("scroll", onScroll, { passive: true });
}

// -------------------- Highlight menu aktif sesuai posisi scroll --------------------
function setupActiveNav() {
  const links = Array.from(document.querySelectorAll(".nav-link"));
  const sections = links
    .map((link) => document.getElementById(link.dataset.section))
    .filter(Boolean);

  if (!("IntersectionObserver" in window) || sections.length === 0) return;

  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (!entry.isIntersecting) return;
        links.forEach((link) => link.classList.remove("active"));
        const activeLink = document.querySelector(
          `.nav-link[data-section="${entry.target.id}"]`
        );
        if (activeLink) activeLink.classList.add("active");
      });
    },
    { rootMargin: "-45% 0px -50% 0px", threshold: 0 }
  );

  sections.forEach((section) => observer.observe(section));
}

// -------------------- Siluet skyline dekoratif di footer --------------------
function renderSkyline() {
  const el = document.getElementById("skyline");
  if (!el) return;

  const heights = [18, 30, 14, 38, 22, 44, 16, 28, 34, 20, 40, 24, 30, 18, 36, 22, 28, 16, 32, 20, 26, 38, 18, 30];
  el.innerHTML = heights.map((h) => `<span style="height:${h}px"></span>`).join("");
}

// -------------------- Tahun berjalan otomatis di footer --------------------
function setupFooterYear() {
  const yearEl = document.getElementById("year");
  if (yearEl) yearEl.textContent = new Date().getFullYear();
}

// -------------------- Inisialisasi --------------------
document.addEventListener("DOMContentLoaded", () => {
  renderNews();
  setupNavToggle();
  setupHeaderScroll();
  setupActiveNav();
  renderSkyline();
  setupFooterYear();
});
