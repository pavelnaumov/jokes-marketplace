// function favorite() {
//   const cards = document.querySelectorAll('.joke-card');
//   cards.forEach((card) => {
//     const favoriteEmpty = card.querySelector('.non-favorite');
//     const favoriteFull = card.querySelector('.favorite');

//     if (favoriteEmpty) {
//       favoriteEmpty.addEventListener('click', (event) => {
//         event.currentTarget.classList.toggle('hidden');
//         favoriteFull.classList.toggle('hidden');
//         card.classList.toggle('non-fav');
//         card.classList.toggle('fav');
//       });
//     };

//     if (favoriteFull) {
//       favoriteFull.addEventListener('click', (event) => {
//         event.currentTarget.classList.toggle('hidden');
//         favoriteEmpty.classList.toggle('hidden');
//         card.classList.toggle('non-fav');
//         card.classList.toggle('fav');
//       });
//     }
//   });

// }

// export { favorite };
