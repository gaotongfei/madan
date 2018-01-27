#!/bin/bash
gem uninstall madan
gem uninstall tty-markdown
rm -rf /tmp/tty-markdown
echo -e '\ncloning tty-markdown...\n'
git clone git@github.com:piotrmurach/tty-markdown.git /tmp/tty-markdown
cd /tmp/tty-markdown
git checkout 790106a
rake build
echo -e '\ninstalling tty-markdown...\n'
gem install pkg/tty-markdown-0.1.0.gem
echo -e '\ninstalling madan...\n'
gem install madan
