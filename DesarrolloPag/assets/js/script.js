
const scrollTopButton = document.getElementById('scrollTopButton');
const economicPackageCard = document.getElementById('economic-package-card');
const regularPackageCard = document.getElementById('regular-package-card');
const premiumPackageCard = document.getElementById('premium-package-card');
const menu = document.querySelector("#menu");
const btnOpenMenu = document.querySelector("#btnOpenMenu");
const btnCloseMenu = document.querySelector("#btnCloseMenu");


document.addEventListener('DOMContentLoaded', () => {

    window.addEventListener('scroll', () => {
        if (window.scrollY > 300) { 
          scrollTopButton.style.display = 'block';
        } else {
          scrollTopButton.style.display = 'none';
        }
      });
      
      scrollTopButton.addEventListener('click', () => {
        window.scrollTo({
          top: 0,
          behavior: 'smooth'
        });
      });


      //Menú
      btnOpenMenu.addEventListener("click", () =>{
        menu.classList.add("visible")
      })

      btnCloseMenu.addEventListener("click", () =>{
        menu.classList.remove("visible")
      })

      economicPackageCard.addEventListener('click', () => {
        const target = document.getElementById('economic-package');
        const offset = -100; 
    
        window.scrollTo({
            top: target.getBoundingClientRect().top + window.scrollY + offset,
            behavior: 'smooth'
        });
    });


    regularPackageCard.addEventListener('click', () => {
        const target = document.getElementById('regular-package');
        const offset = -100; 
    
        window.scrollTo({
            top: target.getBoundingClientRect().top + window.scrollY + offset,
            behavior: 'smooth'
        });
    });

    premiumPackageCard.addEventListener('click', () => {
        const target = document.getElementById('premium-package');
        const offset = -100; 
    
        window.scrollTo({
            top: target.getBoundingClientRect().top + window.scrollY + offset,
            behavior: 'smooth'
        });
    });


    });


//Gallery
const track = document.querySelector('.carousel-track');
const slides = Array.from(track.children);
const prevButton = document.querySelector('.carousel-btn.prev');
const nextButton = document.querySelector('.carousel-btn.next');

const slideWidth = slides[0].getBoundingClientRect().width;

// Alinear las imágenes una al lado de la otra
slides.forEach((slide, index) => {
  slide.style.left = slideWidth * index + 'px';
});

const moveToSlide = (track, currentSlide, targetSlide) => {
  track.style.transform = `translateX(-${targetSlide.style.left})`;
};

prevButton.addEventListener('click', () => {
  const currentSlide = track.querySelector('.current-slide') || slides[0];
  const prevSlide = currentSlide.previousElementSibling || slides[slides.length - 1];

  currentSlide.classList.remove('current-slide');
  prevSlide.classList.add('current-slide');

  moveToSlide(track, currentSlide, prevSlide);
});

nextButton.addEventListener('click', () => {
  const currentSlide = track.querySelector('.current-slide') || slides[0];
  const nextSlide = currentSlide.nextElementSibling || slides[0];

  currentSlide.classList.remove('current-slide');
  nextSlide.classList.add('current-slide');

  moveToSlide(track, currentSlide, nextSlide);
});