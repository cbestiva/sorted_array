class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each {|elem| self.add(elem)}
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?


  end


  def add(new_elem)
    # Hint: Use the Array#insert method.
    @internal_arr.insert(first_larger_index(new_elem, 0, @internal_arr.size), new_elem)
    # raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    return @internal_arr[index]
    # raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
      if start_ind >= end_ind then return 0 end
         if (end_ind - start_ind) == 1
            if target < @internal_arr[start_ind]
               return start_ind
            else return end_ind
            end
         end

     mid_index = (start_ind + end_ind) / 2 
     mid_element = @internal_arr[mid_index]
     if mid_element == target
      return mid_index
     # elsif start_ind >= end_ind
     #   return end_ind
     elsif mid_element > target
       return first_larger_index(target, start_ind, mid_index)
     elsif mid_element < target
       return first_larger_index(target,mid_index, end_ind)
     end 
    # raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    return @internal_arr.index(target) 
    # raise NotImplementedError.new("You need to implement the index method!")
  end
end
