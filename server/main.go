package main

import (
	"io"
	"log/slog"
	"net/http"
	"os"
	"os/exec"
)

func main() {
	http.HandleFunc("/{doc}", func(w http.ResponseWriter, r *http.Request) {
		doc := r.PathValue("doc")
		config, err := io.ReadAll(r.Body)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			slog.Error("read request", "error", err.Error())
			return
		}

		err = os.WriteFile(doc+".yml", config, 0644)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			slog.Error("write config", "error", err.Error())
			return
		}
		defer os.Remove(doc + ".yml")

		cmd := exec.Command("typst", "c", doc+".typ", "-")
		typst, err := cmd.CombinedOutput()
		if err != nil {
			http.Error(w, string(typst), http.StatusBadRequest)
			slog.Error("typst", "error", err.Error())
			return
		}
		w.Header().Set("Content-Type", "application/pdf")
		w.Write(typst)
		slog.Info("rendered", "doc", doc)
	})

	slog.Info("server started", "port", "8080")
	http.ListenAndServe(":8080", nil)
}
