#!/bin/sh

# Display usage
cpack_usage()
{
  cat <<EOF
Usage: $0 [options]
Options: [defaults in brackets after descriptions]
  --help            print this message
  --prefix=dir      directory in which to install
  --include-subdir  include the Demo8-1.0.1-Darwin subdirectory
  --exclude-subdir  exclude the Demo8-1.0.1-Darwin subdirectory
EOF
  exit 1
}

cpack_echo_exit()
{
  echo $1
  exit 1
}

# Display version
cpack_version()
{
  echo "Demo8 Installer Version: 1.0.1, Copyright (c) Humanity"
}

# Helper function to fix windows paths.
cpack_fix_slashes ()
{
  echo "$1" | sed 's/\\/\//g'
}

interactive=TRUE
cpack_skip_license=FALSE
cpack_include_subdir=""
for a in "$@"; do
  if echo $a | grep "^--prefix=" > /dev/null 2> /dev/null; then
    cpack_prefix_dir=`echo $a | sed "s/^--prefix=//"`
    cpack_prefix_dir=`cpack_fix_slashes "${cpack_prefix_dir}"`
  fi
  if echo $a | grep "^--help" > /dev/null 2> /dev/null; then
    cpack_usage 
  fi
  if echo $a | grep "^--version" > /dev/null 2> /dev/null; then
    cpack_version 
    exit 2
  fi
  if echo $a | grep "^--include-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=TRUE
  fi
  if echo $a | grep "^--exclude-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=FALSE
  fi
  if echo $a | grep "^--skip-license" > /dev/null 2> /dev/null; then
    cpack_skip_license=TRUE
  fi
done

if [ "x${cpack_include_subdir}x" != "xx" -o "x${cpack_skip_license}x" = "xTRUEx" ]
then
  interactive=FALSE
fi

cpack_version
echo "This is a self-extracting archive."
toplevel="`pwd`"
if [ "x${cpack_prefix_dir}x" != "xx" ]
then
  toplevel="${cpack_prefix_dir}"
fi

echo "The archive will be extracted to: ${toplevel}"

if [ "x${interactive}x" = "xTRUEx" ]
then
  echo ""
  echo "If you want to stop extracting, please press <ctrl-C>."

  if [ "x${cpack_skip_license}x" != "xTRUEx" ]
  then
    more << '____cpack__here_doc____'
The MIT License (MIT)

Copyright (c) 2013 Joseph Pan(http://hahack.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

____cpack__here_doc____
    echo
    echo "Do you accept the license? [yN]: "
    read line leftover
    case ${line} in
      y* | Y*)
        cpack_license_accepted=TRUE;;
      *)
        echo "License not accepted. Exiting ..."
        exit 1;;
    esac
  fi

  if [ "x${cpack_include_subdir}x" = "xx" ]
  then
    echo "By default the Demo8 will be installed in:"
    echo "  \"${toplevel}/Demo8-1.0.1-Darwin\""
    echo "Do you want to include the subdirectory Demo8-1.0.1-Darwin?"
    echo "Saying no will install in: \"${toplevel}\" [Yn]: "
    read line leftover
    cpack_include_subdir=TRUE
    case ${line} in
      n* | N*)
        cpack_include_subdir=FALSE
    esac
  fi
fi

if [ "x${cpack_include_subdir}x" = "xTRUEx" ]
then
  toplevel="${toplevel}/Demo8-1.0.1-Darwin"
  mkdir -p "${toplevel}"
fi
echo
echo "Using target directory: ${toplevel}"
echo "Extracting, please wait..."
echo ""

# take the archive portion of this file and pipe it to tar
# the NUMERIC parameter in this command should be one more
# than the number of lines in this header file
# there are tails which don't understand the "-n" argument, e.g. on SunOS
# OTOH there are tails which complain when not using the "-n" argument (e.g. GNU)
# so at first try to tail some file to see if tail fails if used with "-n"
# if so, don't use "-n"
use_new_tail_syntax="-n"
tail $use_new_tail_syntax +1 "$0" > /dev/null 2> /dev/null || use_new_tail_syntax=""

extractor="pax -r"
command -v pax > /dev/null 2> /dev/null || extractor="tar xf -"

tail $use_new_tail_syntax +165 "$0" | gunzip | (cd "${toplevel}" && ${extractor}) || cpack_echo_exit "Problem unpacking the Demo8-1.0.1-Darwin"

echo "Unpacking finished successfully"

exit 0
#-----------------------------------------------------------
#      Start of TAR.GZ file
#-----------------------------------------------------------;

� �Ո\ �[�kE���6^Cs�DZa�z[�����i�Ѭn�I�&�E��^v.�p�=��I�@�!��@�,}
�V��Pч>�r�R|(R<gvgs����J�s3����|g�s�7suVF���tQ7@k�q\^!�{�D�2�{�p��
B�3y!9^�"��-�g\�Q-�ʻe՘�Ѧ6��J�-x�����>]];+���2��Z����t����
N�o�r��sQ���9@�Պ�s�'�_X�D��������������=[��7������z��pb.���|> �J��s����?�9@��+q,'q���{ z�O� �(��W�����9b���܎�q���퓑Tƺ�4 O�:�jQ>x����ü��cjo;n�ޔt�|�9@�{l�RF�*�6����Cr|K�&m�ҍ�M�+P��!9��Z�w����(��]�|rH�r�A�����
��y��d^�B�)�QQ��YQ���)_2$�������(u+�$�!9�w4�4���F^�����8)a5��	?/=��8Z�G0�l�l�?�p�Q���%�s����8�C�E��`��}���w�vm+]ыim����cT������w�;x-�9��'�<�t0�C	/�k]����#~釣��3#��X�o&O�����zѫ��K|��?6g;h��%���3T���o�g�L�������������]������D��?�k�ں_��������S��忖�{�w�?��$Zpqf�&���?���T�I߯8^9i4�Q�b�~��Ns�u�g������+~�]�fR���:5�\���k�7�gh��^т�����������z�����ق�P��E����֥���>{�I�y~�\u`����Ke�p�F�Q&[ѕ_I�lFWn��I���S)N ��M����� mu
� qAQ�D�U�@�`Ĝ�3�8�)#h;�������R��>\%5/c"��05E���p��܄c�'&{l�!F�I���t���Ȧ����/C�34~�k{�����$��̣��a�x]�Y�,+y���:f�����N����I����� �� �L�4�&])e�81��H�,����7� A��b�	"���	On����W��{"roD~>"��W�?;&����\4e��(�X|����lXc�I=4����d��P����oQ�9v�o/����oP�o�����������o~L�FI��+�^�9A���������|���{���o���^�D��W���F�F�_D�������ٳ?���4hV�4l������,�dZp�uLKW+��*���ʄtalhtDxm��7)��\"���Ld{}V+��y�a�2��5�a���kL��_\%�&$�0�&[�v��W� @  