# 旅行プランを表示する
def disp_plan(plans)
  puts "旅行プランを選択してください"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}.#{plan[:place]}旅行（#{plan[:price]}円）"
  end
end
# 旅行プランを選択する
def choose_plan(plans)
  while true
    print "プランを選択 > "
    select_plan_num = gets.to_i
    break if(1..3).include?(select_plan_num)
    puts "1〜3の番号で選んでください"
  end
  plans[select_plan_num - 1]
end

# 人数を決定する
def decide_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts  "何名で予約されますか？"
  while true
    print "人数を入力 > "
    number_of_people = gets.to_i
    break if number_of_people >= 1
    puts "1人以上を選択してください"
  end
  number_of_people
end

# 合計金額を計算する
def calculate_total_price(chosen_plan, number_of_people)
  total_price = chosen_plan[:price] * number_of_people
  if number_of_people >= 5
    puts "5人以上なので10%割引となります"
    total_price *= 0.9
  end
  puts "合計料金：#{total_price.floor}円"
end