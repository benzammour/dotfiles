#!/usr/bin/env fish

function pj
    xclip -out -sel clip | jq . | xclip -sel clip
end
