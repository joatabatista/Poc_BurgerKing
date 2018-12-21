class Cadastro <Appium::Driver

# ================================= SCREEN ======================================
  def initialize
    @clicar_permitir_localizacao = 'permission_allow_button'
    @clicar_permitir = 'PERMITIR'
    @clicar_pular = 'PULAR INSTRODUCAO'
    @clicar_menu = 'navigation_nav_menu'
    @clicar_pular_cadastro = 'pular'
    @clicar_btn_login = 'btn_login'
    @clicar_cadastrar = 'register'
    @preencher_nome = 'full_name'
    @preencher_email = 'email'
    @preencher_cpf = 'cpf'
    @preencher_cep = 'zip_code'
    @preencher_numero = 'address_number'
    @preencher_complemento = 'complement'
    @preencher_telefone = 'phone'
    @preencher_nascimento = 'birth'
    @preencher_genero = 'gender'
    @selecionar_masculino = 'MASCULINO'
    @selecionar_feminino = 'FEMININO'
    @preencher_senha = 'password'
    @preencher_repita_senha = 'password_confirm'
    @clicar_aceite_termo = 'terms'
    @clicar_btn_cadastrar = 'confirm'
    @clicar_banner_bkexpress = 'rellay_express'
    @exemplo = "//android.widget.Button[instance='1']"
  end

  # ================================ METODOS =====================================
def campo_menu
  self.campo_clicar_menu
  self.campo_login
  self.campo_cadastro
end

def preencher_cadastro(nome, email, cpf, cep, resitencia, telefone, nascimento, senha, repitaSenha)
  self.campo_nome_completo(nome)
  self.campo_email(email)
  self.campo_cpf(cpf)
  self.campo_cep(cep)
  self.campo_numero_resitencia(resitencia)
  self.campo_telefone(telefone)
  self.scroll_para_baixo
  self.campo_nascimento(nascimento)
  self.campo_genero
  self.campo_senha(senha)
  self.campo_repita_senha(repitaSenha)
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
  find_element(:text, @clicar_pular).click
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

def campo_nome_completo(nome)
  find_element(:id, @preencher_nome).click
  find_element(:id, @preencher_nome).send_keys(nome)
  hide_keyboard
end

def campo_email(email)
  find_element(:id, @preencher_email).click
  find_element(:id, @preencher_email).send_keys(email)
  hide_keyboard
end

def campo_cpf(cpf)
  find_element(:id, @preencher_cpf).click
  find_element(:id, @preencher_cpf).send_keys(cpf)
  hide_keyboard
end

def campo_cep(cep)
  find_element(:id, @preencher_cep).click
  find_element(:id, @preencher_cep).send_keys(cep)
end

def campo_numero_resitencia(resitencia)
  find_element(:id, @preencher_numero).click
  find_element(:id, @preencher_numero).send_keys(resitencia)
  hide_keyboard
end

def campo_telefone(telefone)
  find_element(:id, @preencher_telefone).click
  find_element(:id, @preencher_telefone).send_keys(telefone)
  hide_keyboard
end

def campo_nascimento(nascimento)
  find_element(:id, @preencher_nascimento).click
  find_element(:id, @preencher_nascimento).send_keys(nascimento)
  hide_keyboard
end

def campo_genero
  find_element(:id, @preencher_genero).click
  ele_index('android.widget.CheckedTextView', rand(1..1)).click
end

def campo_senha(senha)
  find_element(:id, @preencher_senha).click
  find_element(:id, @preencher_senha).send_keys(senha)
  hide_keyboard
end

def campo_repita_senha(repitaSenha)
  find_element(:id, @preencher_repita_senha).click
  find_element(:id, @preencher_repita_senha).send_keys(repitaSenha)
  hide_keyboard
end

def campo_clicar_termo
  find_element(:id, @clicar_aceite_termo).click
end

def campo_clicar_btn_cadastrar
  find_element(:id, @clicar_btn_cadastrar).click
end

def scroll_para_cima
    scroll_to('REPITA A SENHA *').click
end

def scroll_para_baixo
    2.times{ Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.6, end_y: 0.3, duration: 900).perform}
end

end
