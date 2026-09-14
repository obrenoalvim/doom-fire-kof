# doom-fire-kof

Doom fire effect (filipedeschamps/doom-fire-algorithm) implemented in [Kof](https://github.com/KofLang/Kof4j).

## Run

Terminal (24-bit ANSI, loops forever):
```
run.bat
```

Browser, served by `kof.web`:
```
serve.bat
```
then open http://localhost:8080/

## Layout

- `src/cli/Main.kf` — terminal version, JVM target, `while (true)` render loop
- `src/server/Server.kf` — `kof.web` app serving `src/web/` as static files
- `src/web/index.html` — same algorithm ported to canvas/JS for the browser

Each `.kf` program lives in its own directory — `kof run` compiles every file in a program's folder together, so two `main()` functions can't share one.

## Build manually

```
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\cli\Main.kf --target jvm
toolchain\win-native\kof-0.3.23-beta-windows-x86_64\bin\kof.bat run src\server\Server.kf --target jvm
```

Native (`--target native`) needs a GNU `as` on PATH (MinGW/binutils) — not installed on this machine, so that target is untested here.

## Algorithm

Classic per-column fire propagation: bottom row seeded at max intensity, each pixel above copies its neighbor's intensity minus random decay with a slight horizontal drift, mapped through a 36-step fire palette (`src/Main.kf`).
