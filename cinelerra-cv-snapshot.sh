#!/bin/bash

set -e

date=$(date +%Y%m%d)
package=cinelerra-cv-2.2.1
# git clone git://git.cinelerra-cv.org/CinelerraCV.git cinelerra-cv-2.2.git
pushd cinelerra-cv-2.2.git
git pull
tag=$(git rev-list HEAD -n 1 | cut -c 1-7)
git archive master --prefix=cinelerra-cv-2.2/ | bzip2 > ../${package}-${date}git${tag}.tar.bz2
#git diff rel2.2.0..master > ../${package}-${date}git${tag}.patch
popd >/dev/null
