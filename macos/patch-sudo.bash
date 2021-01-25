set -ex

cd /etc/pam.d
patch <<EOF
*** new	Mon Jan 25 21:33:11 2021
--- sudo	Mon Jan 25 21:32:59 2021
***************
*** 1,4 ****
--- 1,5 ----
  # sudo: auth account password session
+ auth       sufficient     pam_tid.so
  auth       sufficient     pam_smartcard.so
  auth       required       pam_opendirectory.so
  account    required       pam_permit.so
EOF
