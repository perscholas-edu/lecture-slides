// Add maximize/minimize "buttons" to parents of hljs divs
var removeClass = function(classList, className) {
    return classList.split(' ').filter(function(c){ return c !== className}).join(' ');
  }
  hs=[].slice.call(document.getElementsByClassName('hljs'))
  hs.forEach(function(el){
    var plus = document.createElement('span'), minus = document.createElement('span');
    plus.appendChild(document.createTextNode('+'));
    el.parentElement.appendChild(plus);
    plus.addEventListener('click', function(){
      // undo vertical centering on current slide:
      [].slice.call(document.getElementsByClassName('present')).forEach(function(p){p.style.top = 0});
      el.className = el.className + ' fullscreen';
      minus.style.display = 'block';
      this.style.display = 'none';});
    plus.className = 'plus';

    minus.appendChild(document.createTextNode('-'));
    el.parentElement.appendChild(minus);
    minus.addEventListener('click', function(){
      el.className = removeClass(el.className, 'fullscreen');
      plus.style.display = 'block';
      this.style.display = 'none'; });
    minus.className = 'minus';
    });