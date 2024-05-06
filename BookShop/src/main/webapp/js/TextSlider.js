let currentIndex = 0;
const items = document.querySelectorAll('.feedback-item');
const totalItems = items.length;

function showItem(index) {
    items.forEach(item => {
        item.style.transform = `translateX(-${index * 100}%)`;
    });
}

function nextItem() {
    currentIndex = (currentIndex + 1) % totalItems;
    showItem(currentIndex);
}

function prevItem() {
    currentIndex = (currentIndex - 1 + totalItems) % totalItems;
    showItem(currentIndex);
}

setInterval(nextItem, 3000); // Auto-advance every 5 seconds (adjust as needed)