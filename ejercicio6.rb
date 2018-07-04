module Test
  def result
    prom = @nota1 + @nota2 / 2.0
    if prom > 4
      return 'Estudiante aprobrado'
    else
      return 'Estudiante reprobado'
    end
  end
end

module Attendance
  def student_quantity
    "Cantidad de alumnos #{quantity}"
  end
end

class Student
  include Test
  extend Attendance
  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
  def self.quantity
    @@quantity
  end
end

10.times do |student|
  alumn = Student.new(student + 1, rand(1..7), rand(1..7))
  puts alumn.result
end
puts Student.student_quantity
