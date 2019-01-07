Dado("que eu esteja na home do app Burger King") do
  posicao = rand(0..4)
  @email = $lista_cadastro[posicao]['email']
  @senha = $lista_cadastro[posicao]['senha']
  @cadastro = Cadastro.new
  @cadastro.cadastro(@email, @senha)
end

Quando("seleciono BK Express") do
  @comprar = Comprar.new
  @comprar.realizar_compra
end

Quando("realizo minha compra") do
  @comprar.finalizar_compra
end

Entao("compra realizada com sucesso") do

end
