class LinkedListNode
  attr_accessor :value, :next_node
  

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def reverse_list(list, previous=nil)
    if !list
      previous
    else
      current_head = list.next_node
      list.next_node = previous
      reverse_list(current_head, list)
    end
  end

  def print_values(list_node)
    return print "nil\n" if list_node.nil?

    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

node3.print_values(node3)
puts '------------------------'
node3.print_values(node3.reverse_list(node3))