# 给定一个数组包含 Hash，请过滤和排序

arr = [
  { "name" => "Peter", "age" => 30 },
  { "name" => "John", "age" => 15 },
  { "name" => "David", "age" => 45 },
  { "name" => "Steven", "age" => 22 },
  { "name" => "Vincent", "age" => 6 },
]
def adult(arr)
    adArr = []
    arr.each do |a|
        if a['age'] >=18
            adArr << a
        end
    end
    return adArr.sort_by{|i| i['age']}.to_s
end
# ....

puts "所有成年人，并由小到大: #{adult(arr)}"

# 答案应该是
#[
#  { "name" => "Steven", "age" => 22 },
#  { "name" => "Peter", "age" => 30 },
#  { "name" => "David", "age" => 45 }
#]
