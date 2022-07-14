<h1 align="center">Estação de Controle Veiculares em Marte</h1>

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
git clone git@github.com:Quasar-Flash/qcedente-app.git
or com https
git clone https://github.com/Quasar-Flash/qcedente-app.git
cd qcedente-app/

cd NOMEDOPROJETO
bundle
ruby main.rb
```

## Melhorias

- Podemos fazer validações dos dados de entrada como Inteiros e Caracteres especiais.
- As Movimentações estão calibradas, porém o processo de 'caminhar' não irá observar se tem um rover na frente podendo causar colisões
