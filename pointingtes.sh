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
BZh91AY&SY�8� ���� }�����������PD@ `� = ���B
=�$    H  0!��� h   h24 4�h���?~������@ Ѡ     h   	UG���  A��@F@�!� ��T��Hɡ� ���`����@ h��A��� h   h24 4�h���� �O i3E7���7�m�O#Sڇ��#Bz����=OѪ6�`�@�H}aA�pPJ��Kp���Jhz� ����h �� e��d�>��`�"��6���/�����|\Z���n�p��?(?|�d.�9�C�p�����@�B���* }`��A�`���a82`���\��n�7���x�Vx*��UY���j�� ��Z�UUUUUZC���@��pv ���v �C@^�$��������0�~~}!�;�<V�M����h?O \�~�xA���k3����@��
?P6�k�\G�� ^��!@��\�@P+�       �U*��ꪕe�x�
 } P 2��@���"z� �"�����R``��Pr��(����=���|��C�~�������=� ������:zzzsc�8��P�'��IpU� �(✪��J��J�������������x(X
���������������"��(�"��(�"��(�"��6Yp& ~��A�,
���   �Uy�# ��@9��@�@8 �= ��<��_����|@2��$o��iT�U*�JDDDDOF��Y�*�-U��U:X �����QU*�J�*�@6����f�;�_�}�*��26�\�P#�(� 8.��w�u� 2yՑ���Z�����ˬ��U,�V�ڪ��w��ʻ{n��r�.0�'.|
���a:������\aN\����ϕ���~
��U�Ժ���3���ꭹ�UU��Uk��A~��-䂲�ƃZ-�hު�n���ޗ]��U΁�E����7�U]�]ޅW]���%V�h�t5�]��eW�U��u�U�Us�t�n�kF��Υ��x6fUl�9C@d_R�U*�����vp��*�R�V�3����`���}*�R�p�� �~�'x �;pb��>� P?�4�����L�I����k���@2�,��UZ�
�0�2d�0�����7���t�>�A�	��H#�P

�v@^ { ����c���KZZR��-���������������������������������������J����KZZR� ��A@6��>�0l���B�5x	���`������#0df�h8CHp��	�:�Hy��Ax�/���� .`	�t�A��@�����2@]yTUEQT�(��(��(���������������T^�3��^�{�2X@��(A�Pl��=�hl�N�f	����$��R\<`t�j	�C�	�} ��{���(f�?�?%��ꪳ�@<�=�4P|AA�}@�jz@h� 5��k��p.h �BLإ썁>@��f́p|�w��Y!���H�Pu��1�Y�fB�y���!��UI| ,	@��jP�^�J�0��	����p��0X�z��	�4��"�P()

A(.���?`r�i' ^��& :C����Rn��.j�`����`���p�s0~��mPC��6{����
�Sx�m�pL�x`L�Ē9<!��pݦ�`�� �$�}@XڒP)�BL��(!�P87���`	��&��.N$�	���9A�p^���@i����z�,��r@�����I1Yx�7�ԇ���G�@-� �1��h��2��((@l�U� �p�xLPw/e0P^�j��_���U�U��   e_
���UU�ʭ��h�?� � Xq� ���$�B�mu,���0־���t2 ���>�Ma�t�F��A/N�j} ���	�5�����HB�x^�\��X	p�`\ | ��cB��-�g��}���`m�cX��T�1���-\j�ի�p7˃��gІ�, �A��,�����6�p^`�q����u�d\
�q� �T��C08��t�������� �>p�m�(()!�@�6鹭u�PX-j��U��A�@p��SX���p=��0�I�����_���a�a<�=Ud�EUU�I�f� 4@ � ��kZ�I%�eUd�Eh ������窱� 1.11114�!B��` ����$���U�I؀UUU$�UR��I"���$���$�+� Pp� 3,�p'�I	$~h@J ��R̄��) ��]��BB��H