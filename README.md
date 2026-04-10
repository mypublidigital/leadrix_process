# Leadrix Assessment — Visão Geral "As Is"

Aplicativo web de questionário para diagnóstico de processos operacionais, desenvolvido para a Leadrix.

## Sobre

Formulário interativo de assessment em 10 etapas com barra de progresso, área administrativa protegida por senha e exportação de respostas em CSV.

## Como usar

Abra o arquivo `index.html` diretamente no navegador — não requer servidor ou instalação.

## Funcionalidades

- 10 seções cobrindo toda a jornada do cliente (prospecção → financeiro → automação)
- Barra de progresso com indicadores por etapa
- Respostas salvas automaticamente no `localStorage` do navegador
- Área admin protegida por senha para visualizar e exportar respostas
- Exportação para CSV (compatível com Excel, encoding UTF-8)

## Acesso Admin

Clique em **🔒 Área Admin** no canto superior direito e use a senha:

```
leadrix@admin
```

> **Recomendação:** Altere a senha no código antes de publicar em produção.
> Linha a editar em `index.html`: `const ADMIN_PASSWORD = "leadrix@admin";`

## Tecnologias

- HTML5 / CSS3 / JavaScript puro (sem dependências externas)
- `localStorage` para persistência de dados no navegador
- Logo incorporado em Base64 (arquivo autossuficiente)

## Estrutura do projeto

```
leadrix-assessment/
├── index.html      # Aplicativo completo (autossuficiente)
└── README.md       # Este arquivo
```

---

**Leadrix** · Lidere seu mercado com IA
