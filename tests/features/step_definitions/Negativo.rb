Dado("que estou no site da neon pejota") do
    @acessahome = Negativo.new
    @acessahome.load
  end
  
  Quando("clico em acessar conta") do
    @acessahome.acessar_conta
    @acessahome.muda_aba
  end
  
  Quando("coloco email incorreto no login") do
    sleep(3)
    @acessahome.inserir_email_invalido
  end
  
  Entao("verifico se o site exibe msg de informando que email é invalido") do
    expect(page.has_text?('Login inválido.'))
  end