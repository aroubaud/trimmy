import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Hair cut", "Shampoo and hair cut", "Wash and blow dry", "Grooming", "Extensions", "Coloring"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
