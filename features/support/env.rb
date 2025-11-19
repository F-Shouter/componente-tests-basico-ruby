require 'capybara'
require 'site_prism'
require 'cucumber'
require 'selenium-webdriver'
require 'webdrivers'

# --- Configuração do Capybara/Driver (Essencial para rodar) ---

# Define que o Capybara usará o driver Selenium
Capybara.default_driver = :selenium_chrome 
# Define um tempo máximo de espera para elementos aparecerem (evita Flaky Tests!)
Capybara.default_max_wait_time = 5 

# Configura o Capybara para usar o ChromeDriver
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# Define a URL base para o Page Object
# IMPORTANTE: Como estamos fazendo um Component Test isolado (com mocks),
# esta seria a URL do seu ambiente de desenvolvimento local (ex: localhost:3000)
Capybara.app_host = 'http://localhost:3000' 

# --- Funções Auxiliares (Mock Service) ---

# Mock Service simples para simular o TShield, já que não temos o TShield instalado.
# Em um projeto real, você incluiria a gem do TShield.
module MockService
  def setup_mock(service, session)
    # Apenas simula a chamada de configuração do TShield
    puts "MOCK: Configurando #{service} para usar a sessão: #{session}"
  end
end

World(MockService)