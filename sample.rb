def disp_sum(price=1980, num=20)

  return "商品の購入は0以上にしてください:入力値#{num}" if num <= 0

  "#{price}円の商品を#{num}個買ったので、合計金額は#{price * num}です"
end

puts disp_sum(1980, -1)
puts disp_sum()

