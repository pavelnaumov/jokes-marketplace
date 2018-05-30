import "bootstrap";


  // const button = document.querySelector('.corner-button');

  // button.addEventListener('click', (event) => {
  //   document.querySelector('.card-main').classList.toggle('hidden');
  //   document.querySelector('.joke-answer').classList.toggle('hidden');
  //   document.querySelector('.corner-button').classList.toggle('big-corner-button');
  // });

const cards = document.querySelectorAll('.joke-card');  // gets all the cards (an array), I don't know what class are you using

cards.forEach((card) => {  // loop through each card
  const cornerButton = card.querySelector('.corner-button');  // I'm inside the card, querySelector gives me the button inside that specific card
  const jokeBody = card.querySelector('.card-main');
  const jokeAnswer = card.querySelector('.joke-answer');
  cornerButton.addEventListener('click', (event) => {  // I add the event listener to the button (I'm inside a loop, so each button of each card)
    event.currentTarget.classList.toggle('big-corner-button');
    jokeBody.classList.toggle('card-main-hidden');
    jokeAnswer.classList.toggle('joke-answer-appear');
  // other stuff you want to show/hide/move
  });  // close the event listener
})  // close the loop

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
