FROM docker.io/alpine:latest AS build
RUN apk add typst
RUN mkdir -p /root/.local/share/fonts
RUN wget -O /root/.local/share/fonts/ubuntu.ttf https://cdn.jsdelivr.net/fontsource/fonts/ubuntu@latest/latin-400-normal.ttf
RUN wget -O /root/.local/share/fonts/noto.ttf https://cdn.jsdelivr.net/fontsource/fonts/noto-sans@latest/latin-400-normal.ttf

COPY . .
RUN typst c 3d-druck-agb.typ
RUN typst c beitragsordnung.typ
RUN typst c beitrittserklärung.typ
RUN typst c beleg.typ
RUN typst c datenschutz-einwilligung.typ
RUN typst c haftungsausschluss.typ
RUN typst c satzung.typ
RUN typst c werkstatt-agb.typ
RUN typst c werkstatt-regeln.typ

FROM scratch
COPY --from=build *.pdf /