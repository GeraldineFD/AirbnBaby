import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Voyagez sereinement !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

