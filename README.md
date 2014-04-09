![Makefy Logo](logo-makefy.jpg "Makefy")

## Welcome

Makefy is and easy way to automate build tasks with Makefile. If you're not familiar with make, give it a try. It's not as hard as it seems.

> **WORK IN PROGRESS!**
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

2 - Profit! :)

### How it works?

**Configuration:**

The `config.mk` file contain all the necessary settings for your build process. Check out a detailed diagram of the initial configuration:

    # Main Config
    DATE = `date +'%y.%m.%d %H:%M:%S'`                  # Every backup has a date as a suffix

    # Directories Config
    SRC_FOLDER   = app                                  # Source folder
    DIST_FOLDER  = dist                                 # Deploy/Public folder
    CSS_FOLDER   = $(src_dir)/assets/styles             # Stylesheets folder
    JS_FOLDER    = $(src_dir)/assets/scripts            # Scripts folder
    TEST_FOLDER  = $(src_dir)/spec/**                   # Specs/Tests folder

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
    IGNORE = .gitignore node_modules .DS_Store          # Do not include these files when deploy (only rsync)
    FLAGS  =                                            # Specific options (only rsync)


**Available tasks:**

- `make lint`   : lint Scripts and Stylesheets
- `make compile`: compile your files (html, css and js)
- `make build`  : clean previous files, minifies and concatenates assets files, then copy to dist folder
- `make spec`   : run tests with mocha or jasmine
- `make deploy` : deploy your files with FTP or RSYNC method


## License

[MIT License](http://vitorbritto.mit-license.org/) © Vitor Britto
