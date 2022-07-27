package main

import (
	"os"

	"github.com/djschleen/sbom-release-example/cmd"
)

func main() {
	defer os.Exit(0)
	cmd.Execute()
}
