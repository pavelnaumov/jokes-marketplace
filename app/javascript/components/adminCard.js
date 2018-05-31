function clickOnButtonArrowToEditAndDelete() {
  const cards = document.querySelectorAll('.joke-card');

  cards.forEach((card) => {
    const menuArrow = card.querySelector('.arrow');
    const edit = card.querySelector('.edit');
    const destroy = card.querySelector('.delete');
    if (menuArrow) {
      menuArrow.addEventListener('click', (event) => {
        event.currentTarget.classList.toggle('arrow-flipped');
        edit.classList.toggle('edit-appears');
        destroy.classList.toggle('delete-appears');
    // icons.forEach(icon => {
    //   icon.classList.toggle('icon-appears');
    //   icon.classList.toggle('icons');
    // })
  });
    }
  });
}

function mouseoverEditAndDelete() {
  const cards = document.querySelectorAll('.joke-card');  // gets all the cards (an array), I don't know what class are you using

  cards.forEach((card) => {
    const edit = card.querySelector('.edit');
    const destroy = card.querySelector('.delete');
    const editText = card.querySelector('.edit-text');
    const deleteText = card.querySelector('.delete-text');
    if (edit && destroy) {
      edit.addEventListener('mouseout', (event) => {
        editText.classList.toggle('edit-mouseover');
      });

      destroy.addEventListener('mouseout', (event) => {
        deleteText.classList.toggle('delete-mouseover');
      });
    }
  });

}

export { clickOnButtonArrowToEditAndDelete };
export { mouseoverEditAndDelete };
