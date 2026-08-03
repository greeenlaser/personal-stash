#!/bin/sh

# Move file for use with mf, read more at https://github.com/greeenlaser/personal-stash/tree/main/mf

set -e

# References

FILE=ecosystem.md

# Libraries
T_KW=../../cpp/kalawindow/docs/${FILE}
T_KS=../../cpp/kalaserver/docs/${FILE}
T_KP=../../cpp/kalaphysics/docs/${FILE}
T_KL=../../cpp/kalalua/docs/${FILE}
T_KG=../../cpp/kalagraphics/docs/${FILE}
T_KC=../../cpp/kalacli/docs/${FILE}
T_KA=../../cpp/kalaaudio/docs/${FILE}

#Executables
T_W=../../websites/websites/docs/${FILE}
T_KM=../../cpp/kalamake/docs/${FILE}
T_EH=../../cpp/elypso-hub/docs/${FILE}
T_EE=../../cpp/elypso-engine/docs/${FILE}

# Games
T_MM=../../cpp/_games/metal-metropolis/docs/${FILE}

mf --o --f ${FILE} \
    \
    --t ${T_KW} \
    --t ${T_KS} \
    --t ${T_KP} \
    --t ${T_KL} \
    --t ${T_KG} \
    --t ${T_KC} \
    --t ${T_KA} \
    \
    --t ${T_W} \
    --t ${T_KM} \
    --t ${T_EH} \
    --t ${T_EE} \
    \
    --t ${T_MM}
