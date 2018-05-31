function extendCornerButton() {
  const cards = document.querySelectorAll('.joke-card');
  cards.forEach((card) => {
    const cornerButton = card.querySelector('.corner-button');
    const jokeBody = card.querySelector('.card-main');
    const jokeAnswer = card.querySelector('.joke-answer');


    if (cornerButton) {
    cornerButton.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle('big-corner-button');
      jokeBody.classList.toggle('card-main-hidden');
      jokeAnswer.classList.toggle('joke-answer-appear');
    });
    }
  })

}

export { extendCornerButton };
