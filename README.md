cinelerra-cv
============

Packaging cinelerra-cv for Fedora from rpmfusion and with rpmfusion_nonfree buildroot.

Example:
--------
```
rpmbuild -bs cinelerra-cv.spec  --define "_sourcedir ." --define '_srcrpmdir .'
mock -r fedora-21-x86_64-rpmfusion_nonfree --no-clean --rebuild ./cinelerra-cv-2.2.1-0.9.20141224git70b8c14.fc20.src.rpm
```

Notes:
-----
I used ./cinelerra-cv-snapshot.sh to generate cinelerra-cv-2.2.1-20141224git70b8c14.tar.bz2

It was built on Fedora 21 , ie with external ffmpeg-2.4.x and libmpeg3-1.8 .
