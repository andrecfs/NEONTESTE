class Conferelista_obj < SitePrism::Page
#set_url '/cadastro?etapa=1'

#clica botao confere lista
    def clicar_Confere_lista
       click_on('Conferir a lista')
    end


#muda foco da aba
    def muda_aba
        window = page.driver.browser.window_handles
        if window.size > 1 
        page.driver.browser.switch_to.window(window.first)
        page.driver.browser.close
        page.driver.browser.switch_to.window(window.last)      
        end
    end
end