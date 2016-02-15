module.exports = (robot) ->
  robot.hear /おはよう/i, (msg) ->
  	d = new Date
  	hour = (d.getHours() + 9 + 24) % 24
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
      msg.send str + "といっても外は真っ暗ですが(^^;)\n" + end
      
  robot.hear /おやすみ|お休み/i, (msg) ->
    msg.send "おやすみなさい。しっかり休んでくださいね。"

  robot.hear /こんにちは/i, (msg) ->
    username = msg.message.user.name
    msg.send username + " さん、こんにちは。"
    
  robot.hear /^(@?oguchisan\s*)+(い?ま?|今?)+(じかん|時間|何時|なんじ)/i, (msg) ->
    d = new Date
    hour = (d.getHours() + 9 + 24) % 24
    minute = d.getMinutes()
    second = d.getSeconds()
    msg.send "#{hour}時 #{minute}分 #{second}秒 です。"

#  robot.adapter.on 'connected', () ->
#    robot.send room: 'dev_oguchisan', "再起動中… あとでスクリプトを読み込んでください。"
