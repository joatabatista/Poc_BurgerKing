class Comprar <Appium::Driver

  # ================================= SCREEN ======================================
    def initialize
      @clicar_menu = 'navigation_nav_menu'
      @clicar_banner_bkexpress = 'rellay_express'
      @btn_ok = 'btn_ok'
      @selecionar_loja = '//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[1]'
      @btn_proximo = 'button_next'
      @card_viagem = 'takeout_select'
      @card_restaurante = 'store_select'
      @banner_sobremesas = '//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[6]'
      @selecionar_casquinha_baunilha = '//android.widget.FrameLayout[6]/android.widget.RelativeLayout/android.widget.ImageView'
      @selecionar_casquinha_chocolate = '//android.widget.FrameLayout[4]/android.widget.RelativeLayout/android.widget.ImageView'
      @selecionar_casquinha_mista = '//android.widget.FrameLayout[5]/android.widget.RelativeLayout/android.widget.ImageView'
      @btn_adicionar_sacola = 'btn_add_cart'
      @btn_continuar_comprando = 'keep_buying'
      @btn_finalizar_pedido = 'finish_order'
      @add_casquinha = 'add'
      @remover_casquinha = 'remove'
      @btn_efetuar_pagamento = 'continue_buying'
      @banner_add_mais_sobremesa = 'btn_negative'
      @adicionar_cartao = 'add_card'
      @cartao_visa = '//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[1]'
      @cartao_mastercard = '//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[2]'
      @cartao_american_express = '//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[3]'
      @cartao_alelo = '//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[4]'
      @btn_continuar_pagamento = 'next_button'
      @preencher_numero_cartao = 'number_card'
      @preencher_validade = 'validate_card'
      @preencher_cvv = 'cvv_card'
      @preencher_nome_cartao = 'name_card'
      @preencher_cpf_cartao = 'document'
      @btn_pagar = 'continue_payment'
      @btn_norvamente = '//android.widget.FrameLayout[1]/android.widget.TextView'
      @btn_voltar_home = '//android.widget.FrameLayout[2]'
    end


    # ================================ METODOS =====================================
    def realizar_compra
      self.campo_bkExpress
      self.campo_loja
      self.btn_proximo_passo
      self.selecionar_banner_viagem
      self.selecionar_sobremesa
      self.selecionar_sorvete_chocolate
      self.clicar_btn_sacola
      self.clicar_btn_finalizar_pedido
      self.clicar_btn_efetuar_pagamento
      self.selecionar_banner_sobremesa
      self.selecionar_forma_de_pagamento
      self.selecionar_cartao_mastercard
      self.clicar_btn_continuar_pagamento
    end

    def finalizar_compra
      self.campo_numero_cartao
      self.campo_validade_cartao
      self.campo_cvv_cartao
      self.campo_nome_cartao
      self.campo_cpf_cartao
      self.clicar_btn_cartao
      sleep 15
    end

    def campo_bkExpress
      find_element(:id, @clicar_banner_bkexpress).click
    end

    def campo_btn_ok
      find_element(:id, @btn_ok).click
    end

    def campo_loja
      find_element(:xpath, @selecionar_loja).click
    end

    def btn_proximo_passo
      find_element(:id, @btn_proximo).click
    end

    def selecionar_banner_viagem
      find_element(:id, @card_viagem).click
    end

    def selecionar_banner_restaurante
      find_element(:id, @store_select).click
    end

    def selecionar_sobremesa
      find_element(:xpath, @banner_sobremesas).click
      sleep 2
      2.times{ Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.6, end_y: 1.5, duration: 4000).perform}
    end

    def selecionar_sorvete_baunilha
      find_element(:xpath, @selecionar_casquinha_baunilha).click
    end

    def selecionar_sorvete_chocolate
      find_element(:xpath, @selecionar_casquinha_chocolate).click
      2.times{ Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.6, end_y: 1.0, duration: 900).perform}
    end

    def selecionar_sorvete_mista
      find_element(:xpath, @selecionar_casquinha_mista).click
    end

    def clicar_btn_sacola
      find_element(:id, @btn_adicionar_sacola).click
    end

    def clicar_btn_continuar_comprando
      find_element(:id, @btn_continuar_comprando).click
    end

    def clicar_btn_finalizar_pedido
      find_element(:id, @btn_finalizar_pedido).click
    end

    def clicar_btn_add_casquinha
      find_element(:id, @add_casquinha).click
    end

    def clicar_btn_remover_casquinha
      find_element(:id, @remover_casquinha).click
    end

    def clicar_btn_efetuar_pagamento
      find_element(:id, @btn_efetuar_pagamento).click
    end

    def selecionar_banner_sobremesa
      find_element(:id, @banner_add_mais_sobremesa).click
    end

    def selecionar_forma_de_pagamento
      find_element(:id, @adicionar_cartao).click
    end

    def selecionar_cartao_visa
      find_element(:xpath, @cartao_visa).click
    end

    def selecionar_cartao_mastercard
      find_element(:xpath, @cartao_mastercard).click
    end

    def selecionar_cartao_american
      find_element(:xpath, @cartao_american_express).click
    end

    def selecionar_cartao_alelo
      find_element(:xpath, @cartao_alelo).click
    end

    def clicar_btn_continuar_pagamento
      find_element(:id, @btn_continuar_pagamento).click
    end

    def campo_numero_cartao
      find_element(:id, @preencher_numero_cartao).click
      find_element(:id, @preencher_numero_cartao).send_keys('5292050011802403')
      hide_keyboard
    end

    def campo_validade_cartao
      find_element(:id, @preencher_validade).click
      find_element(:id, @preencher_validade).send_keys('1022')
      hide_keyboard
    end

    def campo_cvv_cartao
      find_element(:id, @preencher_cvv).click
      find_element(:id, @preencher_cvv).send_keys('335')
      hide_keyboard
    end

    def campo_nome_cartao
      find_element(:id, @preencher_nome_cartao).click
      find_element(:id, @preencher_nome_cartao).send_keys('Maria Fernanda')
      hide_keyboard
    end

    def campo_cpf_cartao
      find_element(:id, @preencher_cpf_cartao).click
      find_element(:id, @preencher_cpf_cartao).send_keys('35637791805')
      hide_keyboard
    end

    def clicar_btn_cartao
      find_element(:id, @btn_pagar).click
    end

    def clicar_btn_tenta_novamente
      find_element(:xpath, @btn_norvamente).click
    end

    def clicar_btn_voltar_home
      find_element(:xpath, @btn_voltar_home).click
    end


end
