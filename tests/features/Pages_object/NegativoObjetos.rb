class Negativo < SitePrism::Page
    set_url '/pejota'

    element :loginn, 'a[href="https://pejota.neon.com.br/login"]'
    element :email_id, '#login-form-email'

def acessar_conta
    loginn.click
end

def inserir_email_invalido
    email_id.set('teste@mailinator.com').click
    
end

def muda_aba
    window = page.driver.browser.window_handles
    if window.size > 1 
    page.driver.browser.switch_to.window(window.first)
    page.driver.browser.close
    page.driver.browser.switch_to.window(window.last)      
    end
end

end