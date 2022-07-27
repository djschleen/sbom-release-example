package cmd

import (
	"os"

	"github.com/devops-kung-fu/common/util"
	"github.com/spf13/cobra"
)

var (
	helloCmd = &cobra.Command{
		Use:     "hello",
		Short:   "Simple echos hello to STDOUT",
		Example: "sbom-release-example hello",
		Run: func(cmd *cobra.Command, args []string) {
			util.PrintSuccess("Hello tutorial")
			os.Exit(0)
		},
	}
)

func init() {
	rootCmd.AddCommand(helloCmd)
}
