# Requisita a definição da classe HomePage
require_relative '../pages/home_page'

# Inicializa o Page Object para ser usado nos steps
$home_page = HomePage.new 


# --- STEPS "DADO" (Configuração) ---

Dado('que eu estou logado na minha conta') do
  # Ação de configuração de sessão.
  # (Em um projeto real, isso envolveria chamadas de inicialização do Redis/Sessão)
  puts "INFO: Sessao de login simulada."
end

Dado('o servico de saldo esta mockado para retornar {string}') do |valor_saldo|
  # BOA PRÁTICA: Configurar o TShield (ferramenta de mock)
  # Em um teste real, você chamaria: mock_service.setup_mock('service_contas', 'saldo_cinco_mil')
  puts "INFO: TShield configurado para retornar saldo: #{valor_saldo}"
end


# --- STEPS "QUANDO" (Ação) ---

Quando('eu acesso a pagina inicial') do
  # Chama o método .load do SitePrism para navegar para a URL definida
  $home_page.load 
  puts "INFO: Pagina inicial carregada."
end


# --- STEPS "ENTAO" (Validação/Assert) ---

Entao('o saldo exibido deve ser {string}') do |saldo_esperado|
  # BOA PRÁTICA: Usar expect e os métodos SitePrism (have_campo_saldo)
  # Isso garante que o elemento existe E que o texto está correto, 
  # além de esperar um tempo para o elemento aparecer (evita Flaky Test).
  expect($home_page).to have_campo_saldo(text: saldo_esperado)
  
  puts "SUCESSO: Saldo validado: #{saldo_esperado}"
end