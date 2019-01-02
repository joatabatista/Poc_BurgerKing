class Comprar <Appium::Driver

  # ================================= SCREEN ======================================
    def initialize
      @clicar_menu = 'navigation_nav_menu'
      @clicar_banner_bkexpress = 'rellay_express'
      @btn_ok = 'btn_ok'
      @selecionar_loja = '//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[1]'
      @btn_proximo = 'PRÓXIMO'
      @card_viagem = 'takeout_select'
      @card_restaurante = 'store_select'
      @banner_sobremesas = 'SOBREMESAS'
      @selecionar_casquinha_baunilha = 'CASQUINHA BAUNILHA'
      @selecionar_casquinha_chocolate = 'CASQUINHA CHOCOLATE'
      @selecionar_casquinha_mista = 'CASQUINHA MISTA'
      @btn_adicionar_sacola = 'btn_add_cart'
      @btn_continuar_comprando = 'keep_buying'
      @btn_finalizar_pedido = 'finish_order'
      @add_casquinha = 'add'
      @remover_casquinha = 'remove'
      @btn_efetuar_pagamento = 'continue_buying'
      @banner_add_mais_sobremesa = 'btn_negative'
      @adicionar_cartao = 'add_card'
      @cartao_visa = 'Visa - Crédito'
      @cartao_mastercard = 'Mastercard - Crédito'
      @cartao_american_express = 'American Express - Crédito'
      @cartao_alelo = 'Alelo - Refeição'
      @btn_continuar_pagamento = 'next_button'
      @preencher_numero_cartao = 'number_card'
      @preencher_validade = 'validate_card'
      @preencher_cvv = 'cvv_card'
      @preencher_nome_cartao = 'name_card'
      @preencher_cpf_cartao = 'document'
      @btn_pagar = 'continue_payment'
    end


    # ================================ METODOS =====================================
    def realizar_compra
      self.campo_bkExpress
      self.campo_loja
      self.btn_proximo_passo
      self.selecionar_banner_viagem
      self.selecionar_sobremesa
      self.selecionar_sorvete_baunilha
      self.clicar_btn_sacola
      self.clicar_btn_finalizar_pedido
      self.clicar_btn_efetuar_pagamento
      self.selecionar_banner_sobremesa
      self.selecionar_forma_de_pagamento
      self.selecionar_cartao_visa
    end

    def campo_bkExpress
      find_element(:id, @clicar_banner_bkexpress).click
    end

    def campo_btn_ok
      find_element(:id, @btn_ok).click
    end

    def campo_loja
      wait_for {find_element(:xpath, @selecionar_loja).displayed? }
      find_element(:xpath, @selecionar_loja).click
    end

    def btn_proximo_passo
      find_element(:text, @btn_proximo).click
    end

    def selecionar_banner_viagem
      find_element(:id, @card_viagem).click
    end

    def selecionar_banner_restaurante
      find_element(:id, @store_select).click
    end

    def selecionar_sobremesa
      find_element(:text, @banner_sobremesas).click
    end

    def selecionar_sorvete_baunilha
      find_element(:text, @selecionar_casquinha_baunilha).click
    end

    def selecionar_sorvete_chocolate
      find_element(:text, @selecionar_casquinha_chocolate).click
    end

    def selecionar_sorvete_mista
      find_element(:text, @selecionar_casquinha_mista).click
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
      find_element(:text, @cartao_visa).click
    end

    def selecionar_cartao_mastercard
      find_element(:text, @cartao_mastercard).click
    end

    def selecionar_cartao_american
      find_element(:text, @cartao_american_express).click
    end

    def selecionar_cartao_alelo
      find_element(:text, @cartao_alelo).click
    end

    def clicar_btn_continuar_pagamento
      find_element(:id, @btn_continuar_pagamento).click
    end

    def campo_numero_cartao
      find_element(:id, @preencher_numero_cartao).click
      find_element(:id, @preencher_numero_cartao).send_keys("Joata")
    end

    def campo_validade_cartao
      find_element(:id, @preencher_validade).click
      find_element(:id, @preencher_validade).send_keys("Joata")
    end

    def campo_cvv_cartao
      find_element(:id, @preencher_cvv).click
      find_element(:id, @preencher_cvv).send_keys("Joata")
    end

    def campo_nome_cartao
      find_element(:id, @preencher_nome_cartao).click
      find_element(:id, @preencher_nome_cartao).send_keys("Joata")
    end

    def campo_cpf_cartao
      find_element(:id, @preencher_cpf_cartao).click
      find_element(:id, @preencher_cpf_cartao).send_keys("Joata")
    end

    def clicar_btn_cartao
      find_element(:id, @btn_continuar_pagamento).click
    end


end
