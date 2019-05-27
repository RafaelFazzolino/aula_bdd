
Quando("eu acesso a url") do
  visit('df/distrito-federal/')
  sleep(5)
end

Entao("eu verifico se estou na pagina correta") do
  expect(page).to have_current_path('https://g1.globo.com/df/distrito-federal/')
end