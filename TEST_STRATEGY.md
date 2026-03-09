# ESTRATÉGIA DE TESTES - SISTEMA DE GERENCIAMENTO DE CURSOS

**Documento de Estratégia de Testes**
**Versão:** 1.0
**Data:** 09/03/2026
**Analista de Qualidade:** Tiago Looze
**Aplicação:** Sistema de Gerenciamento de Cursos

## 1. VISÃO GERAL DA ESTRATÉGIA DE TESTES

### 1.1 Objetivo
Estabelecer a abordagem sistemática para garantir a qualidade do Sistema de Gerenciamento de Cursos, assegurando que todos os requisitos funcionais e não-funcionais sejam validados de forma eficaz antes da entrega em produção.

### 1.2 Escopo dos Testes
- **Incluído:**
  - Cadastro de cursos com validação de campos obrigatórios
  - Validação de datas (início/fim) e consistência temporal
  - Validação de número de vagas (valores positivos, numéricos)
  - Listagem de cursos cadastrados
  - Exclusão de cursos com confirmação e feedback visual
  - Integridade dos dados e persistência
  - Experiência do usuário nos fluxos principais

- **Excluído:**
  - Testes de performance e carga
  - Testes de segurança avançada
  - Testes de compatibilidade cross-browser
  - Testes de acessibilidade (WCAG)
  - Testes de integração com sistemas externos

### 1.3 Abordagem de Testes
Utilização de **Testes Manuais Estruturados** com foco em:
- **Testes de Caixa Preta:** Baseados nos requisitos funcionais
- **Testes de Validação de Entrada:** Focados em validações de campos
- **Testes de Fluxo de Negócio:** Validando cenários completos
- **Testes de Regressão:** Garantindo que correções não quebrem funcionalidades existentes

## 2. TIPOS DE TESTES

### 2.1 Testes Funcionais
**Objetivo:** Validar todos os requisitos funcionais da aplicação

| Tipo de Teste | Descrição | Prioridade |
|---------------|-----------|------------|
| Testes de Cadastro | Validação do fluxo completo de cadastro de cursos | Alta |
| Testes de Validação | Verificação de regras de negócio e validações | Alta |
| Testes de Listagem | Exibição correta dos cursos cadastrados | Média |
| Testes de Exclusão | Remoção segura e eficiente de registros | Alta |

### 2.2 Testes de Usabilidade
**Objetivo:** Garantir excelente experiência do usuário

- **Navegação:** Intuitiva e consistente
- **Feedback:** Mensagens claras e oportunas
- **Validação:** Erros descritivos e úteis
- **Performance:** Respostas rápidas e sem bloqueios

### 2.3 Testes de Integridade de Dados
**Objetivo:** Garantir consistência e confiabilidade dos dados

- **Persistência:** Dados salvos corretamente no backend
- **Consistência:** Relacionamentos e regras de negócio respeitadas
- **Exclusão:** Remoção completa e segura de registros

## 3. PLANEJAMENTO DE TESTES

### 3.1 Estratégia de Execução
```
Fase 1: Testes de Fluxo Principal (Dia 1)
├── Cadastro de curso com dados válidos
├── Listagem de cursos
└── Exclusão de curso

Fase 2: Testes de Validação (Dia 2)
├── Campos obrigatórios vazios
├── Datas inválidas
├── Número de vagas inválido
└── Combinatória de validações

Fase 3: Testes de Regressão (Dia 3)
├── Re-execução de cenários críticos
├── Verificação de correções de bugs
└── Validação de integridade geral
```

### 3.2 Critérios de Entrada
- Ambiente de teste configurado e disponível
- Casos de teste documentados e revisados
- Dados de teste preparados
- Ferramentas de evidência configuradas

### 3.3 Critérios de Saída
- **Cobertura:** 100% dos requisitos funcionais testados
- **Qualidade:** Zero bugs críticos sem correção
- **Performance:** Tempo de resposta aceitável
- **Documentação:** Evidências completas e organizadas

## 4. RISCOS E MITIGAÇÕES

### 4.1 Riscos Técnicos

