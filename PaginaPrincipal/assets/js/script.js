
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

      document.getElementById('btnOpenMenu').addEventListener('click', () => {
        document.getElementById('menu').style.display = 'block';
      });
      document.getElementById('btnCloseMenu').addEventListener('click', () => {
        document.getElementById('menu').style.display = 'none';
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


function updateHero() {
  const title = document.getElementById('heroTitle').value;
  const text = document.getElementById('heroText').value;
  const btnText = document.getElementById('heroBtnText').value;
  if (!title || !text || !btnText) {
    alert('Por favor, llena todos los campos.');
    return;
  }

  fetch(`http://localhost:3000/hero/1`, {
    method: 'PUT',
    body: JSON.stringify({
      title,
      text,
      btnText,
    }),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  })
    .then((response) => {
      if (!response.ok) {
        throw new Error('Error al actualizar el hero');
      }
      return response.json();
    })
    .then((json) => {
      console.log('Hero actualizado:', json);
      alert('Hero actualizado con éxito');
    })
    .catch((error) => {
      console.error('Error:', error);
      alert('Ocurrió un error al actualizar el hero.');
    });
}

function getHero() {
  fetch('http://localhost:3000/hero')
      .then((response) => response.json())
      .then((hero) => {
          document.getElementById('hero_Title').innerText = hero[0].title;
          document.getElementById('hero_text').innerText = hero[0].text;
          document.getElementById('btnHero').innerText = hero[0].btnText;
      });
}
getHero();


function getFeedback() {
  fetch('http://localhost:3000/feedback')
      .then(response => response.json())
      .then(feedbacks => {
          const reviewsContainer = document.querySelector('.reviews-container');
          
          feedbacks.forEach(feedback => {
              // Crear el contenedor principal del comentario
              const reviewBoxContainer = document.createElement('div');
              reviewBoxContainer.classList.add('review-box-container');

              const reviewBox = document.createElement('div');
              reviewBox.classList.add('review-box');

              // Crear el encabezado del comentario
              const boxHeader = document.createElement('div');
              boxHeader.classList.add('box-header');

              // Crear el contenedor de la imagen de perfil
              const profileImage = document.createElement('div');
              profileImage.classList.add('profile-image');

              const img = document.createElement('img');
              img.src = feedback.image_url;
              img.alt = 'Profile';

              profileImage.appendChild(img);

              // Crear el contenedor de detalles del usuario
              const userDetails = document.createElement('div');
              userDetails.classList.add('user-details');

              const strong = document.createElement('strong');
              strong.innerText = feedback.customer_name;

              const span = document.createElement('span');
              span.innerText = feedback.social_media;

              userDetails.appendChild(strong);
              userDetails.appendChild(span);

              // Crear el contenedor del comentario
              const commentText = document.createElement('p');
              commentText.innerText = feedback.customer_comment;

              // Estructurar los elementos en el DOM
              boxHeader.appendChild(profileImage);
              boxHeader.appendChild(userDetails);
              reviewBox.appendChild(boxHeader);
              reviewBox.appendChild(commentText);
              reviewBoxContainer.appendChild(reviewBox);
              reviewsContainer.appendChild(reviewBoxContainer);
          });
      })
      .catch(error => console.error('Error al obtener comentarios:', error));
}

function addFeedback(){
  const image_url = document.getElementById('addImage').value;
  const customer_name = document.getElementById('addName').value;
  const social_media = document.getElementById('addMedia').value;
  const customer_comment = document.getElementById('addComment').value;
  if (!image_url|| !customer_name || !social_media || !customer_comment) {
    alert('Por favor, llena todos los campos.');
    return;
  }
  fetch('http://localhost:3000/feedback/', {
    method: 'POST',
    body: JSON.stringify({
      image_url,
      customer_name,
      social_media,
      customer_comment,
    }),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  })
  .then((response) => {
    if (!response.ok) {
      throw new Error('Error al agregar el comentario');
    }
    return response.json();
  })
  .then((json) => {
    console.log('Comentario agregado:', json);
    alert('Comentario agregado con éxito');
  })
  .catch((error) => {
    console.error('Error:', error);
    alert('Ocurrió un error al agregar el comentario.');
  });
}
function deleteFeedback(){
            const id = document.getElementById('deleteId').value;
            if (!id) {
                alert('Por favor ingresa un ID válido');
                return;
            }
            fetch(`http://localhost:3000/feedback/${id}`, {
                method: 'DELETE',
            })
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Error al eliminar el comentario');
                }
                alert('Comentario eliminado con éxito');
            })
            .catch((error) => {
                console.error('Error:', error);
                alert('Ocurrió un error al eliminar el comentario.');
            });
}
function loadFeedback() {
  const id = document.getElementById('updateId').value;
  if (!id) return;

  fetch(`http://localhost:3000/feedback/${id}`)
      .then(response => response.json())
      .then(data => {
          if (data) {
              document.getElementById('updateImage').placeholder = data.image_url;
              document.getElementById('updateName').placeholder = data.customer_name;
              document.getElementById('updateMedia').placeholder = data.social_media;
              document.getElementById('updateComment').placeholder = data.customer_comment;
          } else {
              alert('Comentario no encontrado.');
          }
      })
      .catch(error => {
          console.error('Error:', error);
          alert('Ocurrió un error al cargar el comentario.');
      });
}
function updateFeedback(){
  const id = document.getElementById('updateId').value;
  const image_url = document.getElementById('updateImage').value;
  const customer_name = document.getElementById('updateName').value;
  const social_media = document.getElementById('updateMedia').value;
  const customer_comment = document.getElementById('updateComment').value;
  if (!image_url|| !customer_name || !social_media || !customer_comment) {
    alert('Por favor, llena todos los campos.');
    return;
  }

  fetch(`http://localhost:3000/feedback/${id}`, {
    method: 'PUT',
    body: JSON.stringify({
      image_url,
      customer_name,
      social_media,
      customer_comment,
    }),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  })
    .then((response) => {
      if (!response.ok) {
        throw new Error('Error al actualizar el comentario');
      }
      return response.json();
    })
    .then((json) => {
      console.log('Comentario actualizado:', json);
      alert('Comentario actualizado con éxito');
    })
    .catch((error) => {
      console.error('Error:', error);
      alert('Ocurrió un error al actualizar el comentario.');
    });
}

// Llamar a la función para cargar los comentarios
getFeedback();
