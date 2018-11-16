import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Haircut", "Shampoo and haircut", "Wash and blow dry", "Grooming", "Extensions", "Coloring"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
