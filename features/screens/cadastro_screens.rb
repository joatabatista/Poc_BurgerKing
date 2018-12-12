class Cadastro <Appium::Driver

# ================================= SCREEN ======================================
  def initialize

    #BOTÕES
    @btn_permitir_localizacao = 'permission_allow_button'
    @btn_permitir_telefone = 'permission_allow_button'
    @btn_pular_instroducao = 'PULAR INSTRODUCAO'
    @btn_pular = 'jump'
    @btn_menu = 'navigation_nav_menu'
    @btn_pular_cadastro = 'pular'
    @btn_login = 'btn_login'
    @btn_cadastrar = 'register'
    @btn_aceite_termo = 'terms'
    @btn_cadastrar = 'confirm'
    @btn_cadastrese = 'CADASTRE-SE'

    #CAMPO DE TEXTO
    @preencher_nome = 'Nome completo'
    @preencher_email = 'E-MAIL'
    @preencher_cpf = 'CPF'
    @preencher_cep = 'CEP'
    @preencher_numero = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.EditText'
    @preencher_telefone = '(00) 00000 0000'
    @preencher_nascimento = 'NASCIMENTO'
    @preencher_genero = 'GÊNERO'
    @preencher_senha = 'SENHA'
    @preencher_repita_senha = 'REPITA A SENHA'

  end

  # ================================ METODOS =====================================
def preencher_cadastro
  self.campo_clicar_menu
  self.campo_login
  self.campo_cadastro
  self.campo_nome_completo
  self.campo_email
  self.campo_cpf
  self.campo_cep
  self.campo_numero_resitencia
  self.campo_telefone
  self.campo_nascimento
  self.campo_genero
  self.campo_senha
  self.campo_repita_senha
  self.campo_clicar_termo
  self.campo_clicar_btn_cadastrar
end


def campo_permitir_localizacao
  find_element(:id, @clicar_permitir_localizacao).click
end

def campo_permitir
  find_element(:text, @clicar_permitir).click
end

def campo_pular_introducao
  find_element(:text, @clicar_pular_instroducao).click
end

def campo_pular
  find_element(:id, @clicar_pular).click
end

def campo_clicar_menu
  find_element(:id, @clicar_menu).click
end

def campo_login
  find_element(:id, @clicar_btn_login).click
end

def campo_cadastro
  find_element(:id, @clicar_cadastrar).click
end

def campo_nome_completo
  find_element(:text, @preencher_nome).click
  find_element(:id, @preencher_cpf).send_keys('Joata Batista')
  hide_keyboard
end

def campo_email
  find_element(:text, @preencher_email).click
  find_element(:id, @preencher_cpf).send_keys('joata.magalhaes@yaman.com.br')
  hide_keyboard
end

def campo_cpf
  find_element(:text, @preencher_cpf).click
  find_element(:id, @preencher_cpf).send_keys('35996024845')
  hide_keyboard
end

def campo_cep
  find_element(:text, @preencher_cep).click
  find_element(:id, @preencher_cep).send_keys('06264140')
  hide_keyboard
end

def campo_numero_resitencia
  find_element(:text, @preencher_numero).click
  find_element(:id, @preencher_numero).send_keys('59')
  hide_keyboard
end

def campo_telefone
  find_element(:text, @preencher_telefone).click
  find_element(:id, @preencher_telefone).send_keys('1145528114')
  hide_keyboard
end

def campo_nascimento
  find_element(:text, @preencher_nascimento).click
  find_element(:id, @preencher_nascimento).send_keys('23031988')
  hide_keyboard
end

def campo_genero
  find_element(:text, @preencher_genero).click
  find_element(:id, @preencher_genero).send_keys('masculino')
  hide_keyboard
end

def campo_senha
  find_element(:text, @preencher_senha).click
  find_element(:id, @preencher_senha).send_keys('123456')
  hide_keyboard
end

def campo_repita_senha
  find_element(:text, @preencher_repita_senha).click
  find_element(:id, @preencher_repita_senha).send_keys('123456')
  hide_keyboard
end

def campo_clicar_termo
  find_element(:text, @clicar_aceite_termo).click
end

def campo_clicar_btn_cadastrar
  find_element(:text, @clicar_btn_cadastrar).click
end


end
