# zmx - session persistence for terminal processes
#
# Usage: zmx <command> [args]
#
# Commands:
#   [a]ttach <name> [command...]  Attach to session, creating session if needed
#   [r]un <name> [command...]     Send command without attaching, creating session if needed
#   [d]etach                      Detach all clients from current session (ctrl+\ for current client)
#   [l]ist                        List active sessions
#   [k]ill <name>                 Kill a session and all attached clients
#   [hi]story <name>              Output session scrollback as plain text
#   [v]ersion                     Show version information
#   [h]elp                        Show this help message

complete --command zmx --no-files
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments attach --description "Attach to session, creating session if needed"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments run --description "Send command without attaching, creating session if needed"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments detach --description "Detach all clients from current session (ctrl+\\ for current client)"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments list --description "List active sessions"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments kill --description "Kill a session and all attached clients"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments history --description "Output session scrollback as plain text"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments version --description "Show version information"
complete --command zmx --exclusive --condition __fish_use_subcommand --arguments help --description "Show help message"
complete --command zmx --condition "__fish_seen_subcommand_from attach run kill history" --arguments "(zmx list | string replace -r 'session_name=(.*).*' '\$1')"
