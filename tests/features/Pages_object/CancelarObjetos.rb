class Cancelar_conta < SitePrism::Page
set_url '/'

element :clicar_pergunta, 'a[href="/perguntas"]'
element :campo_busca, '#txtBusca'
element :clica_opcao_pergunta, 'a[href="perguntas/artigo/360019117253-strongquerostrong-strongcancelarstrong-strongminhastrong-conta-strongcomostrong-strongfaostrong"]'

#clica botao perguntas
    def clicar_em_perguntas
        clicar_pergunta.click
    end
 
#faz a pergunta e faz evento clique para que a opcao seja exibida
    def faz_pergunta
       campo_busca.set('Quero cancelar minha conta. Como faço?').click
    end
#clica na opçao fornecida
    def clica_na_opcao_da_pergunta
        clica_opcao_pergunta.click
    end
end