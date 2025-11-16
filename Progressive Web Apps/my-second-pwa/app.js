// Add this to the top of your app.js
if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
        navigator.serviceWorker.register('service-worker.js')
            .then(registration => {
                console.log('ServiceWorker registered!', registration);
            })
            .catch(error => {
                console.log('ServiceWorker registration failed:', error);
            });
    });
}

let clicks = localStorage.getItem("clicks")
const buttonClick = document.getElementById('clickMe');
const buttonReset = document.getElementById('Reset');
const display = document.getElementById('clickCount');
const clickSound = new Audio("lizard_meme.mp3");

display.textContent = `Lizard Clicks: ${clicks}`;

buttonClick.addEventListener('click', () => {
    clicks++;
    localStorage.setItem("clicks", clicks);
    display.textContent = `Lizard Clicks: ${clicks}`;

    clickSound.currentTime = 0;
    clickSound.play();
});

buttonReset.addEventListener('click', () => {
    clicks = 0;
    localStorage.setItem("clicks", clicks);
    display.textContent = `Lizard Clicks: 0`;
});