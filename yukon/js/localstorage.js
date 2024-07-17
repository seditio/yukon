// Local Storage
const boddy = document.body;
const sidebarToggle = document.getElementById('sidebar_toggle');
const navToggle = document.getElementById('nav_toggle');
const fsToggle = document.getElementById('fs_toggle');
const clearAll = document.getElementById('clear_all');

const sidebarTitle = sidebarToggle.getAttribute('data-title').split('/', 2);
const navTitle = navToggle.getAttribute('data-title').split('/', 2);
const fsTitle = fsToggle.getAttribute('data-title').split('/', 2);

const accordions = document.querySelectorAll('.accordion-item');

document.addEventListener('DOMContentLoaded', (event) => {
  if (localStorage.getItem('yukon-sidebar') === 'on') {
    boddy.classList.toggle('sidebar-visible');
    sidebarToggle.querySelector('span').textContent = sidebarTitle[1];
  };
  if (localStorage.getItem('yukon-nav') === 'off') {
    boddy.classList.toggle('nav-hidden');
    navToggle.querySelector('span').textContent = navTitle[1];
  };
  if (localStorage.getItem('yukon-fullscreen') === 'off') {
    boddy.classList.toggle('fs-off');
    fsToggle.querySelector('span').textContent = fsTitle[1];
  };
  if (localStorage.getItem('yukon-accordion')) {
    let acc = localStorage.getItem('yukon-accordion').slice(1);
    document.getElementById(acc).classList.toggle('show');
    document.getElementById(acc).previousElementSibling.classList.toggle('collapsed');
  };
});

sidebarToggle.onclick = function(e) {
  e.preventDefault();
  this.classList.toggle('sidebar_on');
  let sidebarOn = boddy.classList.toggle('sidebar-visible');
  localStorage.setItem('yukon-sidebar', sidebarOn ? 'on' : 'off');
  sidebarToggle.querySelector('span').textContent = sidebarOn ? sidebarTitle[1] : sidebarTitle[0];
};

navToggle.onclick = function(e) {
  e.preventDefault();
  this.classList.toggle('nav_off');
  let navOff = boddy.classList.toggle('nav-hidden');
  localStorage.setItem('yukon-nav', navOff ? 'off' : 'on');
  navToggle.querySelector('span').textContent = navOff ? navTitle[1] : navTitle[0];
};

fsToggle.onclick = function(e) {
  e.preventDefault();
  this.classList.toggle('fs_off');
  let fsOff = boddy.classList.toggle('fs-off');
  localStorage.setItem('yukon-fullscreen', fsOff ? 'off' : 'on');
  fsToggle.querySelector('span').textContent = fsOff ? fsTitle[1] : fsTitle[0];
};

clearAll.onclick = function(e) {
  e.preventDefault();
  localStorage.clear();
  location.reload();
};

accordions.forEach(element => element.addEventListener('click', e => {
  localStorage.setItem('yukon-accordion', element.querySelector('.accordion-button').getAttribute('data-bs-target'));
}));
