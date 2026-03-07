# RELATÓRIO DE BUGS - 6 Bugs Encontrados

## BUG-001: Campo Obrigatório Não Valida
**Severidade**: 🔴 **CRÍTICA**  
**Status**: Aberto

### Descripção
Campo "Nome do Curso" aceita submissão vazia, causando dados inválidos no sistema.

### Passos para Reproduzir
1. Abra formulário de cadastro
2. Deixe "Nome" em branco
3. Preencha outros campos
4. Clique "Salvar"

### Resultado Atual
❌ Formulário é enviado sem erro  
❌ Curso criado com nome vazio  
❌ Sem feedback de erro  

### Resultado Esperado
✅ Campo marcado em vermelho  
✅ Mensagem "Obrigatório"  
✅ Formulário não enviado  

### Impacto
- Dados corrompidos no sistema
- Confusão para usuário
- Impossível filtrar/buscar

### Sugestão de Correção
```html
<input type="text" name="nome" required>
```

```javascript
if (!courseData.nome || courseData.nome.trim() === '') {
  throw new Error('Nome é obrigatório');
}
```

---

## BUG-004: Vulnerabilidade XSS (Scripts Executados)
**Severidade**: 🔴 **CRÍTICA**  
**Status**: Aberto

### Descripción
Possibilidade de injetar JavaScript que é executado na página.

### Passos para Reproduzir
1. Cadastrar curso com:  
   Nome: `<script>alert('XSS')</script>`
2. Acessar listagem
3. Observar se alerta é executado

### Resultado Atual
❌ Alert JavaScript aparece (XSS confirmado)  
❌ Scripts podem roubar dados  
❌ Zero proteção  

### Resultado Esperado
✅ Nenhum alerta é executado  
✅ Script é exibido como texto  
✅ Sistema seguro  

### Impacto Crítico
- Roubo de sessão
- Malware distribuído
- Violação de GDPR
- Perda de confiança

### Sugestão de Correção
```javascript
const xss = require('xss');
courseData.nome = xss(courseData.nome);
```

---

## BUG-005: Listagem Não Atualiza
**Severidade**: 🟡 **ALTA**  
**Status**: Aberto

### Descripción
Novo curso não aparece na listagem até recarregar (F5).

### Passos Reproduzir
1. Cadastre um curso
2. Aceite sucesso
3. Observe listagem - curso não aparece
4. Pressione F5
5. Curso agora aparece

### Resultado Esperado
✅ Curso aparece imediatamente  
✅ Sem necessidade de refresh  

### Sugestão
```javascript
// Após salvar, recarregar listagem
async function saveCourse(data) {
  await fetch('/api/cursos', {method: 'POST', body: JSON.stringify(data)});
  loadCourses(); // Recarregar
}
```

---

## BUG-006: Limite de Caracteres Ignorado
**Severidade**: 🟡 **ALTA**  
**Status**: Aberto

### Descripción
Campo aceita 1000+ caracteres, quebrando layout.

### Passos
1. Digite 500 caracteres em "Nome"
2. Salve
3. Veja layout quebrado na listagem

### Resultado Esperado
✅ Máximo 100 caracteres  
✅ Mensagem de limite  

### Sugestão
```html
<input maxlength="100">
```

---

## BUG-003: Submissão Dupla
**Severidade**: 🟠 **MÉDIA**  
**Status**: Aberto

### Descripción
Double-click em "Salvar" cria dois cursos idênticos.

### Impacto
- Dados duplicados
- Confusão do usuário

### Sugestão
```javascript
submitBtn.disabled = true; // Após primeiro clique
```

---

## BUG-002: Acentuação Corrompida
**Severidade**: 🟠 **MÉDIA**  
**Status**: Aberto

### Descripción
"Gestão" aparece como "Gest?o" na listagem.

### Causa
Encoding UTF-8 não configurado.

### Sugestão
```html
<meta charset="UTF-8">
```

---

**Total**: 6 Bugs  
**Críticos**: 2  
**Altos**: 2  
**Médios**: 2  

**Ação Imediata**: Corrigir BUG-001 e BUG-004
