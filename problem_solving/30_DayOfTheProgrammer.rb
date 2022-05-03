year = 2016

def dayOfProgrammer(year)
  non_leap = [31, 28, 31, 30, 31, 30, 31, 31].sum #end of august
  leap = [31, 29, 31, 30, 31, 30, 31, 31].sum
  special = [31, 15, 31, 30, 31, 30, 31, 31].sum
  if year == 1918
    special = 256 - special
    return "#{special}.09.#{year}"
  elsif year < 1918 && year % 4 == 0
    leap = 256 - leap
    return "#{leap}.09.#{year}"
  elsif (year > 1918 && year % 400 == 0) || (year > 1918 && year % 4 == 0 && year % 100 != 0)
    leap = 256 - leap
    return "#{leap}.09.#{year}"
  else
    non_leap = 256 - non_leap
    return "#{non_leap}.09.#{year}"
  end
end

p dayOfProgrammer(year)