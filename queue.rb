queue = Queue.new

# Producer
producer = Thread.new do
  5.times do |i|
    sleep rand(i)
    queue.enq i
    puts "#{i} produced"
  end
end

p producer.status

producer.join

puts "Queue.size: #{queue.size}\t Queue.closed?: #{queue.closed?}\nproducer.status: #{producer.status}"


# Consumer
consumer = Thread.new do
  loop do
    value = queue.deq(false) rescue nil
    sleep 1
    puts "consumed #{value}"
    break if queue.empty?
  end
end

consumer.join



