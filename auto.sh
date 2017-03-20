COUNTER=0

while [ $COUNTER -lt 5 ]; do

killall screen
killall tmux

screen -S bot lua bot.lua # Set Yours (Like : nohup ./launcher2.sh or screen php bot.php or ETC)

sleep 5

done