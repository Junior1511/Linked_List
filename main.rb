require_relative "lib/linked_list"

ll = Linked_list.new
ll.append(000)
ll.append(100)
ll.append(200)
ll.append(300)
ll.append(400)
ll.append(500)
ll.append(600)
ll.size
puts ll.contains?(700)
ll.append(700)
puts ll.contains?(700)
puts ll.index(300)
puts ll.index(400)
p ll.index(800)
p ll.to_string
