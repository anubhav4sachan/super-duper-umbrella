#!/bin/bash
ipnport=$(shuf -i8000-9999 -n1)
ipnip=$(hostname -i)
echo -e "
    Copy/Paste this in your local terminal to ssh tunnel with remote
    -----------------------------------------------------------------
    ssh -N -L $ipnport:$ipnip:$ipnport $USER@lambda-dual-zador
    -----------------------------------------------------------------
    Then open a browser on your local machine to the following address
    ------------------------------------------------------------------
    localhost:$ipnport  (prefix w/ https:// if using password)
    ------------------------------------------------------------------
    "
jupyter-lab --no-browser --port=$ipnport --ip=$ipnip

