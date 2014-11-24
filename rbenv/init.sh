git clone -q https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone -q https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
. ~/.bashrc
rbenv install 2.0.0-p598
rbenv global 2.0.0-p598
