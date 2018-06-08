defprotocol Temperature do
  # Convert Kelvin e Fahrenheit para Celsius
  def to_celsius(degree)
end

defimpl Temperature, for: Kelvin do

  def to_celsius(kelvin) do
    celsius_degree = kelvin.degree - 273.15
    %Celsius{degree: celsius_degree}
  end
end

defimpl Temperature, for: Fahrenheit do
  
  def to_celsius(fahrenheit) do
    celsius_degree = (fahrenheit.degree - 32) * 5 / 9
    %Celsius{degree: celsius_degree}
  end
end