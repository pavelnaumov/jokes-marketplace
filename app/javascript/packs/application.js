import "bootstrap";


  // const button = document.querySelector('.corner-button');

  // button.addEventListener('click', (event) => {
  //   document.querySelector('.card-main').classList.toggle('hidden');
  //   document.querySelector('.joke-answer').classList.toggle('hidden');
  //   document.querySelector('.corner-button').classList.toggle('big-corner-button');
  // });

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { extendCornerButton } from '../components/card';
extendCornerButton();


import { clickOnButtonArrowToEditAndDelete } from '../components/adminCard';
clickOnButtonArrowToEditAndDelete();


import { mouseoverEditAndDelete } from '../components/adminCard';
mouseoverEditAndDelete();


// import { rotateCards } from '../components/rotateCard';
// rotateCards();

import { favorite } from '../components/favorite';
favorite();
