def calcit
	puts "Enter a for Advanced Mode and b for Basic Mode: "
	mode = gets.chomp.downcase
	if mode == "b"
		puts "Enter in an addition, subtraction, multiplication, or division operation as you would a calculator."
		puts "For example 1+1 or 1-1 or 1*1 or 1/1."
		puts "Enter basic operation: "
	elsif mode == "a"
		puts "Enter in an exponent or square root operation as you would a calculator."
		puts "For example 1^1 or sqrt1."
		puts "Enter advanced operation: "
	else
		puts "Invalid Mode"
    calcit()
	end
	operation=gets.chomp
  math_op=operator(operation)
	num1,num2=breakitup(operation, math_op)
  if checker(num1, num2)
    calc(num1, num2, math_op)
  else
    puts "Invalid operation"
    calcit()
  end
  choice = "c"
  puts "Enter c to Continue or anything else to Quit: "
  choice = gets.chomp.downcase
  if choice == "c"
    calcit()
  else
    exit
  end
end

def operator(operation)
  o_array=operation.chars.to_a
  o_array.each do |c|
    case c
    when "+"
      return c
    when "-"
      return c
    when "*"
      return c
    when "/"
      return c
    when "^"
      return c
    when "s"
      return c
    end
  end
  puts "Invalid mathematical operation"
  calcit()
end

def breakitup(operation, math_op)
  num1=0
  num2=0
  if math_op=="s"
    num1=0
    num2=operation[4,operation.length].to_i
  else
    o_array=operation.split(math_op)
    num1=o_array[0].to_i
    num2=o_array[1].to_i
  end
return num1,num2
end

def checker(num1, num2)
  if num1.class == Fixnum && num2.class == Fixnum
    return true
  else
    return false
  end
end

def calc(num1, num2, math_op)
	if math_op == "+"
		answer = num1 + num2
	elsif math_op == "-"
		answer = num1 - num2
	elsif math_op == "*"
		answer = num1 * num2
	elsif math_op == "/"
		answer = num1 / num2
	elsif math_op == "^"
		answer = num1 ** num2
	elsif math_op == "s" 
		answer = num2 ** 0.5
	else
		puts "Invalid operator!"
	end	
  puts answer	
end

calcit()