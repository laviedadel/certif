// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import "home"
import feather from 'feather-icons';

document.addEventListener('turbo:load', () => {
  feather.replace();
});
