RED='\033[0;31m'        #RED
GREEN='\033[0;32m' #GREEN
YELLOW='\033[0;33m' #YELLOW
NC='\033[0m' # No Color
#check if USB / serial is working.
echo "/////////////////////////////////////////////////////////"
echo "///         Check if USB / serial is working.         ///"
TTYCK=$(ls /dev/|grep 'ttyUSB')
echo $TTYCK | grep . && printf "tty USB is ${GREEN}WORKING${NC}\n" || printf "tty USB is ${RED}NOT WORKING!!!! ${NC}\n"
echo "///   Serial is active on /dev/"$TTYCK "               ///"
echo "/////////////////////////////////////////////////////////"
echo "///       Checking for output                         ///"
printf "/// To break out of command ${YELLOW}ctrl+c${NC}                    ///\n"
sleep 2
echo $TTYCK

#stty -F /dev/ttyUSB0 9600 cs8 -cstopb -parenb -icanon min 1 time 1
while true; do
        read -n 100 LINE < /dev/$TTYCK
        #echo $LINE|grep GPRMC
                #echo $LINE|grep GGA
                sleep 1
done
