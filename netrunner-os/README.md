# Netrunner OS

Sistema de controle de hábitos, missões e metas, gamificado como um RPG com visual inspirado em Neo-Tóquio. Cada ação concluída dá XP, e o XP sobe o nível do seu personagem.

Funciona em um único arquivo (`index.html`), sem servidor, sem conta e sem instalação de dependências. O progresso fica salvo no navegador de quem usa.

## O que tem

- **Hábitos** com dias da semana, sequência (até 2× de XP em 20 dias) e perda de integridade quando falha
- **Missões** com prazo; atraso rende metade do XP
- **Metas** divididas em marcos, com bônus na conclusão
- **Diário** com data, humor e texto livre; a primeira entrada do dia rende 10 XP
- **Mercado** para trocar créditos por recompensas reais
- **Perfil** com 5 atributos (radar), 6 ranks e 15 conquistas
- **Guia do usuário** dentro do app (botão GUIA)
- **Backup** em arquivo `.json` (exportar e importar)

## Regras principais

| Regra | Valor |
| --- | --- |
| XP base: Fácil / Média / Difícil / Épica | 10 / 20 / 40 / 80 |
| Bônus de sequência | +5% por dia, até 20 dias |
| Marco de meta / conclusão de meta | 40 XP / 240 XP |
| Créditos por ação | metade do XP |
| Hábito perdido | −8 de integridade |
| Curva de níveis | XP para sair do nível L = 80 × L^1,35 |

## Publicar no GitHub Pages

Este app vive em `netrunner-os/` dentro do repositório público `publicados` e é publicado pelo workflow `.github/workflows/pages.yml` a cada push na `main`.

- Em **Settings → Pages**, a origem (**Source**) deve estar em **GitHub Actions**.
- Endereço: https://ygorfortunato.github.io/publicados/netrunner-os/

O progresso salvo continua valendo, porque o navegador guarda os dados por domínio (`ygorfortunato.github.io`), e não por caminho.

## Instalar no celular

- **iPhone:** abra o endereço no Safari, toque em Compartilhar e depois em Adicionar à Tela de Início.
- **Android:** no Chrome, abra o menu e toque em Instalar app.

## Dados e privacidade

Tudo fica no navegador do aparelho (armazenamento local). Não há conta, login nem envio de dados. Limpar os dados do navegador ou trocar de aparelho começa um jogo novo, então use o backup do Perfil de vez em quando.

## Limitações

- Não funciona offline: as fontes vêm do Google Fonts e, sem internet, o visual cai para fontes comuns.
- O arquivo é gerado a partir de uma versão feita no Claude. Mudanças de regra precisam ser aplicadas no `index.html`.
