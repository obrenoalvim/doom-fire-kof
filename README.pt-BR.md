# doom-fire-kof

[English](README.md)

Efeito de fogo do DOOM ([filipedeschamps/doom-fire-algorithm](https://github.com/filipedeschamps/doom-fire-algorithm)) implementado em [Kof](https://github.com/KofLang/Kof4j).

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
