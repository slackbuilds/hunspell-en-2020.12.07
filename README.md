Includes solely -ise download and en_DK\* symlinks.

```
$ diff hunspell-en.SlackBuild.orig hunspell-en.SlackBuild
59,61c59
< for file in hunspell-en_AU-$VERSION.zip hunspell-en_CA-$VERSION.zip hunspell-en_GB-ise-$VERSION.zip hunspell-en_GB-ize-$VERSION.zip hunspell-en_US-$VERSION.zip ; do
<     unzip $CWD/$file
< done
---
> unzip $CWD/hunspell-en_GB-ise-$VERSION.zip
66,90d63
< pushd $PKG/usr/share/hunspell/
< en_GB_aliases="en_AG en_BS en_BW en_BZ en_DK en_GB en_GH en_HK en_IE en_IN en_JM en_NA en_NG en_NZ en_SG en_TT en_ZA en_ZW"
< for lang in $en_GB_aliases; do
<     ln -s en_GB-ise.aff $lang.aff
<     ln -s en_GB-ise.dic $lang.dic
< done
< en_GB_oxford_aliases="en_GB-oxendict"
< for lang in $en_GB_oxford_aliases; do
<     ln -s en_GB-ize.aff $lang.aff
<     ln -s en_GB-ize.dic $lang.dic
< done
< en_US_aliases="en_PH"
< for lang in $en_US_aliases; do
<     ln -s en_US.aff $lang.aff
<     ln -s en_US.dic $lang.dic
< done
< popd
<
< install -dm755 $PKG/usr/share/myspell/dicts
< pushd $PKG/usr/share/myspell/dicts
< for file in $PKGDIR/usr/share/hunspell/*; do
<     ln -sv ../../hunspell/$(basename $file) .
< done
< popd
<
96a70
> cat $CWD/doinst.sh > $PKG/install/doinst.sh
$
```
