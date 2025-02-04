return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                -- Web Development
                "ts_ls", -- JavaScript / TypeScript
                "html", -- HTML
                "cssls", -- CSS
                "tailwindcss", -- Tailwind CSS
                "svelte", -- Svelte
                "emmet_ls", -- Emmet (para autocompletado rápido en HTML/CSS)
                "eslint", -- Linter para JS/TS

                -- Frameworks
                "volar", -- Vue.js
                "graphql", -- GraphQL
                "prismals", -- Prisma ORM

                -- React (ya usa tsserver, pero se puede agregar soporte extra)
                "eslint", -- Para mejorar la integración de React/JSX

                -- Back-end y sistemas
                "pyright", -- Python
                "clangd", -- C++
                "asm_lsp", -- Ensamblador (x86, ARM, etc.)
                "dockerls", -- Docker

                -- Otros
                "arduino_language_server", -- Arduino
                "jdtls", -- Java
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
            },
        })
    end,
}
