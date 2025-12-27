function uv-start
    if not test -d .venv
        uv venv .venv
    end
    source .venv/bin/activate.fish
end
