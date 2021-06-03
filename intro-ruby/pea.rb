a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]
def bucket_sort(arr)
bucket = []
sorted_bucket = []
max_number = arr.max + 1
max_number.times do
   bucket << []
end
arr.each do |i|
  bucket[i] << i
end
bucket.each do |e|
sorted_bucket = sorted_bucket + e
end
sorted_bucket
end
p bucket_sort(a)
p bucket_sort(b)
p bucket_sort(c)
