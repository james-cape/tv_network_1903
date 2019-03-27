class Network

  attr_reader :name, :shows
  def initialize (name)
    @name = name
    @shows = []
  end

  def add_show(name)
    shows << name
  end

  def highest_paid_actor
    x = shows.map do |show|
      show.characters.max_by do |char|
        char.character[:salary]
      end
    end

    z = x.max_by do |y|
      y.character[:salary]
    end.character[:actor]
  end

  def payroll
    shows.sum do |show|
      show.characters.sum do |char|
        # binding.pry
        char.character[:salary]
      end
    end
# Ran out of time.
  end
end
