<div align="center">

<img src=".github/logo.svg" alt="Logo do doom-fire-kof" width="120" height="120">

# doom-fire-kof

**O efeito de fogo do DOOM, escrito na linguagem de programação Kof.**<br>
Uma versão de terminal ANSI 24 bits na JVM e uma versão de navegador servida pelo `kof.web`.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/obrenoalvim/doom-fire-kof?style=flat&logo=github&color=ff5230)](https://github.com/obrenoalvim/doom-fire-kof/stargazers)
[![Kof](https://img.shields.io/badge/Linguagem-Kof-ff5230)](https://github.com/KofLang/Kof4j)
[![JVM](https://img.shields.io/badge/Target-JVM-5382A1?logo=openjdk&logoColor=white)](#rodando)

[English](README.md) · **Português**

[Pré-requisitos](#pré-requisitos) · [Rodando](#rodando) · [Estrutura](#estrutura) · [Build manual](#build-manual) · [Perguntas frequentes](#perguntas-frequentes)

</div>

---

Efeito de fogo do DOOM ([filipedeschamps/doom-fire-algorithm](https://github.com/filipedeschamps/doom-fire-algorithm)) implementado em [Kof](https://github.com/KofLang/Kof4j).

## Pré-requisitos

A toolchain do Kof, que não está commitada neste repo. Este projeto foi feito com `kof-0.3.23-beta-windows-x86_64`. Baixe o `.zip` nas [releases do Kof4j](https://github.com/KofLang/Kof4j/releases) e extraia de modo que este caminho exista:

```
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat
```

Você também pode editar a variável `KOF` no topo do `run.bat` e do `serve.bat` para apontar para o seu próprio `kof.bat`.

## Rodando

Terminal (ANSI 24 bits, roda para sempre):
```
run.bat
```

Browser, servido pelo `kof.web`:
```
serve.bat
```
depois abra http://localhost:8080/

## Estrutura

- `src/cli/Main.kf`, versão de terminal, target JVM, loop de render em `while (true)`
- `src/server/Server.kf`, app `kof.web` servindo `src/web/` como arquivos estáticos
- `src/web/index.html`, mesmo algoritmo portado para canvas/JS no browser

Cada programa `.kf` vive na própria pasta. `kof run` compila todos os arquivos de uma pasta juntos, então duas funções `main()` não cabem na mesma.

## Build manual

```
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\cli\Main.kf --target jvm
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\server\Server.kf --target jvm
```

O target nativo (`--target native`) precisa de um `as` (GNU binutils/MinGW) no PATH. Não está instalado nesta máquina, então esse target ficou sem teste aqui.

---

## Perguntas frequentes

**O que é Kof?**
Uma linguagem e um compilador do projeto [Kof4j](https://github.com/KofLang/Kof4j). Este repo é um programa pequeno escrito nela: o clássico efeito de fogo do DOOM.

**De onde vem o algoritmo?**
Do [doom-fire-algorithm](https://github.com/filipedeschamps/doom-fire-algorithm), de Filipe Deschamps. Este repo porta o algoritmo para Kof no terminal e para canvas no navegador.

**Roda no Linux ou no macOS?**
Os scripts auxiliares são arquivos batch do Windows. Em outros sistemas, rode os comandos `kof run` de [Build manual](#build-manual) com a toolchain da sua plataforma.

**O target nativo funciona?**
Está sem teste. Ele precisa de um `as` do GNU no PATH, e ele não está instalado na máquina onde isso foi feito.

## Mais do mesmo autor

- [**echoport**](https://github.com/obrenoalvim/echoport): scanner de portas localhost em tempo real para devs.
- [**github-wrapped**](https://github.com/obrenoalvim/github-wrapped): um poster estilo Spotify Wrapped para o seu ano no GitHub.

## Licença

[MIT](LICENSE)

---

<div align="center">

Se as chamas te fizeram sorrir, uma ⭐ ajuda outras pessoas a encontrar o projeto.

<sub>**Tópicos:** doom-fire-algorithm · fire-effect · kof · kof-lang · jvm · terminal · ansi-colors · canvas-animation · programming-language · compiler</sub>

</div>
