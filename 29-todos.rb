# 简易 Todo 代办事项应用

text = File.read("todos.txt") #打开todos.txt
todos = []                    #新建空数组todos，用来保存分行后的todos.txt内容
text.each_line do |line|      #将todos.txt中的每行内容分别存入到数组todos中
  todos << line.chomp         #todos.txt中的每行内容都是数组todos的一个元素
end

todos.each_with_index do |todo, index| #遍历访问并显示todos中的每个元素序号和内容
  puts "#{index}: #{todo}"
end

while (true)
  print "请输入指令 1. add 2. remove 3. save，然后按 Enter: "
  command = gets.chomp

  if command == "add"
    print "请输入代办事项: "
    todos << gets.chomp   #将键入的内容（使用chomp去掉空格和换行符）拼接到数组todos中
    todos.each_with_index do |todo, index| #遍历访问todos数组，并显示每个元素的序号和内容
      puts "#{index}:#{todo}"
    end
    # ...
  elsif command == "remove"
    print "请输入要删除的编号: "
    todos.delete_at(gets.chomp.to_i) #将键入的内容作为序列号，删除对应序列号的数组元素
    todos.each_with_index do |todo,index| #遍历访问todos数组，并显示每个元素的序号和内容
      puts "#{index}:#{todo}"
    end
    # ...
  elsif command == "save"
    puts "存盘离开"
    target = File.open("todos.txt","w+") #打开todos.txt文件，准备写入内容
    for i in todos                       #将todos中的内容循环写入到todos.txt文档中
      target.write(i)
      target.write("\n")                 #写入换行符
    end
    target.close()                       #关闭todos.txt文件
    break;
  else
    puts "看不懂，请再输入一次"
  end
end
