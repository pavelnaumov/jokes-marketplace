

function clickOnBottonArrow() {
  const icons = document.querySelectorAll('.icons');
  const menuArrow = document.querySelector('.arrow');
  const edit = document.querySelector('.edit');
  const destroy = document.querySelector('.delete');

  menuArrow.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle('arrow-flipped');
    edit.classList.toggle('edit-appears');
    destroy.classList.toggle('delete-appears');
    // icons.forEach(icon => {
    //   icon.classList.toggle('icon-appears');
    //   icon.classList.toggle('icons');
    // })
  });
};

function mouseoverEditAndDelete() {
  const edit = document.querySelector('.edit');
  const destroy = document.querySelector('.delete');
  const editText = document.querySelector('.edit-text');
  const deleteText = document.querySelector('.delete-text');

  edit.addEventListener('mouseout', (event) => {
    editText.classList.toggle('edit-mouseover');
  });

  destroy.addEventListener('mouseout', (event) => {
    deleteText.classList.toggle('delete-mouseover');
  });
};

export { clickOnBottonArrow };
export { mouseoverEditAndDelete };
