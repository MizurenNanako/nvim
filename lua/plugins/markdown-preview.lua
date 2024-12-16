local function get_abs_path(filename) return vim.fn.fnamemodify(filename, ":p") end

-- Usage

---@type LazySpec
return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
        -- mathml
        vim.g.mkdp_preview_options = {
            katex = { output = "mathml" },
        }
        vim.g.mkdp_browser = "firefox"
        vim.g.mkdp_echo_preview_url = 1
        -- " like '/Users/username/markdown.css' or expand('~/markdown.css')
        -- let g:mkdp_markdown_css = ''
        vim.g.mkdp_markdown_css = get_abs_path "~/markdown.css"
    end,
    ft = { "markdown" },
}
