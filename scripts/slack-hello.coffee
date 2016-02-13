module.exports = (robot) ->
  robot.hear /@oguchisan Hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username