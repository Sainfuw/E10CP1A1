class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@cont = 0
  def initialize(model, year)
    super
    @@cont += 1
  end

  def self.instances
    puts "#{self} se ha instanciado #{@@cont} veces"
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

10.times { |car| Car.new(car, car) }
Car.instances
