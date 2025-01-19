export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
alias config='/usr/bin/git --git-dir=/Users/julie/.cfg/ --work-tree=/Users/julie'
alias idun='ssh julievt@idun.hpc.ntnu.no'

if [[ $TERM == "xterm-kitty" ]]; then
	typeset -A SESSION_CONFIG
  SESSION_CONFIG=(
      main "/path/to/folder1"
      master-project "/Users/julie/Documents/master-project/"
      relu "/Users/julie/Documents/relu/"
  )

  # Loop through each session
  for SESSIONNAME in "${(@k)SESSION_CONFIG}"
  do
      tmux has-session -t "$SESSIONNAME" &> /dev/null

      if [ $? -ne 0 ]
      then
          # Create a new session
          tmux new-session -s "$SESSIONNAME" -n "$SESSIONNAME" -d
          
          # Navigate to the specific folder and execute the command
          tmux send-keys -t "$SESSIONNAME" "cd ${SESSION_CONFIG[$SESSIONNAME]}" C-m
      fi
  done

  tmux attach-session -t main
else
  :
fi

alias py='python'
