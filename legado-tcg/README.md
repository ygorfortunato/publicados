# Legado TCG

App para acompanhar uma coleção de cards de Pokémon TCG e o quanto foi investido nela. Pensado para o celular, em um único arquivo (`index.html`), sem servidor, sem conta e sem instalação de dependências. Os dados ficam salvos no navegador de quem usa.

## O que tem

- **Coleção** com cartas únicas, unidades, sets, filtro por nome ou set e total investido
- **Buscar** cartas por nome na [TCGdex](https://tcgdex.dev), em português e inglês ao mesmo tempo, com os sets mais novos primeiro
- **Bandeira** 🇧🇷 ou 🇺🇸 no nome da carta, e campo **Idioma da minha carta** para avisar quando os dados aparecem em inglês mas a sua carta é em português
- **Adicionar carta manualmente** para promos e sets que a API ainda não tem
- **Sets** com progresso por set; as cartas que faltam aparecem esmaecidas
- **Ficha da carta** com a quantidade por variante (normal, reverse, holo, 1ª edição, promo)
- **Compras** de boosters, boxes/ETB, cartas avulsas e outros, com quantidade, total pago em R$, data e loja
- **Backup** em arquivo `.json` (exportar e importar)

## Observações

- Os dados das cartas e as imagens vêm da API pública da TCGdex. Sem internet, a busca e as imagens não carregam, mas a coleção e as compras já salvas continuam visíveis.
- Como tudo fica no navegador, limpar os dados do site apaga a coleção. Exporte um backup de vez em quando.
- Para usar no celular, abra o endereço e use "Adicionar à tela inicial".

Endereço: https://ygorfortunato.github.io/publicados/legado-tcg/
