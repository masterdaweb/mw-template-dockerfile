# Dockerfile na Master da Web

Um app com o seu próprio Dockerfile: o que ele monta é o que roda.

| Serviço | O que roda |
| --- | --- |
| `web` | o que o `Dockerfile` monta (aqui, o nginx servindo uma página estática) |

Sem detecção de linguagem: a plataforma vê o `Dockerfile` na raiz e o usa como está. Duas regras para qualquer Dockerfile aqui: escutar na porta de `$PORT` e em `0.0.0.0`.

O nginx preenche `$PORT` a partir de `default.conf.template` ao iniciar, e responde em português ou inglês conforme o navegador.

## Torne o código seu

1. No console, abra o projeto e siga **Seu código**: copie este template
   para o seu GitHub e conecte a cópia ao projeto.
2. Altere o `Dockerfile` e faça push: cada push faz um deploy, sem tirar o
   app do ar.

## Rodar na sua máquina

```bash
docker build -t meu-app .
docker run -e PORT=8080 -p 8080:8080 meu-app
```

## Bom saber

- O disco do container começa vazio a cada deploy: grave o que precisa durar no Object Storage ou num banco.

*[English](README.en.md)*
