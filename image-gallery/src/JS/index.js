import '../CSS/styles.css';

const buttons = document.querySelectorAll('[data-carousel-btn]');
const slider = document.querySelector('[data-slider]');
const imageSlides = document.querySelectorAll('.slide');
const sliderBtns = slider.children;

for (let i = 0; i < imageSlides.length; i += 1) {
  const slideBtn = document.createElement('input');
  slideBtn.type = 'radio';
  slideBtn.name = 'radio-btn';
  slideBtn.id = `radio${i + 1}`;
  slideBtn.classList.add('radio-btn');
  slideBtn.dataset.radio = `${i}`;
  if (i === 0) slideBtn.checked = true;
  slider.appendChild(slideBtn);
}

buttons.forEach((button) => {
  button.addEventListener('click', () => {
    const offset = button.dataset.carouselBtn === 'next' ? 1 : -1;
    const slides = button
      .closest('[data-carousel]')
      .querySelector('[data-slides]');

    const activeSlide = slides.querySelector('[data-active]');
    let newIndex = [...slides.children].indexOf(activeSlide) + offset;
    if (newIndex < 0) newIndex = slides.children.length - 1;
    if (newIndex >= slides.children.length) newIndex = 0;

    sliderBtns[newIndex].checked = true;
    slides.children[newIndex].dataset.active = true;
    delete activeSlide.dataset.active;
  });
});

function updateRadios(e) {
  const activeSlide = document.querySelector('[data-active]');
  const slides = document.querySelector('[data-slides]');
  slides.children[e.target.dataset.radio].dataset.active = true;
  delete activeSlide.dataset.active;
}

const radios = document.querySelectorAll('.radio-btn');
radios.forEach((radio) => {
  radio.addEventListener('click', updateRadios);
});
