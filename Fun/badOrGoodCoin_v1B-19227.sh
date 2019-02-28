#!/bin/bash

#################################
#        BadOrGoodCoin.sh       #
#    Little script for fun to   #
#  notify if a coin is good or  #
#       bad by Douglas828       #
#################################

# Declare coin categories

# DOGE is love
declare -a doge=("DOGE")
# DOGE is life

declare -a amazing=("BTC" "XMR" "ZEL")
declare -a good=("ETH" "DASH" "ETHO" "ETC" "RVN" "ZEC" "BTCZ" "VTC")
declare -a average=("XRP" "LTC" "XLM" "EOS" "USDT" "BNB" "ADA" "NEO" "DCR")
declare -a bad=("USDT" "TRX")
declare -a awful=("BTG" "BCH" "BSV")

# Declare argument one as variable

COIN=$1

# Begin Check

if [ ${amazing[@]} -eq $COIN ]; then
    choice=$(( ( RANDOM % 5 ) + 1 ))
    if( $choice === "1"); then
        echo "Is this a question? Of course $COIN is good!"
    fi
    if( $choice === "2"); then
        echo "Yes. Buy $COIN now."
    fi
fi