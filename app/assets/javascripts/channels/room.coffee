App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    console.log("Connected to channel")

  disconnected: ->
    console.log("Disconnected from channel")

  received: (data) ->
    console.log('received')
    $('#messages').append data['message']
    # Called when there's incoming data on the websocket for this channel

  speak: (message) ->
    @perform 'speak', message: message

  $(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
    if event.keyCode is 13 # return = send
      App.room.speak event.target.value
      event.target.value = ""
      event.preventDefault()
