#!/bin/bash
tmux new-session \; \
  send-keys 'htop' C-m \; \
  split-window -v -p 75 \; \
  split-window -h -p 30 \; \
 send-keys 'watch -n1 sensors' C-m \; \
  select-pane -t 1 \; \
  split-window -h   \; \
  send-keys 'watch -n1 ./disk.sh' C-m \; \
  split-window -v -p 20 \; \
  send-keys './stress.sh' C-m \;
#  sleep 100 && killall $!
#  split-window -h   \; \
#  send-keys './disk.sh' C-m \; \
#  send-keys './stress.sh' C-m \;


#  split-window -h  \; \
#  split-window -h  \; \
#  send-keys './disk-info.sh' C-m \; \

# select-pane -t 4 \; \

# select-pane -t 2 \; \
#  split-window -v \; \
#  split-window -v \; \
#  send-keys './stress.sh' C-m \;

#tmux new -s Stress_test -d -s hawkhost
#tmux new-window -t hawkhost:1 -n 'Server1' 'ssh root@10.x.x.x'
#tmux new-window -t hawkhost:2 -n 'Server2' 'ssh root@10.x.x.x'
#tmux new-window -t hawkhost:3 -n 'Server3' 'ssh root@10.x.x.x'
#tmux new-window -t hawkhost:4 -n 'Server4' 'ssh root@10.x.x.x'
#tmux new-window -t hawkhost:5 -n 'Server5' 'ssh root@10.x.x.x'
#tmux split-window -h weatch -n3 sensors
#prefix + «split-window -h» sensors 
#prefix + «split-window -v» ip -br a
#tmux split-window -v htop
#tmux split-pane -h ip -br a
#tmux select-layout even-vertical
#tmux attach-session
#tmux select-window -t hawkhost:1
#tmux -2 attach-session -t hawkhost
