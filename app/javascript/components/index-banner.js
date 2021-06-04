import Typed from 'typed.js';

const dynamicBannerText = () => {
  new Typed ('#banner-typed-text', {
    strings: ["The Greatest Movie List Ever!", "Your Lists! "],
    typeSpeed: 40,
    loop: true
  });
}

export { dynamicBannerText };
