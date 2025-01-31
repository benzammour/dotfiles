#!/usr/bin/env fish

function wpp
    sudo ss -lptn "sport = :$argv"
end
