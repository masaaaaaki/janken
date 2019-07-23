def janken
	puts "[1]:グー"
	puts "[2]:チョキ"
	puts "[3]:パー"


	jibun = gets.to_i


	#ここから

	if jibun < 1 || 3 < jibun
		puts "入力された値は無効です"
		return true
	end

	jibun -= 1

	#ここまで付け足した

	aite = rand(3)
	janken = ["グー", "チョキ", "パー"]

	puts "あなたの手：#{janken[jibun]}, 相手の手：#{janken[aite]}"


	if jibun+1 == aite || (jibun == 2 && aite == 0)
		puts "勝ち"
		return false
	elsif jibun == aite
		puts "あいこで・・・"
		return true
	else
		puts "負け"
		return false
	end

end


next_game = true

puts "最初はグー、じゃんけん..."

#next_gameがtrueの時に、jankenが実行され、next_gamaが更新される

while next_game
	next_game = janken
end


