#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYI�d< O��p1 ���?'ݎ����`>��H*�P  j�OSM56��	�1� 4ɂdb&�d��dɄ� d4��&� M�24ɉ�ɓ	�@�h�M �	 T�m'�i��&!�14��i� �&�d8��&&�&L&�!�4�40h$H  ЍL�SM�4�6��<�Й&��XC���S��\s��I���1�4��S%o��cAclD4��Q��SA�p�i��d�����q+ �9�	u� ^dBJ�yv2ٝ3�@>��[�]�4���؅�P�A��I��_���������-��	ok���͟d�4@��c�L����|X����fh��C%�9ڥR�lt�
T6�E����3�\�m�v$�I����=(�#��k� JPmΜN��>2Ķ���Ʒd��3��a������Q7�ۛ�y�'k�A�';)/�	��R���t�YRD�7|��:i�+�p��["�LHGſd"z��	$��ib`&%ciKK��(y�C6��%��a��� �e�V���.�)/-폈'����;:66�6��i�װ�5��mwLHҹ �H۰���v@��n�JДJ�_s�F�\od�x�&D�R<C_$�6C��_�6�&�I�SP
�7jx��J=B�D��If�?M�Uݶۃ@��ܷS�ĠL���� b���i��7�4d�
221Y����b*�[[�D���_rl-/&���)�T-	8,AB�HT*$�|;ϋ���yՉ��Z��H�?!d����"Bhmtq���}�Z$"�f[���J��)��+�F�	������um$��/1���e��|B�!�Z�l$�1�7�3��
v�Le��FА�!!Q)6 ���l!��zF���$��ҁ̐|ҁ}�0n��w�Z���fIeg���d8.�e�1�+�Jn�\[,as�f[�����>L�j�a�T�!�8���B>���SL0+��4��������TXD�L_C /��+�E��h
��3pΨs�Khv��&#f�%mے@�8VDJ�J�	ڐ�t�1-H8��n6#*��eS@�i���Hb��^�Z7_y^�*�".��������6J��#�DF���ihV���2�H?T��]��h�M<Q���N�Z��+-�v`���^b��Ɇ�A$��&�&U}(�f(� K3p
�Z�#�<l5w9#�E�<9!��
@n3��]'�LS>�!
�&*i�F�t�K\ǯN�Խㅑ�a��z�4���ވ���B\�$Ъ��J�B� 䐑j����H����"�h���1��L3��`|��y�ye�MQ�>&ʜe���=%�,'�Ƨ�����VT]j�&K#kK�K�}"�e ����v���c�]t��1���`M5R^�aJK��ĄT�BG`��������@Y�p5���DhYObF14��=���$s�a�t�C
~�B�u<�-	���%�M`n�%ىJ����f*�f��3;fج��/!HrpJ�v'P��[�>6�ap��~���� 7��V�oV�Jr ;��re�v%�(�9����9���.���uȌY��£����I|5�(k��\V��7��Y��T�<J����%)x�ԇ\su�]�1NwŸ�5�9"b�Q�����I��ї($F�")�W��G�V��A�dg���I+[�Ҧ���9`��]��:��������W���>��庖�mT���U'�P��.�"��?�8�ѠH������x��ܑN$eY 