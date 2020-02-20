Dado("que estou no site da neon") do
  @home = Home_obj.new
  @home.load
  end
  
  Quando("clico no botao pejota") do
    @home.urlpj.click
  end
  
  Quando("clico no botao abra sua conta") do
    @pejota = Pejota_obj.new
    @pejota.abrir_conta_pj.click
  end

  Quando("clico em conferir lista") do
    @lista = Conferelista_obj.new
    @lista.muda_aba
    sleep(3)
    @lista.clicar_Confere_lista
  end
  
  Quando("clico em Documento de identidade com foto de todos os sócios") do
    @doc = Doc_obj.new
    @doc.clicar_documentos_necessarios
  end

  Entao("verifico quais sao os documento necessario para abrir uma conta pejota") do
    @textovalido = 'São válidos os documentos RG, CNH ou RNE (no caso de estrangeiros).'
    expect(@doc.texto_resposta).to eql @textovalido
  end

  