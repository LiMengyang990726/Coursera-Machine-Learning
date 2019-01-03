### To submit through Matlab MathWork
**Advantage:**

No need to download MatLab/Octave on local machine.

**Disadvantage:**

MatLab doesn't support folder uploading, you need to upload all files **including: lib** manually.

**How:**

1. upload all files in ex1(for example) to MatLab MathWork

2. `submit()`

3. follow instructions

### To submit through Octave Cli (Mac)
**Advantage:**

Have more flexibility when operating in terminal

**Disadvantage:**

Kind of complex to get Octave installed on Mac-Mojave

**How:**

1. install homebrew package manager `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

  If you have previously installed and found error in executing the following steps, try uninstall it first with `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"`.

  And then use `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)`

  [Refer to this.](https://blog.csdn.net/yemao_guyue/article/details/80575532)

2. install gcc `brew install gcc` (Note: don't use sudo as you will get the error message: `Error: Running Homebrew as root is extremely dangerous and no longer supported.
As Homebrew does not drop privileges on installation you would be giving all
build scripts full access to your system.`)

3.
i) install XQuartz `brew install Caskroom/cask/xquartz`

As you might have the error `homebrew install fails with LibreSSL SSL_read: SSL_ERROR_SYSCALL`

You may want to try `sudo chown -R $(whoami) $(brew --prefix)/*` (Note: `sudo chown -R $(whoami) /usr/local` doesn't work any more after High Sierra)

Then `brew install Caskroom/cask/xquartz`

ii) or install from the website: https://www.xquartz.org/

4. install octave `brew install octave`
