local projectFile = "./dev.project.json"

require("luau-lsp").config {
	sourcemap = {
		enabled = true,
		autogenerate = true,
		generator_command = { "rojo", "sourcemap", "--watch", "-o", "sourcemap.json", projectFile },
	},
}
