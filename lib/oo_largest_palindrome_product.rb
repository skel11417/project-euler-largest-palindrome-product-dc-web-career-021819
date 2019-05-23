# Implement your object-oriented solution here!


class LargestPalindromeProduct

  def is_palindrome?(num)
    num_str = num.to_s
    i = 0
    while i < (num_str.length / 2)
      if num_str[i] != num_str[-(i+1)]
        return false
      end
      i += 1
    end
    return true
  end

  def answer
    (9801..999801).reverse_each do |num|
      if is_palindrome?(num)
        (100..999).reverse_each do |smaller_num|
          if num % smaller_num == 0
            if (num/smaller_num).to_s.length == 3
              return num
            end
          end
        end
      end
    end
  end
end
