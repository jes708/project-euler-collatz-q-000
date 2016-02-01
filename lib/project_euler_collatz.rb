def even_next(n)
  n / 2
end

def odd_next(n)
  (n * 3) + 1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)

    array = []
    loop do

      array << n

      if array[-1] == 1
        break
      end

      n = next_value(n)

    end

  array
end

def longest_collatz

  longest_number = 0
  longest_array_length = 0

  i = 1
  while i < 1000000
  
    n = 1000000 - i
   
    array = collatz(n)

    if array.length > longest_array_length
      longest_array_length = array.length
      longest_number = array[0]
    end

    i += 1

  end

  longest_number
end