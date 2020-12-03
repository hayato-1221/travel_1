require "./methods.rb"

# 旅行プラン配列
plans = [
  { place: "沖縄", price: 10000},
  { place: "北海道", price: 20000},
  { place: "九州", price: 15000}
]

disp_plan(plans)
chosen_plan = choose_plan(plans)
number_of_people = decide_people(chosen_plan)
calculate_total_price(chosen_plan, number_of_people)