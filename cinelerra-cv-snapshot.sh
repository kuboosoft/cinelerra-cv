#!/bin/bash

set -e

date=$(date +%Y%m%d)
package=cinelerra-cv-2.3
if [ ! -d "$package.git" ]; then
git clone git://git.cinelerra-cv.org/CinelerraCV.git $package.git
fi
pushd $package.git
git pull
tag=$(git rev-list HEAD -n 1 | cut -c 1-7)
git archive master --prefix=$package/ | bzip2 > ../${package}-${date}git${tag}.tar.bz2
#git diff rel2.2.0..master > ../${package}-${date}git${tag}.patch
popd >/dev/null
