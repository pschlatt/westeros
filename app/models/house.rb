class House

attr_reader :houses, :name, :id

  def initialize(data = "")
    @houses = [
      ['Stark', 'stark'],
      ['Lannister', 'lannister'],
      ['Targaryen', 'targaryen'],
      ['Tyrell', 'tyrell'],
      ['Greyjoy', 'greyjoy']
    ]
    @name = data["name"]
    @id = data["id"]
  end

end
