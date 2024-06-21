# Testes de Software

Testes são atividades técnicas que são aplicadas durante o processo do desenvolvimento.

## 1. Objetivo:

Garantir que o processo de desenvolvimento e produto de software atinjam os níveis de qualidade especificados

## 2. Termos

**Defeito:** Também conhecido como "bug", é um problema no código que faz com que o software se comporte de maneira inesperada ou incorreta.

**Falha:** É a manifestação de um defeito no software, ou seja, é o comportamento anormal que pode ser observado enquanto o software está sendo executado.

**Erro:** É a causa raiz que leva ao defeito. Geralmente, é um equívoco humano durante a fase de design ou codificação do software.

**Teste:** Processo de execução de um programa com o objetivo de revelar a presença de erros.

**Depuração:** Processo de localizar e corrigir o erro/bug no código.

## 3. Por que testar?

- **Segurança:** os testes asseguram que as necessidades dos usuários estejam sendo atendidas;
- **Prevenção:** é provável que o software possua defeitos;
- **Economia de tempo:** faz com que o desenvolvedor já ajuste os bugs antes de ser alocado em outro projeto;
- **Custo:** falhas podem custar muito caro;
- **Feedback:** para avaliar a qualidade do software.

## 4. Plano de Teste

É um modelo utilizado em projetos para documentar as estratégias e procedimentos planejados para a realização dos testes. É fundamental para desenvolver softwares de qualidade.

> Permite a padronização do processo de testes

Além disso, o plano de testes auxilia na **comunicação com os stakeholders e internos do projeto** e esse documento, normalmente, contém as seguintes informações:
- Cronograma do projeto
- Estratégias utilizadas
- Metas e prazos a cumprir

### 4.1. Etapas do plano de teste:
1. **Objetivo:** Definir o que o teste irá fazer e o que queremos alcançar
2. **Cronograma:** Quando e quanto tempo vai durar
3. **Recursos:** O que é necessário para fazer o teste
4. **Ferramentas:** COisas que serão utilizadas para testar
5. **Problemas/Defeitos:** Problemas que podem aparecer
6. **Detalhes finais:** detalhes pertinentes a serem levados em consideração


## 5. Diferença entre Testes

### 5.1. Teste Manual

É presencial e acaba sendo custoso, pois requer uma pessoa para configurar e testar o ambiente, além de estar propenso a erros humanos.

### 5.2. Teste Automatizado

São realizados por uma máquina, podem variar em termos de complexidade e por isso a qualidade dos testes depende da qualidade que seus scripts de teste foram escritos.

### 5.3. Formas de Testes
- #### 5.3.1. Teste de Unidade
    Serve para identificar erros de lógica ou implementação em cada módulo do software separadamente. Geralmente é feito em pequenas porções de código.
    
    Para realizar o teste de unidade, é necessário ter acesso ao código que está sendo testado, por isso geralmente é feito pelo próprio desenvolvedor que produziu o código.

- #### 5.3.2 Teste de Sistema
    Verifica se as funções estão de acordo com o planejamento e se os elementos combinam entre si. Se concentra no comportamento do software. Geralmente é executado de ponta a ponta no sistema, antecede o ambiente de produção *(homolog)*. 

- #### 5.3.3 Teste de Aceite
    Verifica se o sistema atende aos critérios de aceitação especificados e se está pronto para entrega. É uma validação final antes de passar para o teste de aceite do usuário.

    - #### 5.3.3.1 Teste de Aceite do Usuário
        Conduzido pelos usuários finais, este teste verifica se o sistema atende às suas necessidades e expectativas em um ambiente que simula condições de produção.

    - #### 5.3.3.2 Teste de Aceite Operacional
        Este teste é realizado para garantir que o sistema está pronto para ser operado em um ambiente de produção, incluindo testes de recuperação, segurança e desempenho.

    - #### 5.3.3.3 Teste de Aceite Contratual e Regulatório
        Este teste verifica se o software atende a todos os requisitos contratuais e regulatórios aplicáveis, garantindo conformidade antes do lançamento.

- #### 5.3.4 Teste de Alfa
    Realizado internamente pela equipe de desenvolvimento, o teste de alfa é uma das primeiras formas de teste de software em um ambiente que simula o real, destinado a identificar bugs antes que o produto seja liberado para testes beta externos.

- #### 5.3.5 Teste de Beta
    Realizado de uma forma não planejada e por um grande número de pessoas que não possuem contato com o desenvolvimento ou a equipe de software.

## 6. Tipos de testes

#### 6.1. Teste funcional: 
Avalia as funções que o sistema deve desempenhar. 

>**"o que" o sistema deve fazer**

#### 6.2. Teste não-funcional:
Avalia as características de softwares, como usabilidade, eficiência, performance ou segurança. 

> **"o quão bem" o sistema deve se comportar**

#### 6.3. Teste de Caixa Branca:
Derivado de testes com base na estrutura interna ou na implementação do sistema, podendo incluir:
- Código
- Arquitetura
- Fluxos de trabalho
- Fluxos de dados
> A parte mais BackEnd, onde o usuário não tem acesso

#### 6.4. Teste de Caixa Preta:
Derivado de testes com base no que o cliente utilizaria. ENtrada de dados e saídas, levando em consideração a especificação do programa.
> Também é conhecido como **Teste funcional**, mais relacionado com a **Interface do Usuário**

#### 6.5. Teste relacionado à mudanças:
Quando são feitas alterações no sistema, seja para corrigir um defeito ou implementar uma funcionalidade nova.

- **6.5.1. Testes de Confirmação:** realizado depois que o defeito é corrigido.

- **6.5.2. Testes de Regrassão:** realiza a aplicação de versões mais recentes para garantir que não surgiram novos defeitos em componentes já analisados.