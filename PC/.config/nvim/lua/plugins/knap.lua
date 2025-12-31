return {
    "frabjous/knap",

    config = function ()
        vim.keymap.set('n', "<F6>", function() require("knap").toggle_autopreviewing() end)

        vim.keymap.set('n', "<F7>", function() require("knap").close_viewer() end)


        vim.g.knap_settings = {
            htmloutputext = "html",
            htmltohtml = "none",
            htmltohtmlviewerlaunch = "firefox %outputfile%",
            htmltohtmlviewerrefresh = "none",
            mdoutputext = "pdf",
            mdtohtml = "pandoc --standalone %docroot% -o %outputfile%",
            mdtohtmlviewerlaunch = "firefox %outputfile%",
            mdtohtmlviewerrefresh = "none",
            mdtopdf = "pandoc %docroot% -o %outputfile%",
            mdtopdfviewerlaunch = "sioyek %outputfile%",
            mdtopdfviewerrefresh = "none",
            markdownoutputext = "html",
            markdowntohtml = "pandoc --standalone %docroot% -o %outputfile%",
            markdowntohtmlviewerlaunch = "firefox %outputfile%",
            markdowntohtmlviewerrefresh = "none",
            markdowntopdf = "pandoc %docroot% -o %outputfile%",
            markdowntopdfviewerlaunch = "sioyek %outputfile%",
            markdowntopdfviewerrefresh = "none",
            texoutputext = "pdf",
            textopdf = "pdflatex -interaction=batchmode -halt-on-error -synctex=1 %docroot%",
            textopdfviewerlaunch = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,0)\"' --new-window %outputfile%",
            textopdfviewerrefresh = "none",
            textopdfforwardjump = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,0)\"' --reuse-window --forward-search-file %srcfile% --forward-search-line %line% %outputfile%",
            textopdfshorterror = "A=%outputfile% ; LOGFILE=\"${A%.pdf}.log\" ; rubber-info \"$LOGFILE\" 2>&1 | head -n 1",
            delay = 250
        }
    end
}
