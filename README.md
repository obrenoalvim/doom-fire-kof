# doom-fire-kof

[English](#english) | [Português](#português)

## English

Doom fire effect ([filipedeschamps/doom-fire-algorithm](https://github.com/filipedeschamps/doom-fire-algorithm)) implemented in [Kof](https://github.com/KofLang/Kof4j).

### Run

Terminal (24-bit ANSI, loops forever):
```
run.bat
```

Browser, served by `kof.web`:
```
serve.bat
```
then open http://localhost:8080/

### Layout

- `src/cli/Main.kf`, terminal version, JVM target, `while (true)` render loop
- `src/server/Server.kf`, `kof.web` app serving `src/web/` as static files
- `src/web/index.html`, same algorithm ported to canvas/JS for the browser

Each `.kf` program lives in its own directory. `kof run` compiles every file in a program's folder together, so two `main()` functions can't share one.

### Build manually

```
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\cli\Main.kf --target jvm
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\server\Server.kf --target jvm
```

Native (`--target native`) needs a GNU `as` on PATH (MinGW/binutils). Not installed on this machine, so that target is untested here.

---

## Português

Efeito de fogo do DOOM ([filipedeschamps/doom-fire-algorithm](https://github.com/filipedeschamps/doom-fire-algorithm)) implementado em [Kof](https://github.com/KofLang/Kof4j).

### Rodando

Terminal (ANSI 24 bits, roda para sempre):
```
run.bat
```

Browser, servido pelo `kof.web`:
```
serve.bat
```
depois abra http://localhost:8080/

### Estrutura

- `src/cli/Main.kf`, versão de terminal, target JVM, loop de render em `while (true)`
- `src/server/Server.kf`, app `kof.web` servindo `src/web/` como arquivos estáticos
- `src/web/index.html`, mesmo algoritmo portado para canvas/JS no browser

Cada programa `.kf` vive na própria pasta. `kof run` compila todos os arquivos de uma pasta juntos, então duas funções `main()` não cabem na mesma.

### Build manual

```
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\cli\Main.kf --target jvm
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\server\Server.kf --target jvm
```

O target nativo (`--target native`) precisa de um `as` (GNU binutils/MinGW) no PATH. Não está instalado nesta máquina, então esse target ficou sem teste aqui.
