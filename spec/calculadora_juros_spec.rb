# encoding: UTF-8
require_relative '../lib/calculadora_juros'

# Descreve o que estamos testando
RSpec.describe CalculadoraJuros do
  # Descreve o método específico
  describe '#calcular_juros' do
    # Cenário de teste 1: Sucesso
    it 'calcula os juros corretamente para valores simples' do
      calculadora = CalculadoraJuros.new
      principal = 1000.00
      taxa      = 0.10
      tempo     = 2
      
      # Esperamos 1000 * 0.10 * 2 = 200.00
      resultado = calculadora.calcular_juros(principal, taxa, tempo)
      
      # ASSERT (Validação)
      expect(resultado).to eq(200.00) 
    end

    # Cenário de teste 2: Teste de precisão
    it 'garante que o resultado é arredondado corretamente para 50.00' do
      calculadora = CalculadoraJuros.new
      principal = 333.33
      taxa      = 0.05
      tempo     = 3
      
      # 333.33 * 0.05 * 3 = 49.9995. O nosso código deve arredondar para 50.00
      resultado = calculadora.calcular_juros(principal, taxa, tempo)
      
      expect(resultado).to eq(50.00) 
    end
  end
end