const galleryItems = document.querySelectorAll('.gallery-item');
    
galleryItems.forEach((item) => {
  item.addEventListener('click', () => {
    item.classList.toggle('active');
  });
});