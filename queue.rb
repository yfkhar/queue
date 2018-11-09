queue = Queue.new

# Producer
producer = Thread.new do
  5.times do |i|
    sleep rand(i)
    queue.enq i
    puts "#{i} produced"
  end
end

p queue.length


# Consumer
consumer = Thread.new do
  5.times do |i|
    value = queue.deq
    sleep rand(i)
    puts "consumed #{value}"
  end
end

p queue.length
