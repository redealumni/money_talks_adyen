module MoneyTalks
  module PSP
    module Adyen
      class Error < StandardError
        def initialize(code)
          super(case code
            when '010'
              'Não autorizado'
            when '101'
              'Número do cartão inválido'
            when '103', '153'
              'Número do código de verificação (CVC) incorreto'
            when '128'
              'Nome no cartão inválido'
            when '129'
              'Data de expiração do cartão inválida'
            when '905'
              'Dados de pagamento inválido'
            else
              'Verifique as informações de pagamento'
          end)
        end
      end
    end
  end
end
