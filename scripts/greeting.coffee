module.exports = (robot) ->
  robot.respond /おは/i, (msg) ->
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

  robot.respond /おやすみ?|お休み/i, (msg) ->
    msg.send "おやすみなさい。しっかり休んでくださいね。"

  robot.respond /こんにち(は|わ)/i, (msg) ->
    username = msg.message.user.name
    msg.send username + " さん、こんにちは。"

  robot.respond /こんばん(は|わ)/i, (msg) ->
    username = msg.message.user.name
    str = username + " さん、こんばんは。"
    d = new Date
    hour = (d.getHours() + 9 + 24) % 24
    if hour < 5 or hour > 16
      msg.send str
    else
      msg.send str + "\n... こんばんは？(^^;)"

  robot.respond /(い?ま?|今?)+(じかん|時間|何時|なんじ)/i, (msg) ->
    d = new Date
    hour = (d.getHours() + 9 + 24) % 24
    minute = d.getMinutes()
    second = d.getSeconds()
    msg.send "#{hour}時 #{minute}分 #{second}秒 です。"
    
  robot.respond /なんで.*で?す?か?？$/i, (msg) ->
    msg.send "...なんでしょうね。(^^;)"

  robot.respond /どうして.*で?す?か?？$/i, (msg) ->
    msg.send "...どうしてでしょうね。(^^;)"

  robot.respond /頑張|がんば|ガンバ/i, (msg) ->
    msg.send "一緒に頑張りましょう！"

  robot.respond /疲れ|つかれ|つらい|辛い|しんど|(死|氏|市|士|私|し)に(たい|鯛|体|帯)|sh?initai/i, (msg) ->
    username = msg.message.user.name
    str = username + " さんなら大丈夫ですよ！"
    hagemashi = [
    	      "大丈夫ですか？時には休憩も重要です。"
	      "走ると嫌なことを考えなくてすみますよ。(^^;)"
	      "もうちょっとだけ頑張りましょう！"
	      "一生懸命やれば結果は付いてきます！\nもうちょっとだけ頑張りましょう。"
	      "気分転換をしてはいかがでしょう。(^^;)"
	      str
	      ]
	      msg.send msg.random hagemashi

  robot.respond /(かなし|悲し|寂し|淋し|こわ|怖)(い|み)/i, (msg) ->
    msg.send "大丈夫ですか？　甘いものを食べて、元気出してくださいね。"

  robot.respond /(分か|わか)(ら|ん)/i, (msg) ->
    msg.send "そうですね、周りの人に助けを求めてみましょう。"

  robot.hear "小口|おぐち|先生|せんせ|センセ|oguchi", (msg) ->
    ret = [
      1
      2
      3
      4
      5
      6
      7
      8
      9
      0
    ]
    i = msg.random ret
    if (i is 1) then msg.send "呼びました？(^^;)"

#  robot.adapter.on 'connected', () ->
#    robot.send room: 'dev_oguchisan', "再起動中… あとでスクリプトを読み込んでください。"
