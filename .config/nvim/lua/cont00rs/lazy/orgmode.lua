return {
    "nvim-orgmode/orgmode",

    config = function()
        require('orgmode').setup({
            org_agenda_files = {'~/vimwiki/**/*.org'},
            org_default_notes_file = '~/vimwiki/refile.org',
            org_todo_keywords = {'TODO(t)', 'WAIT', '|', 'DONE', 'CANC'}
        })
    end
}
