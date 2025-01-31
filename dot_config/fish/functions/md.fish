#!/usr/bin/env fish

function md
    mkdir -p -p -- "$argv" && cd -- "$argv"
end
