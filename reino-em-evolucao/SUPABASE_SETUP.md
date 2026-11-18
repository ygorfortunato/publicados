# Conectar o Reino em Evolução ao Supabase

O app está preparado para autenticação por e-mail e senha e sincronização da jornada inteira. A senha nunca é salva pelo app: ela é administrada pelo Supabase Auth.

## 1. Criar o projeto

1. Crie um projeto em [supabase.com](https://supabase.com).
2. Em **Authentication > Providers > Email**, mantenha o provedor de e-mail habilitado e ative a confirmação de e-mail.
3. Em **Authentication > URL Configuration**, inclua as URLs de redirecionamento:
   - `https://ygorfortunato.github.io/publicados/reino-em-evolucao/`
   - `https://reino-em-evolucao-prototipo.wr8q726qqf.chatgpt.site/`

## 2. Criar a tabela protegida

Abra o **SQL Editor** do Supabase e execute o conteúdo de `supabase/schema.sql`.

As políticas RLS garantem que cada conta só leia, crie, atualize ou remova a própria jornada.

## 3. Informar a configuração pública

Em **Project Settings > API**, copie:

- **Project URL**
- **Publishable key** ou a chave **anon**

Cole esses valores em `dist/supabase-config.js` e publique o app. Essas chaves podem ficar no navegador; a segurança dos dados é feita pelas políticas RLS. Nunca use a chave `service_role` no projeto.

## 4. Primeiro acesso

Após entrar ou criar uma conta, o app oferece a migração do progresso que estiver salvo no navegador. A partir daí, personagem, ouro, itens, atributos, missões, campanhas, diário e histórico serão sincronizados automaticamente.
