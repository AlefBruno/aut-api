module ViaCep
  module V1
    class CepService
      include HTTParty

      base_uri CONFIG_API['viacep']['cepservice']['host']

      def initialize
        @headers = { 'Content-Type': 'application/json' }
      end

      def get_cep_json(cep)
        self.class.get("/#{cep}/json", headers: @headers)
      end
    end
  end
end
