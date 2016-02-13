# from ochapro/scripts/kaomoji.coffee 
module.exports = (robot) ->
  robot.respond /kaomoji/i, (msg) ->
    msg.send msg.random ["(^^;)",
       "（*・ω・*）",
			 "Σd(≧▽≦*)",
			 "(*^o^)／＼(^-^*)",
			 " (=U･ω･U=)",
			 "☆（ゝω・）",
			 "(((o(＞△＜;)o)))",
			 "⊂⌒っ*-ω-)っＺｚｚ…",
			 "ヾ(⌒(ﾉ*･ω･)ﾉ♡",
			 "☆≡☆≡☆ヽ(>ω･ゝ)",
			 "(っ･ω･)⊃≡☆≡☆≡☆",
			 "ショボン玉( ´･ω・)y━。o ○(´・ω・`)ｼｮﾎﾞｰﾝ･･･",
			 "Σ―(〃ω〃)♡→",
			 "||・ω・*）",
			 "(((o((〃△〃≡〃△〃)o)))",
			 "♡(∩＞ω＜∩)",
			 "☆*｡o(＞ω＜)o｡*☆",
			 "+｡ヾ(*・ω・*)ﾉﾞ｡+ﾟ",
			 "(ﾉ)・ω・(ヾ)",
			 "o< ・ω・ >o",
			 "(((・ω・)))"]

  robot.adapter.on 'connected', () ->
    robot.send room: 'room_fuminashi', "再起動中… あとでスクリプトを読み込んでください。"
