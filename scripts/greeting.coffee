module.exports = (robot) ->
  robot.hear /おはよう/i, (msg) ->
  	d = new Date
  	hour = (d.getHours() + 9) %% 24
  	minute = d.getMinutes()
  	second = d.getSeconds()
  	str = "おはようございます。"
  	end = "今日も一日頑張りましょう。"
  	if hour < 7
  	  msg.send str + "\nだいぶ早起きですね。" + end
    else if hour < 12 
  		# 午前中
    	msg.send str + "\n清々しい朝ですね。" + end
    else if hour < 17
    	# 午後
    	msg.send str + "\nゆっくり眠れましたか？" + end
    else 
      msg.send str + "\nといっても外は真っ暗ですが(^^;)" + end
      
  robot.hear /おやすみ/i, (msg) ->
    msg.send "おやすみなさい。しっかり休んでくださいね。"

  robot.hear /こんにちは/i, (msg) ->
    username = msg.message.user.name
    msg.send username + " さん、こんにちは。"
    

  robot.adapter.on 'connected', () ->
    robot.send room: 'room_fuminashi', "再起動中… あとでスクリプトを読み込んでください。"
