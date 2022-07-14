<h1 align="center">Estação de Controle Veicular em Marte</h1>

<h3 align="center">
  # Projeto V1
</h3>


## :office: Overview

O sistema consistem em definir uma área pre-limitada (x, y) para posicionar os rovers e guia-los nessa nova descoberta.
É possivel definir quantos rover(s) desejar.
Área dinamica conforme os primeiros dados inputados.

## :rocket: Stack

* `ruby 3.0.X`
* `rspec`

## 🏃Preparando para execução

> Clonando repository:

```shell
git clone git@github.com:BrunoNeville31/rover.git
or com https
git clone https://github.com/BrunoNeville31/rover.git
cd rover/

bundle
ruby main.rb
```

## Melhorias

- Podemos fazer validações dos dados de entrada como Inteiros e Caracteres especiais.
- As Movimentações estão calibradas, porém o processo de 'caminhar' não irá observar se tem um rover na frente podendo causar colisões
