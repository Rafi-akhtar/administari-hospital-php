// Data berita yang disalin dari teks di dalam gambar
const newsData = [
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

// Fungsi untuk memasukkan data berita ke dalam HTML
const newsGrid = document.getElementById('news-grid');

newsData.forEach(news => {
    // Membuat elemen pembungkus untuk setiap berita
    const card = document.createElement('article');
    card.classList.add('news-card');

    // Menambahkan HTML ke dalam elemen tersebut
    card.innerHTML = `
        <h3>${news.title}</h3>
        <p>${news.desc}</p>
    `;

    // Memasukkan kartu ke dalam grid
    newsGrid.appendChild(card);
});

// Fungsi untuk Hamburger Menu (Tampilan Mobile)
const hamburger = document.getElementById('hamburger');
const navLinks = document.getElementById('nav-links');

hamburger.addEventListener('click', () => {
    // Menambah atau menghapus class 'active' untuk memunculkan/menyembunyikan menu
    navLinks.classList.toggle('active');
});
