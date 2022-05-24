def convert_temp(num, input_scale: 'celsius', output_scale: 'kelvin')
  if input_scale == 'celsius'
    fahrenheit = num * 1.8 + 32
    kelvin = num + 273.15
  elsif input_scale == 'fahrenheit'
    celsius = (num - 32) / 1.8
    kelvin = (num + 459.67) * 0.55555556
  elsif input_scale == 'kelvin'
    celsius = num - 273.15
    fahrenheit = num / 0.55555556 - 459.67
  end
  if output_scale == 'celsius'
    return celsius
  elsif output_scale == 'fahrenheit'
    return fahrenheit
  elsif output_scale == 'kelvin'
    return kelvin
  end
end

p convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin') # => 273.15
p convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit') # => 32.0