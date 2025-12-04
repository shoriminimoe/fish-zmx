# zmx - session persistence for terminal processes
#
# Usage: zmx <command> [args]
#
# Commands:
#   [a]ttach <name> [command...]  Create or attach to a session
#   [d]etach                      Detach all clients from current session (ctrl+\ for current client)
#   [l]ist                        List active sessions
#   [k]ill <name>                 Kill a session and all attached clients
#   [h]elp                        Show this help message

complete --command zmx -f
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments attach --description "Create or attach to a session"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments detach --description "Detach all clients from current session (ctrl+\\ for current client)"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments list --description "List active sessions"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments kill --description "Kill a session and all attached clients"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments help --description "Show help message"
complete --command zmx --condition "__fish_seen_subcommand_from attach kill" -a "(zmx list | string replace -r 'session_name=(.*).*' '\$1')"
