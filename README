Test Release Blog Locally
===========

The release blog runs on Jekyll. Jekyll is a Ruby framework, therefore the Ruby language should be installed on your OS.

Jekyll is often packaged by Linux distributions so the following instructions should work in most cases:

```bash
$ sudo apt install jekyll
$ git clone the repo
$ jekyll serve
$ Go to http://localhost:4000
```

However, if you do not want to install a Web framework and all of its dependencies at the OS level, you can install Jekyll, Bundler (Ruby dependency manager) and all of the  dependencies (gems) in the project itself.

First edit your ```~/.bashrc``` file and add the following lines:
```bash
# Find locally installed Ruby apps
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
```

Then open a new terminal or reload your configuration in an existing terminal:
```bash
source ~/.bashrc
```
The installation process for the blog on Ubuntu/Debian is:

```bash
$ sudo apt install ruby-full
$ sudo apt install zlib1g-dev # Dependency requirement for the nokogiri gem
$ git clone https://github.com/mozilla/release-blog.git
$ cd release-blog
$ gem install bundler --user-install
$ bundle install --path vendor/bundle
$ bundle exec jekyll serve
$ Go to http://localhost:4000
```

Flags
===========

$ --no-watch  (Do not watch for changes)
$ --watch (Make changes on the fly)
$ --trace (For debug)
