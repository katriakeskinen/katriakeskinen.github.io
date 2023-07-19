# Jekyll Installation and Hosting a Local Development Environment for GitHub Pages on macOS

## Step 1: Install Homebrew

Homebrew is a package manager for macOS. To install it, open your terminal and paste the following command:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Step 2: Install Ruby

macOS comes with a preinstalled Ruby, but it's best to use a more recent version using `rbenv`, a version manager for Ruby. Install `rbenv` and `ruby-build` as follows:

```
brew install rbenv
brew install ruby-build

# Initialize rbenv
rbenv init
```

Add `rbenv init` to your shell to enable shims and autocompletion. This can be achieved by typing the following command:

```
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc
```

Now, install Ruby:

```
rbenv install 3.1.3
rbenv global 3.1.3
```

Verify the installation:

```
ruby -v
```

## Step 3: Install Jekyll and Bundler

Install Jekyll and Bundler through RubyGems:

```
gem install jekyll bundler
```

Verify the installation:

```
jekyll -v
bundler -v
```

## Step 4: Install image compression utilities

brew install jpegoptim optipng imagemagick

## Step 5: Clone Your Existing GitHub Pages Project

Navigate to the directory where you want to clone your project and run:

```
git clone https://github.com/katriakeskinen/katriakeskinen.gihub.io.git
```

Replace "username" and "repository" with your GitHub username and your repository's name.

## Step 6: Change to your Project Directory

```
cd katriakeskinen.github.io
```

## Step 7: Build and Serve your site locally

Build and serve your site locally with the following command:

```
bundle exec jekyll serve
```

Now, browse to http://localhost:4000 to see your website.

Happy coding!

**Note:** This README assumes that you're using the default terminal (Zsh) on a recent version of macOS.


------------------------

# Adding or updating images

Place (and commit) the image into `images/` directory. As a part of the build step, images will be scaled and optimised, and the resulting images will be placed into `assets/img/` directory.

For example, to add an image named `my_image.jpeg` to the home page:

1. Copy the `my_image.jpeg` to the `images/` directory
2. Commit the change with git:
```
git pull --rebase
git commit -a -m "Added my_image.jpeg"
git push
```
3. Add the image to the index.md:
```
<div>
<img src="/assets/img/my_image.jpeg" alt="This is my image">
<div class="photo-credit">Photo: My Photographer</div>
</div>
```