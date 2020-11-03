if test -n "$ASDF_DATA_DIR" -a -d "$ASDF_DATA_DIR"
    source $ASDF_DATA_DIR/asdf.fish
else if test -f ~/.asdf/asdf.fish
    source ~/.asdf/asdf.fish
else if test -f /usr/local/opt/asdf/asdf.fish
    source /usr/local/opt/asdf/asdf.fish
end
