#language:pt

@cep_service_v1
Funcionalidade: Cep 
  Como uma aplicação de consulta de CEP
  Quero chamar o endpoint da API
  Para validar as funcionalidade do mesmo

  @get_logradouro_cep_service_v1 @get_cep
  Esquema do Cenário: Validação do Logradouro e DDD no retorno da consulta de CEP 
    Dado ter uma massa configurada para realizar a consulta do cep
    Quando chamar o endpoint cep_service_v1.get
    Então validar no retorno a "<validação>" na consulta do cep

    Exemplos:
      | validação  |
      | logradouro |
      | ddd        |
