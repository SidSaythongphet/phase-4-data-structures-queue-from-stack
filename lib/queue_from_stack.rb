require_relative './stack'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add value
        # Must keep @s1.peek as first in
        # Move @s1 to @s2 until empty
        @s2.push(@s1.pop) until @s1.empty?
        # Add value to @s1
        @s1.push(value)
        # Move @s2 back to @s1 until empty
        @s1.push(@s2.pop) until @s2.empty?
    end

    def remove
        # Needs to be last in stack
        @s1.pop
    end

    def peek
        # Needs to be last in stack
        @s1.peek
    end

end