| Risco | Impacto | Probabilidade | Mitigação |
|-------|---------|---------------|-----------|
| Falhas na validação de campos | Alto | Média | Testes extensivos de validação + validação dupla (frontend/backend) |
| Problemas de persistência de dados | Alto | Baixa | Testes de integridade + validação de banco de dados |
| Inconsistência na exclusão de registros | Médio | Média | Testes de exclusão + validação de feedback visual |
| Performance insatisfatória | Médio | Baixa | Testes de carga básicos + monitoramento |

### 4.2 Riscos de Projeto

| Risco | Impacto | Probabilidade | Mitigação |
|-------|---------|---------------|-----------|
| Escopo de testes muito amplo | Médio | Média | Priorização de testes críticos + foco em MVP |
| Falta de recursos para testes automatizados | Médio | Alta | Estratégia de testes manuais estruturados |
| Comunicação ineficiente com desenvolvimento | Médio | Média | Relatórios de bugs detalhados + follow-up regular |

## 5. MÉTRICAS DE QUALIDADE

### 5.1 Métricas de Testes

| Métrica | Objetivo | Meta |
|---------|----------|------|
| Cobertura de Testes | % de requisitos testados | 100% |
| Defeitos Encontrados | Quantidade de bugs identificados | Mínimo 5 críticos |
| Defeitos Corrigidos | % de bugs resolvidos | 100% críticos |
| Tempo de Execução | Eficiência dos testes | < 4 horas por ciclo |
| Eficácia de Testes | % de bugs encontrados em produção | 0% |

### 5.2 Indicadores de Qualidade

| Indicador | Descrição | Meta |
|-----------|-----------|------|
| Taxa de Bugs Críticos | Bugs que impedem o uso da funcionalidade | 0% |
| Satisfação do Usuário | Feedback sobre experiência | > 80% positivo |
| Tempo de Resposta | Velocidade das operações | < 3 segundos |
| Disponibilidade | Tempo que o sistema está funcional | 100% durante testes |

## 6. FERRAMENTAS E RECURSOS

### 6.1 Ferramentas de Testes
- **Captura de Evidências:** Screenshots e gravações de tela
- **Documentação:** Markdown para relatórios
- **Planilhas:** Google Sheets para rastreabilidade
- **Versionamento:** Git para controle de mudanças

### 6.2 Ambientes de Teste
- **Ambiente de Desenvolvimento:** Para testes iniciais
- **Ambiente de Testes:** Para validação completa
- **Ambiente de Produção:** Para validação final (se aplicável)

## 7. ENTREGAS ESPERADAS

### 7.1 Documentos de Testes
- [x] Estratégia de Testes (este documento)
- [x] Casos de Teste em Gherkin (test-cases.feature)
- [x] Planilha de Testes Detalhada
- [x] Relatório de Bugs
- [ ] Relatório de Execução de Testes
- [ ] Relatório de Qualidade Final

### 7.2 Evidências de Testes
- [x] Vídeos de execução dos cenários críticos
- [x] Screenshots de bugs identificados
- [ ] Relatórios de cobertura de testes
- [ ] Métricas de qualidade

## 8. QUALIDADE DE SAÍDA

### 8.1 Critérios de Aceitação
Para aprovação da qualidade do sistema, é necessário:

1. **Zero Bugs Críticos:** Todos os bugs de alta severidade corrigidos
2. **Cobertura Completa:** Todos os requisitos funcionais validados
3. **Experiência Consistente:** Fluxos principais sem interrupções
4. **Dados Confiáveis:** Integridade e consistência dos registros
5. **Feedback Adequado:** Mensagens claras e úteis ao usuário

### 8.2 Gates de Qualidade
- **Gate 1:** Testes de fluxo principal aprovados
- **Gate 2:** Testes de validação aprovados
- **Gate 3:** Bugs críticos corrigidos e retestados
- **Gate 4:** Testes de regressão aprovados

## 9. CONSIDERAÇÕES FINAIS

Esta estratégia de testes foi elaborada com foco na entrega de um produto de alta qualidade, com ênfase na experiência do usuário e na integridade dos dados. A abordagem manual estruturada permite uma cobertura profunda dos requisitos críticos, garantindo que o sistema esteja pronto para produção.

**Revisão:** Esta estratégia será revisada após a primeira iteração de testes para ajustes e melhorias.

**Aprovação:** 
- Analista de Qualidade: Tiago Looze
- Data: 09/03/2026