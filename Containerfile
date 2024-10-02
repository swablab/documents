FROM docker.io/alpine:latest AS build
WORKDIR /app
RUN apk add typst font-noto
RUN mkdir -p /usr/share/fonts/ubuntu
RUN wget -O /usr/share/fonts/ubuntu/ubuntu.ttf https://cdn.jsdelivr.net/fontsource/fonts/ubuntu@latest/latin-400-normal.ttf

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
COPY --from=build /app/*.pdf /