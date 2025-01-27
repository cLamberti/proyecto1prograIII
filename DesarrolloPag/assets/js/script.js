
const scrollTopButton = document.getElementById('scrollTopButton');
const economicPackageCard = document.getElementById('economic-package-card');
const regularPackageCard = document.getElementById('regular-package-card');
const premiumPackageCard = document.getElementById('premium-package-card');



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
