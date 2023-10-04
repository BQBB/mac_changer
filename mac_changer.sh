mac=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/:$//');
interface=$1;

ifconfig $interface down;
ifconfig $interface hw ether $mac;
ifconfig $interface up;