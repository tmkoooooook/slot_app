def slot(coin, point, betCoin)

    puts "Enterを3回押す"
    gets
    puts "---------------"
    no1 = rand(1..7)
    no2 = rand(1..7)
    no3 = rand(1..7)
    puts "|#{no1}| | |\n|#{no2}| | |\n|#{no3}| | |\n"
    gets
    puts "---------------"
    no4 = rand(1..7)
    no5 = rand(1..7)
    no6 = rand(1..7)
    puts "|#{no1}|#{no4}| |\n|#{no2}|#{no5}| |\n|#{no3}|#{no6}| |\n"
    gets
    puts "---------------"
    no7 = rand(1..7)
    no8 = rand(1..7)
    no9 = rand(1..7)
    puts "|#{no1}|#{no4}|#{no7}|\n|#{no2}|#{no5}|#{no8}|\n|#{no3}|#{no6}|#{no9}|\n"
    if no1 == no4 && no1 == no7
       coin, point = Bonus(coin, point, no1, betCoin)
    end
    if no2 == no5 && no2 == no8
        coin, point = Bonus(coin, point, no2, betCoin)
    end
    if no3 == no6 && no3 == no9
        coin, point = Bonus(coin, point, no3, betCoin)
        
    end
    if no1 == no5 && no1 == no9
        coin, point = Bonus(coin, point, no1, betCoin)
        
    end
    if no3 == no5 && no3 == no7
        coin, point = Bonus(coin, point, no3, betCoin)
    end
    return coin, point
end
def Bonus(coin, point, no, betCoin)
    slot_1 = {"bonusCoin" => 30, "bonusPoint" => 30}
    slot_2 = {"bonusCoin" => 10, "bonusPoint" => 10}
    slot_3 = {"bonusCoin" => 50, "bonusPoint" => 50}
    slot_4 = {"bonusCoin" => 10, "bonusPoint" => 10}
    slot_5 = {"bonusCoin" => 30, "bonusPoint" => 30}
    slot_6 = {"bonusCoin" => 10, "bonusPoint" => 10}
    slot_7 = {"bonusCoin" => 100, "bonusPoint" => 500}
    slot_8 = {"bonusCoin" => 20, "bonusPoint" => 20}
    slot_9 = {"bonusCoin" => 20, "bonusPoint" => 20}
    case no
        when 1
            coin = coin + slot_1["bonusCoin"] * betCoin
            point = point + slot_1["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 2
            coin = coin + slot_2["bonusCoin"] * betCoin
            point = point + slot_2["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 3
            coin = coin + slot_3["bonusCoin"] * betCoin
            point = point + slot_3["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 4
            coin = coin + slot_4["bonusCoin"] * betCoin
            point = point + slot_4["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 5
            coin = coin + slot_5["bonusCoin"] * betCoin
            point = point + slot_5["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 6
            coin = coin + slot_6["bonusCoin"] * betCoin
            point = point + slot_6["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 7
            coin = coin + slot_7["bonusCoin"] * betCoin
            point = point + slot_7["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 8
            coin = coin + slot_8["bonusCoin"] * betCoin
            point = point + slot_8["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
        when 9
            coin = coin + slot_9["bonusCoin"] * betCoin
            point = point + slot_9["bonusPoint"] * betCoin
            puts "#{no}が揃いました！"
            return coin, point
    end
end
#main#
point = 0
coin = 100
bet_10 = 10
bet_30 = 30
bet_50 = 50

while true
    puts "残りコイン：#{coin}"
    puts "ポイント：#{point}"
    if coin < 10
        puts "コインがなくなりました"
        puts "終了します"
        break
    end
    for value in 0...100 do
        puts "何コイン入れますか"
        puts "1(10コイン) 2(30コイン) 3(50コイン) 4(やめとく)"
        puts "---------------"
        betCoin = gets.to_i
        if coin < 30 && betCoin == 2
            puts "コインが足りません"
        elsif coin < 50 && betCoin == 3
            puts "コインが足りません"
        else
            break
        end
    end
    if betCoin == 1
        coin -= bet_10
        betCoin = 1
    elsif betCoin == 2
        coin -= bet_30
        betCoin = 3
    elsif betCoin == 3
        coin -= bet_50
        betCoin = 5
    elsif betCoin == 4
        break
    end
    puts "残りコイン：#{coin}"
    coin, point = slot(coin, point, betCoin)
end
