FROM docker.io/alpine:latest AS build
RUN apk add typst
RUN mkdir -p /fonts
RUN wget -O /fonts/ubuntu.ttf https://cdn.jsdelivr.net/fontsource/fonts/ubuntu@latest/latin-400-normal.ttf
RUN wget -O /fonts/ubuntu-italic.ttf https://cdn.jsdelivr.net/fontsource/fonts/ubuntu@latest/latin-400-italic.ttf
RUN wget -O /fonts/ubuntu-bold.ttf https://cdn.jsdelivr.net/fontsource/fonts/ubuntu@latest/latin-700-normal.ttf
RUN wget -O /fonts/noto.ttf https://cdn.jsdelivr.net/fontsource/fonts/noto-sans@latest/latin-400-normal.ttf
RUN wget -O /fonts/noto-italic.ttf https://cdn.jsdelivr.net/fontsource/fonts/noto-sans@latest/latin-400-italic.ttf
RUN wget -O /fonts/noto-bold.ttf https://cdn.jsdelivr.net/fontsource/fonts/noto-sans@latest/latin-700-normal.ttf
ENV TYPST_FONT_PATHS=/fonts

WORKDIR /app
COPY . .
RUN typst c 3d-druck-agb.typ
RUN typst c beitragsordnung.typ
RUN typst c beleg.typ
RUN typst c datenschutz.typ
RUN typst c haftungsausschluss.typ
RUN typst c mitgliedsantrag.typ
RUN typst c satzung.typ
RUN typst c werkstatt-agb.typ
RUN typst c werkstatt-regeln.typ

FROM scratch
COPY --from=build /app/*.pdf /