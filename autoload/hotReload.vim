function! hotReload#TriggerHotReload() abort
    if $SHELL =~? 'fish'
        silent execute '!kill -SIGUSR1 (pgrep -f "[f]lutter_tool.*run")'
        silent execute '!kill -SIGUSR1 (pgrep -f "[f]lutter_tool.*attach")'
    else
        silent execute '!kill -SIGUSR1 $(pgrep -f "[f]lutter_tool.*run")'
        silent execute '!kill -SIGUSR1 $(pgrep -f "[f]lutter_tool.*attach")'
    endif
endfunction
