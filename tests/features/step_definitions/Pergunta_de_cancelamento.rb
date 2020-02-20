Dado("que eu quero cancelar e esteja no site neon") do
    @cancela_conta = Cancelar_conta.new
    @cancela_conta.load
  end
  Quando("na area de perguntas questionar: Quero cancelar minha conta. Como faço?") do
    @cancela_conta.clicar_em_perguntas
    @cancela_conta.faz_pergunta
    sleep(3)
  end

  Entao("o site retorna um campo com o procedimento necessario") do
  @cancela_conta.clica_opcao_pergunta
  sleep(3)
  expect(page.has_text?('Para cancelar sua conta basta logar no app, clicar em:'))
end