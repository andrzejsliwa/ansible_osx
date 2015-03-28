INSTALL_DIR=~/.ansible_osx
/usr/bin/env git clone git@github.com:andrzejsliwa/ansible_osx.git $(INSTALL_DIR)
(cd $(INSTALL_DIR) && make)
