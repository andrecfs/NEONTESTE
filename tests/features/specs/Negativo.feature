#language: pt

@negativo
Funcionalidade: login incorreto

Cenario: validar login com email incorreto
Dado que estou no site da neon pejota
Quando clico em acessar conta
E coloco email incorreto no login
Entao verifico se o site exibe msg de informando que email é invalido