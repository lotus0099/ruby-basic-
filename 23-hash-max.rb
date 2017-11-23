# 给定一 Hash，输出有最大 value 的 key

def find_max(hash)
  # ...
  arr = hash.values
hash.each do |key, value|
      if value == arr.max
          return key
      end
  end
end

h = {
  "a" => 71,
  "b" => 38,
  "c" => 21,
  "d" => 80,
  "e" => 10
}

answer = find_max(h)

puts "有最大 value 的是 #{answer}" # 应该是 d
