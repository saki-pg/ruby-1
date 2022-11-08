 require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
 puts "1(新規でメモを作成する) 2(既存のメモを編集する) 他(終了)"
 
 memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
 
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
  
  puts "メモ入力"
  puts "Ctrl + Dで保存"
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv.puts ["#{memo}"]
  end
  
  
elsif memo_type == 2
  puts "編集したい拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
   
  puts "メモを編集"
  puts "Ctrl + Dで保存"
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv","a") do |csv|
    csv.puts ["#{memo}"]
  end

else
  puts "終了"
end

