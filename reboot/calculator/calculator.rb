def calculator(first_number, second_number, operation)
  if operation == "+"
    return  result = first_number + second_number
  elsif operation == "*"
    return  result =first_number * second_number
  elsif operation == "-"
    return  result = first_number - second_number
  elsif operation == "/"
    return  result = first_number / second_number.to_f
  end
end
