class Doc_obj < SitePrism::Page
#set_url '/cadastro?etapa=2'

element :verifica_documentos, '#signup-documents-panel-content-2'
element :documentos_necessarios, '#signup-documents-panel-content-2-label'

#clica botao confere lista
    def clicar_documentos_necessarios
        documentos_necessarios.click
    end

    def texto_resposta
        verifica_documentos.text
    end
   
    
end