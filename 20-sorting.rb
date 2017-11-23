# 承上题，请排序并去除重复的数字
# Hint: 可用 arr.sort 排序，和 arr.uniq 去除重复

def filter_even(arr)
  event_arr=[]
  arr.each do |n|
      if n%2==0
          event_arr<<n
      end
      end
      event_arr.sort.uniq
end

arr =  [7, 68, 42, 46, 9, 91, 77, 46, 86, 1]


puts "___#{filter_even(arr).to_s}_____" # 应该是 [42, 46, 68, 86]
