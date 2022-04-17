def gradingStudents(grades)
  rounded = grades.map do |grade|
    if grade < 38
      grade
    elsif grade.to_s.end_with?("3")
      grade = grade + 2
    elsif grade.to_s.end_with?("4")
      grade += 1
    elsif grade.to_s.end_with?("8")
      grade += 2
    elsif grade.to_s.end_with?("9")
      grade += 1
    else
      grade
    end
  end
  rounded.each do |grade|
    p grade
  end
end