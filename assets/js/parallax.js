window.addEventListener('scroll', function() {
    var parallaxImage = document.querySelector('.parallax-image');
    var scrolled = window.pageYOffset;
    parallaxImage.style.transform = 'translateY(' + scrolled * 0.6 + 'px)';
  });