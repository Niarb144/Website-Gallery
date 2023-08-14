const itemsPerPage = 8; // Number of items to display per page
let currentPage = 1;
const itemContainer = document.querySelector('.image-gallery');
const paginationButtons = document.querySelectorAll('.pagination button');
const items = Array.from(itemContainer.getElementsByClassName('gallery-item'));
const numPages = Math.ceil(items.length / itemsPerPage);

function showItems(page) {
  const startIndex = (page - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  items.forEach((item, index) => {
    if (index >= startIndex && index < endIndex) {
      item.style.display = 'block';
    } else {const itemsPerPage = 8; // Number of items to display per page
    let currentPage = 1;
    const itemContainer = document.querySelector('.image-gallery');
    const paginationButtons = document.querySelectorAll('.pagination button');
    const items = Array.from(itemContainer.getElementsByClassName('gallery-item'));
    const numPages = Math.ceil(items.length / itemsPerPage);
    
    function showItems(page) {
      const startIndex = (page - 1) * itemsPerPage;
      const endIndex = startIndex + itemsPerPage;
      items.forEach((item, index) => {
        if (index >= startIndex && index < endIndex) {
          item.style.display = 'block';
        } else {
          item.style.display = 'none';
        }
      });
    }
    
    function updatePaginationButtons() {
      if (currentPage === 1) {
        paginationButtons[0].disabled = true;
      } else {
        paginationButtons[0].disabled = false;
      }
      if (currentPage === numPages) {
        paginationButtons[1].disabled = true;
      } else {
        paginationButtons[1].disabled = false;
      }
    }
    
    function changePage(delta) {
      currentPage += delta;
      if (currentPage < 1) {
        currentPage = 1;
      }
      if (currentPage > numPages) {
        currentPage = numPages;
      }
      showItems(currentPage);
      updatePaginationButtons();
    }
    
    showItems(currentPage);
    updatePaginationButtons();
      item.style.display = 'none';
    }
  });
}

function updatePaginationButtons() {
  if (currentPage === 1) {
    paginationButtons[0].disabled = true;
  } else {
    paginationButtons[0].disabled = false;
  }
  if (currentPage === numPages) {
    paginationButtons[1].disabled = true;
  } else {
    paginationButtons[1].disabled = false;
  }
}

function changePage(delta) {
  currentPage += delta;
  if (currentPage < 1) {
    currentPage = 1;
  }
  if (currentPage > numPages) {
    currentPage = numPages;
  }
  showItems(currentPage);
  updatePaginationButtons();
}

showItems(currentPage);
updatePaginationButtons();