function rotateCards() {
  const cards = document.querySelectorAll('.joke-card');


  cards.forEach((card) => {


    const menuArrow = card.querySelector('.arrow');
    const backArrow = card.querySelector('.back-arrow');


    const front = card.querySelector('.front');
    const back = card.querySelector('.back');


    if (menuArrow) {
      menuArrow.addEventListener('click', (event) => {
      console.log('worked')
        card.classList.toggle('flipped');
        card.classList.toggle('front-shadow');
        card.classList.toggle('back-shadow');
        front.classList.add('hide-front-content')
        back.classList.remove('hide-back-content')
      });
    }
    if (backArrow) {
      backArrow.addEventListener('click', (event) => {
      console.log('worked')
        card.classList.toggle('flipped');
        card.classList.toggle('back-shadow');
        card.classList.toggle('front-shadow');
        back.classList.add('hide-back-content')
        front.classList.remove('hide-front-content')
      });
    }
  })

}

export { rotateCards };
