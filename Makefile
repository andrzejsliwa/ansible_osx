DEP_GCC      = /usr/bin/gcc
DEP_HOMEBREW = /usr/local/bin/brew
DEP_ANSIBLE  = /usr/local/bin/ansible
DEP_SELF     = ~/.ansible_osx
export PATH := /usr/local/bin:$(PATH)

all: $(DEP_GCC) $(DEP_HOMEBREW) $(DEP_ANSIBLE)
	ansible-playbook local.yml

install: $(DEP_SELF)
$(DEP_SELF):
	/usr/bin/env git clone git@github.com:andrzejsliwa/ansible_osx.git $(DEP_SELF)
	cd $(DEP_SELF)
	make

$(DEP_GCC):
	xcode-select --install

$(DEP_HOMEBREW):
	ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$(DEP_ANSIBLE): $(DEP_HOMEBREW)
	brew update
	brew install ansible
