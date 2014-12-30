$(document).ready(function() {
  var myDataRef = new Firebase('https://grandmaclud.firebaseio.com/');
  $('#messageInput').keypress(function(e) {
    if (e.keyCode == 13) {
      var name = $('#nameInput').val();
      var text = $('#messageInput').val();
      // myDataRef.set('User ' + name + ' says ' + text);
      myDataRef.push({
        name: name,
        text: text
      });
      $('#messageInput').val('');
    }
  });
  $('#messageSend').on('click', function() {
    var name = $('#nameInput').val();
    var text = $('#messageInput').val();
    // myDataRef.set('User ' + name + ' says ' + text);
    myDataRef.push({
      name: name,
      text: text
    });
    $('#messageInput').val('');
  });
  myDataRef.on('child_added', function(snapshot) {
    console.log("The message is:");
    var message = snapshot.val();
    console.log(message.name);
    console.log(message.text);

    displayChatMessage(message.name, message.text);
  });

  function displayChatMessage(name, text) {
    $('<div/>').text(text).prepend($('<em/>').text(name + '： ')).appendTo($('#messagesDiv'));
    $('#messagesDiv')[0].scrollTop = $('#messagesDiv')[0].scrollHeight;
  }
});