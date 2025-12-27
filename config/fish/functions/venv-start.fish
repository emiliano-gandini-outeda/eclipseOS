function venv-start
    if not test -d venv
        python -m venv venv
    end
    source venv/bin/activate.fish
end
