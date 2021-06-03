index = ["以下より行う操作を選んでください","1:ブログを作成する","2:作成されたブログを見る","3:ブログアプリを終了する"]
index.each do |content|
  puts content
end
number = gets.to_i
