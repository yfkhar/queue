# queue

The Queue class implements multi-producer, multi-consumer queues. It is especially useful in threaded programming when information must be exchanged safely between multiple threads. The Queue class implements all the required locking semantics.

The class implements FIFO type of queue. In a FIFO queue, the first tasks added are the first retrieved.
source: ruby-doc.org


`pry(main)> Queue.instance_methods false`

`=> [:shift, :marshal_dump, :size, :<<, :clear, :length, :empty?, :close, :closed?, :push, :pop, :num_waiting, :enq, :deq]`

