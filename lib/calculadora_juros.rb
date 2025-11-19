# Este é o código da sua aplicação (a unidade que será testada)
class CalculadoraJuros
  # Método que calcula os juros simples
  def calcular_juros(valor_principal, taxa, tempo)
    # Fórmula: Juros = Principal * Taxa * Tempo
    juros = valor_principal * taxa * tempo
    return juros.round(2)
  end
end