Quando("somo {int} + {int}") do |int, int2|
  @soma = int + int2
end

Entao("eu devo receber {int}") do |int|
  expect(@soma).to eq int
end

Quando("somo {float} + {float}") do |float, float2|
  @soma = float + float2
end

Entao("o resultado deve ser {float}") do |float|
  expect(@soma).to eq float
end