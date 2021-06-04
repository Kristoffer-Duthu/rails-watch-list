import Typed from 'typed.js';

const dynamicBannerText = () => {
  new Typed ('#banner-typed-text', {
    strings: ["The Greatest Movie Lists!", "Your Lists! "],
    typeSpeed: 40,
    loop: true
  });
}

export { dynamicBannerText };

