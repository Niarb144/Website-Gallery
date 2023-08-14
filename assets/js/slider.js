const cardSlider = document.querySelector('.card-slider');
let isDown = false;
let startX;
let scrollLeft;
//let slideIndex = 0;

cardSlider.addEventListener('mousedown', (e) => {
  isDown = true;
  startX = e.pageX - cardSlider.offsetLeft;
  scrollLeft = cardSlider.scrollLeft;
});

cardSlider.addEventListener('mouseleave', () => {
  isDown = false;
});

cardSlider.addEventListener('mouseup', () => {
  isDown = false;
});

cardSlider.addEventListener('mousemove', (e) => {
  if (!isDown) return;
  e.preventDefault();
  const x = e.pageX - cardSlider.offsetLeft;
  const walk = (x - startX) * 3;
  cardSlider.scrollLeft = scrollLeft - walk;
});

//automatic scrolling
/*function showSlides() {
  const slides = cardSlider.getElementsByClassName('card');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  slideIndex++;
  if (slideIndex > slides.length) {
    slideIndex = 1;
  }
  slides[slideIndex - 1].style.display = 'block';
  setTimeout(showSlides, 3000); // Change slide every 3 seconds
}

showSlides();*/