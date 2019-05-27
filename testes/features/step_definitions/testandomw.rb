# login: aulabdd
# senha: senhadaaula

Quando("eu acesso a url") do
  visit('')
  click_on('CURSO')
  # sleep(2)
  click_on('Darcy Ribeiro')
  fill_in('input_filter', with: 'computação')
  click_on('CIÊNCIA DA COMPUTAÇÃO')
  click_on('FLUXO')

  @table = page.first(:xpath, '//*[@id="datatable"]').text
  # print @table
  # sleep(5)
  save_and_open_page(path = '/Users/rafaelfazzolinopintobarbosa/Desktop/resultado.txt')
end

Entao("eu verifico se estou na pagina correta") do
  # expect(page).to have_current_path('https://g1.globo.com/df/distrito-federal/')
  # sleep(3)
  expect(page).to have_link(href: '/graduacao/disciplina.aspx?cod=113034')
  # expect(@table).to include("CÁLCULO 1")
  # expect(@table).to include("INTROD SISTEMAS COMPUTACIONAIS")
  # expect(@table).to include("FUNDAMENTOS TEÓR DA COMPUTAÇÃO")
  # expect(@table).to include("BIOLOGIA CELULAR")
end