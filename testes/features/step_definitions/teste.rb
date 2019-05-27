
Quando("eu somo {int} + {int}") do |value1, value2|
  @soma = value1 + value2
end

Entao("o resultado tem que ser {int}") do |resultado|
  expect(@soma).to eq resultado
end