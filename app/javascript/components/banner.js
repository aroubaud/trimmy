import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Trim", "Shampoo", "Coloring"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
