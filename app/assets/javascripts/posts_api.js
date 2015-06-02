// use ajax to get the api json data
// populate the page with posts

$(document).ready(function(){
  $.ajax({
    url: 'http://localhost:3000/api/posts',
    type: 'GET',
    dataType: 'json'
  }).done(function(data) {
    $(data).each(function(index, item){
      var html = '' +
      '<article class="post">' +
        '<img src="' + item.image_url + '" alt="post image">' +
        '<div class="post__copy">' +
          '<h1>' + item.title + '</h1>' +
          '<p>' + item.excerpt + '</p>' +
        '</div>' +
      '</article>';
      $('#posts').append(html);
    });

  }).error(function(err) {
    console.log('Error:',err);
  });


});