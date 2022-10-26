( cd usr/share/hunspell ; rm -rf en_DK.aff )
( cd usr/share/hunspell ; ln -sf en_GB-ise.aff en_DK.aff )
( cd usr/share/hunspell ; rm -rf en_DK.dic )
( cd usr/share/hunspell ; ln -sf en_GB-ise.dic en_DK.dic )
