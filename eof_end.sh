#!/bin/bash

if [ ! -f eoh_end.txt ]; then
    touch eoh_end.txt
fi

cat > eoh_end.txt <<EOH
   Hello,this is eoh
EOH

cat >> eoh_end.txt <<END
   hello,this is end
END
