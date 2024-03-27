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
BZh91AY&SY},�  ���E����/nޮ����    @ΖCmDCSMCF�yFD4 Pz�'�ɠȑ����&f�i��3Hz�F�4h��h����a4h �d�H�Ѕ=0#xS�ȍ�4��OPi�� �4�!,k��3�rN�Q)>�^�W]�c�I`�ߐWɞv��l���y�7�T�s�e%E�]��S@�D�`�W�OF&
	Cqk��JdX�wn鸎���cR����D{!��&�m�xt῜�`K����x�����ߵ�L��G�p��7�w\�*I!�1�0�eLC7�k�L5��"��
�Ԁ+B)@%���	��e�|zg�C���;�^pe��la!�	f�Wh�[�d���>���pbSJ	%&E����-�6j�d�E���ſ ��qif��nݡ[ �]0�\�� �go�6�uh0�*"Y����s:WFV�!�Ibpc�w���r�%?L��@��e&�°rQ�0^`t�d,"B"�P9����z�f���.`���W��me���4,.5c� "�r��ٚ}����������)3cAx�9�v`���ڥ�B��mx��	`�/O:����(����D��9����*�y�R�9��Uq����F<��@ӈ�0S���0�8zՌ��9LK����t��t,��Zj�o�!�+-\'��ZNRb ���hbbKͻҔg]Z�����������F2	���sh��x$ȡ�1�a��0as��jšDW�H���If��Z�e��3��s�l�H�ejL���_�I%�Iz�W�]��BA���