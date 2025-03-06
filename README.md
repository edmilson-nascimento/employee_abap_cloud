# employee_abap_cloud
 ABAP Cloud | Atividade Employee

[![GitHub forks](https://img.shields.io/github/forks/edmilson-nascimento/employee_abap_cloud?style=social)](https://github.com/edmilson-nascimento/employee_abap_cloud/network/members)
[![GitHub stars](https://img.shields.io/github/stars/edmilson-nascimento/employee_abap_cloud?style=social)](https://github.com/edmilson-nascimento/employee_abap_cloud/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/edmilson-nascimento/employee_abap_cloud)](https://github.com/edmilson-nascimento/employee_abap_cloud/issues)
[![GitHub license](https://img.shields.io/github/license/edmilson-nascimento/employee_abap_cloud)](https://github.com/edmilson-nascimento/employee_abap_cloud/blob/main/LICENSE)
![SAP](https://img.shields.io/badge/SAP-000000?style=flat&logo=sap&logoColor=white)
![ABAP](https://img.shields.io/badge/ABAP-0A9EDC?style=flat&logo=sap&logoColor=white)
![Fiori](https://img.shields.io/badge/Fiori-0A9EDC?style=flat&logo=sap&logoColor=white)
![UI5](https://img.shields.io/badge/UI5-0A9EDC?style=flat&logo=sap&logoColor=white)
![SAP BTP](https://img.shields.io/badge/SAP%20BTP-0A9EDC?style=flat&logo=sap&logoColor=white)

## Sobre
Sistema de Funcionários

### Descrição do Desafio
Você foi contratado para desenvolver um sistema de gerenciamento de funcionários. O objetivo é criar um conjunto de classes em ABAP OO que simulem a estrutura de uma empresa com diferentes tipos de funcionários. O sistema deve permitir o gerenciamento e visualização dos funcionários, seus dados e seus salários, aplicando conceitos de herança, polimorfismo e encapsulamento. 

  

### Requisitos
Criar uma Classe Base chamada `ZCL_EMPLOYEE`
- Essa classe deve representar um funcionário genérico e conter atributos privados como nome, idade e salário.
- Deve haver métodos públicos para definir (set) e obter (get) esses valores. 
- O método `calculate_salary` será abstrato e deverá ser implementado pelas subclasses. 

### Criar Subclasses para diferentes tipos de Funcionários: 

- `ZCL_FULLTIME_EMPLOYEE` Representa um funcionário que trabalha em tempo integral. O cálculo do salário é o valor fixo do salário. 
- `ZCL_PARTTIME_EMPLOYEE` Representa um funcionário que trabalha em meio período. O salário deve ser calculado com base nas horas trabalhadas e na taxa por hora. 
- `ZCL_CONTRACTOR_EMPLOYEE` Representa um contratado. O salário é calculado com base na taxa diária e na quantidade de dias trabalhados. 

### Aplicar Herança
As subclasses devem herdar da classe `ZCL_EMPLOYEE`. 
Cada subclasse deve implementar seu próprio método calculate_salary, que calculará o salário conforme a lógica específica. 

### Aplicar Polimorfismo
Crie uma classe `ZCL_EMPLOYEE_MANAGER` que gerencie uma lista de funcionários e permita calcular o salário de todos os funcionários de forma genérica, sem saber de antemão o tipo específico de funcionário (full-time, part-time ou contractor). 

### Encapsulamento
Todos os atributos (nome, idade, salário, horas/dias trabalhados) devem ser privados. 
Deve haver métodos de acesso público para definir e obter esses valores, garantindo a integridade dos dados. 

## Recursos

- **ABAP**: Conteúdo relacionado ao desenvolvimento em ABAP.
- **ABAP Cloud**: Conteúdo relacionado ao desenvolvimento em ABAP Cloud.

## Como Contribuir

1. Faça um fork do repositório.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Faça commit das suas alterações (`git commit -m 'Adiciona nova feature'`).
4. Faça push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

## Licença

Este projeto está licenciado sob a licença SAP - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
