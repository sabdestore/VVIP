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
BZh91AY&SY%�v  ��� }���oޮ����    P��fgv�G"�He5='����jh�F� h��=&����M&��F�OH2�2��2L$HS&M���M6�4a �#�T` @        �"d���*{"��ڟ��  4 zCA�LfKR�%9����[�*�_/�>��
 �:��}d�<�ٕ�ʊf�0#8?�}�B����O�&��GZF"R��|���̑d�&��Dk�e\Wq,S6E��	4�iO-� ��P���ME�i��ݹa�K��=�,{�V,���P�"G9:JZ�Y�ѤCB��R$�n��ִ`����v"h}�	�O�9s4���2�[�c"���x���P��a��(2��h�I<ۅz'P�d�UQ�I k�0���FO�rAX�Թމ�j�!t���tg��8w2$ x��xT0Q�|��(v5�cP��A�~&4"�fw�8�\��TOckF!�R����Ł����"����L��SZ|��c�_(k��U��v�ab�>c
x �(�͛k�Z�u����k���,�`EH������	���׭^�p���+F�;�E�R��#�.fm)Q�!!�Q#���jć�V)҇�Y� `?��b�M�����Ȕ����#a*��um$7�2�k(�5`ɼ]5�ͤ�� m�1��ףsl΁^��+�Y*���" ��lR��z8�ҢOq�'=��|�f\�'iX��a��N��2���Tp6�	�E�7�pYG5"�*�#)h��u6���4hZrg�d�"��U��oc��6����*Ѿ0���6�jT���M�Z�a\T�C􂓴@�g8L��uԊ�rks*'@P�9kpW����W����DX��x�kre�v��k	M��&��c&]�d�b*P6�b�k)��p�QGI$ͩث5��N��²JE��ZH�-J[C���# i�jH�cL�6�h/�Yw'�
fM�"�o����Q- �8���� 2 ��]��B@��