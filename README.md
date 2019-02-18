<h3>Testes</he>

1) Testes Unitários: testar os métodos
2) Testes de Integração: mais de uma unidade sendo testada ao mesmo tempo
3) Testes de Aceitação: se o sistema atendeu os requisitos (botar o usuário para testar)

- RSpec - testes unitários de integração
- Capybara - testes de aceitação

- TDD: desenvolvimento guiado a testes
- É indicado fazer testes pelo menos nos Models
- Cada teste deve ser autonomo, não deve depender de nenhum outro teste
- Usar a referência 'subject' (uma instancia da classe testada)

<b>Boas práticas</b>
- String: 
    - regra: ''
    - exeção: "" --- (só quando for concatenar: "#{var}")