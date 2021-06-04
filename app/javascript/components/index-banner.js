import Typed from 'typed.js';

const dynamicBannerText = () => {
  new Typed ('#banner-typed-text', {
    strings: ["The Greatest Movie Lists!", "Share with your friends! "],
    typeSpeed: 40,
    loop: true
  });
}

export { dynamicBannerText };

