require "csv"

puts "1(新規でメモ作成) 2(既存のメモを編集する)"

memo_type = gets.to_i #１か２の入力待機


if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp #ファイル名の入力待機
  
  puts "メモしたい内容を入力してください。"
  puts "完了したらctrl+Dを入力してください。"
  input_memo = $stdin.read #内容入力待機
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{input_memo}"]
end  
elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  
  puts "編集したい内容を入力してください。"
  puts "完了したらctrl+Dを入力してください。"
  input_memo = $stdin.read
  CSV.open("#{file_name}.csv","a") do |csv|
    csv << ["#{input_memo}"]
end    
else
  puts "?????"
end
