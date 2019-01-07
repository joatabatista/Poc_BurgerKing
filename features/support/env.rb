require 'rspec'
require 'pry'
require 'appium_lib' #BIBLIOTECA DO APPIUM
require 'faker'
require 'cpf_faker'
require 'cucumber'

# configuração YAML
$lista_cadastro = YAML.load_file('./date/massa.yml')
$lista_credito = YAML.load_file('./date/credito.yml')

#METODO DO APPIUM PARA INICIAR
def caps
    {
        caps: {
            deviceName: "emulator-5554", #QUAKQUER NOME DE DEVICES
            platformName: "Android", #SERA ANDROID OU IOS
            app: (File.join(File.dirname(__FILE__), "BK.apk")), #NOME DO APK, ELA FICA NA PASTA SUPORTE
            appPackage:"burgerking.com.br.appandroid.hom", #TEM QUE EXECUTAR UM COMANDO PARA PEGAR ESSA INFORMAÇÃO
            appActivity:"edeploy.com.br.delivery.view.activity.SplashActivity_", #CONTINUAÇÃO DO PASSO DE CIMA
            noReset:true, #para nao fecha o app
            newCommandTimeout: "4600" #TIMEOUT
        }
    }
end

Appium::Driver.new(caps, true) #INICIAR DRIVE DO APPIUM
Appium.promote_appium_methods Object #METODOS DO APPIUM
