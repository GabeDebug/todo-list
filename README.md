# 📋 Todo List — Ruby on Rails

Aplicação de gerenciamento de tarefas construída com Ruby on Rails seguindo a arquitetura MVC, com interface estilizada com Tailwind CSS.

---

## 🚀 Tecnologias

- **Ruby on Rails** — framework web full-stack
- **Tailwind CSS** — estilização com classes utilitárias
- **SQLite** — banco de dados (padrão do Rails em desenvolvimento)
- **Hotwire / Turbo** — navegação sem recarregamento de página

---

## ✨ Funcionalidades

- Listar todas as tarefas
- Criar nova tarefa com nome e descrição
- Visualizar detalhes de uma tarefa
- Editar uma tarefa existente
- Excluir uma tarefa com confirmação

---

## 📁 Estrutura de Views

```
app/views/todos/
├── index.html.erb   # Lista todas as tarefas
├── show.html.erb    # Exibe detalhes de uma tarefa
├── new.html.erb     # Formulário de criação
├── edit.html.erb    # Formulário de edição
├── _form.html.erb   # Partial compartilhada do formulário
└── _todo.html.erb   # Partial do card de tarefa
```

---

## ⚙️ Como rodar o projeto

### Pré-requisitos

- Ruby `>= 3.0`
- Rails `>= 7.0`
- Bundler

### Instalação

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/todo-rails.git
cd todo-rails

# Instale as dependências
bundle install

# Crie e migre o banco de dados
rails db:create db:migrate

# Inicie o servidor (com Tailwind compilando em tempo real)
./bin/dev
```

Acesse em: [http://localhost:3000/todos](http://localhost:3000/todos)

---

## 🎨 Tailwind CSS

O Tailwind foi adicionado via gem `tailwindcss-rails`. Para instalar em um projeto Rails existente:

```bash
# Adicione ao Gemfile
gem "tailwindcss-rails"

# Instale
bundle install
rails tailwindcss:install

# Rode com
./bin/dev
```

> ⚠️ Use `./bin/dev` em vez de `rails server` para que o Tailwind compile os estilos durante o desenvolvimento.

---

## 🗂️ Rotas

| Método | Rota            | Ação    | Descrição              |
| ------ | --------------- | ------- | ---------------------- |
| GET    | /todos          | index   | Lista todas as tarefas |
| GET    | /todos/new      | new     | Formulário de criação  |
| POST   | /todos          | create  | Cria uma nova tarefa   |
| GET    | /todos/:id      | show    | Exibe uma tarefa       |
| GET    | /todos/:id/edit | edit    | Formulário de edição   |
| PATCH  | /todos/:id      | update  | Atualiza uma tarefa    |
| DELETE | /todos/:id      | destroy | Remove uma tarefa      |

---

## 📄 Licença

Este projeto está sob a licença gabrieldebug.
