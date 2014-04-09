![Makefy Logo](logo-makefy.jpg "Makefy")

## Welcome

Makefy is an easy way to automate build tasks with Makefile. If you're not familiar with make, give it a try. It's not as hard as it seems.

> **WORK IN PROGRESS!** <br>
> **TODO LIST:** [https://github.com/vitorbritto/makefy/issues/1](https://github.com/vitorbritto/makefy/issues/1)



## Getting Started

It's quite simple to get start with make. Check the following tasks and how to set up your makefile.

### Installation

1 - First of all, make sure you have [Node.js](http://nodejs.org/) installed. <br/>
2 - Clone this repository and access the generated folder

```bash
$ git clone git://github.com/vitorbritto/makefy.git [project-name]
$ cd [project-name]
```

3 - Execute: `make npm` <br/>
4 - Profit! :)

### How it works?

**Configuration:**

The `config.mk` file contain all the necessary settings for your build process. Check out a detailed diagram of the initial configuration:

    # Main Config
    DATE = `date +'%y.%m.%d %H:%M:%S'`                  # Every backup has a date as a suffix
    DONE  = \033[32m✔\033[32m                           # Color Message for DONE status
    ERROR = \033[32m✖\033[31m                           # Color Message for ERROR status
    INFO  = \033[32m→\033[36m                           # Color Message for INFO status
    LINE  = -----------------------------------------   # Breakline

    # Check Version
    NODE_VERSION := $(shell node --version 2>/dev/null)
    GIT_VERSION  := $(shell git --version 2>/dev/null)

    # Bin Files
    UGLIFYJS = ./node_modules/.bin/uglifyjs
    JSHINT   = ./node_modules/.bin/jshint
    CSSLINT  = ./node_modules/.bin/csslint
    RECESS   = ./node_modules/.bin/recess
    MOCHA    = ./node_modules/.bin/mocha
    JASMINE  = ./node_modules/.bin/jasmine-node

    # Directories
    APP          = app/{scripts,styles,images/icons,fonts,views,spec/{helpers,modules}}
    PUBLIC       = public/{scripts,styles,images/icons,fonts}
    SRC_FOLDER   = app
    DIST_FOLDER  = public
    CSS_FOLDER   = $(SRC_FOLDER)/styles
    JS_FOLDER    = $(SRC_FOLDER)/scripts
    TEST_FOLDER  = $(SRC_FOLDER)/spec

    # Files Config
    VIEWS := $(notdir $(wildcard $(SRC_FOLDER)/*.html)) # HTML files to concatenate
    JSHINT_RULES  = .jshintrc                           # JS Lint rules
    JSLINT_FILES  = $(shell find . -name '*.js')        # JS files to lint
    CSSLINT_RULES = .csslintrc                          # CSS Lint Rules
    CSSLINT_FILES = $(shell find . -name '*.css')       # CSS files to lint
    IGNORE_CSS = legacy.css                             # Don't minify or concatenate these CSS files
    IGNORE_JS  = jquery.min.js legacy.min.js            # Don't minify or concatenate these JS files

    # Deploy Config
    HOST   = ftp.domain.com                             # Hostname
    USER   = username                                   # Username
    PASS   = password                                   # Password
    DIST   = www/public/path                            # Destination Path
    SRC    = path/to/deploy                             # Source Folder
    IGNORE = .gitignore node_modules .DS_Store ...      # Ignore these files (only rsync)
    FLAGS  = ...                                        # Specific options (only rsync)


**Available tasks:**

- `make check`   : stand-alone check for NodeJS and Git versions
- `make npm`     : install dependencies
- `make lint`    : lint Scripts and Stylesheets
- `make scripts` : lint and compile scripts
- `make styles`  : lint and compile styles
- `make compile` : compile your files (html, css and js)
- `make build`   : clean previous files, minifies and concatenates assets files, then copy to dist folder
- `make spec`    : run tests with mocha or jasmine
- `make deploy`  : deploy your files with FTP or RSYNC method
- `make bkp`     : version control with gzip


## License

[MIT License](http://vitorbritto.mit-license.org/) © Vitor Britto
