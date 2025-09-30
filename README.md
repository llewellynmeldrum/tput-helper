# tput-helper
Small make script that shows some basic `tput` syntax for manipulating your terminals output.
Also shows off how you can use these within makefiles or bash/zsh scripts.

<img width="400" alt="screenshot of program" src="https://github.com/user-attachments/assets/bceeb44f-faa1-4589-9456-8491b8c4ed3b" />

I wanted something I could put in my `Makefile` template which could quickly remind me of the `tput` syntax, because I like to have fancy makefiles. 
<br>
## Example 'Fancy' Makefile:
<img width="400" alt="screenshot of fancy makefile" src="https://github.com/user-attachments/assets/86e24cc5-4d88-498b-8cf5-bf1fb8b718b3" />

Isn't that great? Sometimes i just `make run && make clean` over and over again idly. Its awesome.

# Requirements:
gnu make, pretty much any package manager should have it under 'make'
```bash
brew install make
sudo apt-get make
sudo pacman -S make
```

# Usage:
```bash
make
```
or:
``` bash
make tput-helper   # to use it with larger makefiles
```

