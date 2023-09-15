Dado('ter uma massa configurada para realizar a consulta do cep') do
  @cep = DATA_API['viacep']['cep_válido']
end

Quando('chamar o endpoint cep_service_v1.get') do
  @response = cep_service_v1.get_cep_json(@cep)
end

Então('validar no retorno a {string} na consulta do cep') do |validação|
  expect(@response.body.nil?).to eql false
  expect(@response.code).to eql messages_load(%w[viacep status_code success])
  expect(@response[validação]).to eql messages_load("viacep mensagens sucesso #{validação}")
end
