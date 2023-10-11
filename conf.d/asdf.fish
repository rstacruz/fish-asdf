if test -n "$ASDF_DATA_DIR" -a -d "$ASDF_DATA_DIR"
    source $ASDF_DATA_DIR/asdf.fish
else if test -f ~/.asdf/asdf.fish
    source ~/.asdf/asdf.fish
else if test -f /usr/local/opt/asdf/asdf.fish
    source /usr/local/opt/asdf/asdf.fish
else if test -f /opt/homebrew/opt/asdf/asdf.fish
    source /opt/homebrew/opt/asdf/asdf.fish
else if test -f /opt/homebrew/opt/asdf/libexec/asdf.fish
    source /opt/homebrew/opt/asdf/libexec/asdf.fish
end

# Link completions in git-based setup
function _asdf_install --on-event asdf_install
    if test -f ~/.asdf/asdf.fish
        and not test -L ~/.config/fish/completions/asdf.fish
            if not test -d ~/.config/fish/completions
                mkdir -p ~/.config/fish/completions
            end
            ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions/asdf.fish
    end
end

function _asdf_uninstall --on-event asdf_uninstall
    test -f ~/.asdf/asdf.fish
        and test -L ~/.config/fish/completions/asdf.fish
            rm ~/.config/fish/completions/asdf.fish
end
