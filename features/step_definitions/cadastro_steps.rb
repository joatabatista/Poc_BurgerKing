Dado("que eu esteja na tela do aplicativo Burger King") do
  @cadastro = Cadastro.new
  @cadastro.campo_menu
end

Quando("preencho os campos correpondentes na tela de cadastro") do
  posicao = rand(0..4)
  @nome = $lista_cadastro[posicao]['nome']
  @email = $lista_cadastro[posicao]['email']
  @cpf = $lista_cadastro[posicao]['cpf']
  @cep = $lista_cadastro[posicao]['cep']
  @resitencia = $lista_cadastro[posicao]['resitencia']
  @telefone = $lista_cadastro[posicao]['telefone']
  @nascimento = $lista_cadastro[posicao]['nascimento']
  @senha = $lista_cadastro[posicao]['senha']
  @repitaSenha = $lista_cadastro[posicao]['repitaSenha']
  @cadastro.preencher_cadastro(@nome, @email, @cpf, @cep, @resitencia, @telefone, @nascimento, @senha, @repitaSenha)
end

Quando("valido o cadastro") do

end

Quando("realizo uma compra pelo BK Express") do
  @comprar = Comprar.new
  @comprar.realizar_compra
end

Entao("Valido compra realizada com sucesso") do

end
