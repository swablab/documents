# Offizielle Dokumente

Hier befinden sich die [Typst](https://typst.app/)-Vorlagen 
der offiziellen Vereinsdokumente des swablab e.V.

## Installation

Um aus den Vorlagen Dokumente zu erstellen oder diese anzupassen
muss Typst sowie Schriften installiert werden.

Wenn du [VSCode](https://code.visualstudio.com) und [Devcontainers](https://containers.dev) verwendest,
wird alles automatisch für dich installiert.

## Manuelle Installation

1. Download der ausführbaren Datei https://github.com/typst/typst/releases
2. Installation der Schriften [Noto](https://fonts.google.com/specimen/Noto) und [Ubuntu](https://fonts.google.com/specimen/Ubuntu)
3. Testen mit `typst fonts` ob Typst und die Schriften korrekt installiert sind

## Generieren der PDFs

Manche Dateien müssen per [YAML](https://en.wikipedia.org/wiki/YAML) konfiguriert werden.
In diesem Fall gibt es immer eine `.yml.template`-Datei, die das Format zeigt.

### Linux

```bash
# automatisches Kompilieren bei Änderungen
typst watch spendenbescheinigung.typ

# einmaliges Kompilieren
typst compile spendenbescheinigung.typ
```

### Windows
```ps1
.\typst.exe compile .\spendenbescheinigung.typ
```

## Änderungen

Wenn du etwas ändern willst oder du einen Fehler bemerkt hast, dann öffne gerne
ein [Issue](https://git.swablab.de/swablab/documents/issues) und beschreibe
möglichst genau dein Problem.

Alternativ kannst du die Änderung auch gerne selbst entwickeln und einen
[Pull Request](https://git.swablab.de/swablab/documents/pulls) stellen.