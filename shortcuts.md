# Shortcuts

## Leader

Custom leader is `,`

## Default

### Navigation

| Keys  | Command                         |
|-------+---------------------------------|
| h     | move left                       |
| j     | move down                       |
| k     | move up                         |
| l     | move right                      |
| <C-b> | page up                         |
| <C-f> | page down                       |
| %     | jump to matching brace          |
| w     | jump to start of word           |
| W     | jump to start of word (no punc) |
| e     | jump to end of word             |
| E     | jump to end of word (no punc)   |
| b     | jump back by words              |
| B     | jump back by words (no punc)    |
| 0     | jump to start of line           |
| ^     | jump to first non-blank char    |
| $     | jump to end of line             |
| gg    | go to first line                |
| :#    | jump to line number             |

### Insert/Append Text

| Keys  | Command                            |
|-------+------------------------------------|
| i     | enter insert mode                  |
| I     | enter insert mode at start of line |
| a     | append after cursor                |
| A     | append at end of line              |
| ea    | append at end of word              |
| o     | open new line below                |
| O     | open new line above                |
| <esc> | exit insert mode                   |

### Editing

| Keys  | Command                      |
|-------+------------------------------|
| r     | replace single char          |
| J     | join with line below         |
| cc    | replace entire line (insert) |
| cw    | replace to end of word       |
| c$    | replace to end of line       |
| s     | delete char and replace      |
| u     | undo                         |
| <C-r> | redo (remapped to CtrlP)     |
| u     | lowercase selection          |
| U     | uppercase selection          |
| >>    | indent right                 |
| <<    | indent left                  |
| ddp   | swap current line with next  |

### Cut and Paste

| Keys | Command               |
|------+-----------------------|
| dd   | cut a line            |
| dw   | delete word           |
| x    | delete char           |
| X    | delete prev char      |
| D    | delete to end of line |
| yy   | yank a line           |
| 2yy  | yank 2 lines          |
| yw   | yank word             |
| y$   | yank to end of line   |
| p    | paste                 |
| P    | paste before          |

### Visual Mode

| Keys  | Command                 |
|-------+-------------------------|
| v     | enter visual mode       |
| V     | enter line visual mode  |
| <C-v> | enter visual block mode |


## Exiting

| Keys | Command         |
|------+-----------------|
| :w   | save            |
| :wq  | save and quit   |
| :x   | :wq             |
| :q   | quit            |
| :q!  | quit w/o saving |

## Search/Replace

| Keys                  | Command              |
|-----------------------+----------------------|
| /pattern              | search for a pattern |
| n                     | move to next found   |
| N                     | move to prev found   |
| :s/pattern/pattern/g  | search and replace   |
| :s/pattern/pattern/gc | with confirmations   |

## Multiple Files

| Keys  | Command                 |
|-------+-------------------------|
| :e    | edit file in new buffer |
| :tabe | edit file in new tab    |
| :sp   | open new file in split  |

## Tabs

| Keys      | Command       |
|-----------+---------------|
| <C-tab>   | next tab      |
| <C-S-tab> | prev tab      |
| :tabr     | first tab     |
| :tabl     | last tab      |
| :tabm#    | move tab to # |


## Custom

| Keys      | Command                  |
|-----------+--------------------------|
| ,w        | quick save               |
| za        | toggle fold              |
| ,ev       | edit vim config          |
| ,ep       | edit vim plugins         |
| ,em       | edit vim mappings        |
| ,es       | edit vim snippets        |
| ,dab      | delete all blank lines   |
| ,<space>  | clear search             |
| ,f        | set foldlevel            |
| ,su       | sort by line length      |
| ,lm       | artisan make             |
| <C-H>     | focus left               |
| <C-L>     | focus right              |
| <C-K>     | focus up                 |
| <C-J>     | focus down               |
| <S-Right> | grow split               |
| <S-Left>  | shrink split             |
| <C-G>     | swap splits              |
| <C-]>     | jump to class definition |

## Plugins

[Vim NERDTree](https://github.com/scrooloose/nerdtree)

| Keys | Command              |
|------+----------------------|
| ,~   | toggle browser       |
| O    | recursively open     |
| X    | recursively close    |
| s    | open split           |
| p    | go to parent         |
| P    | go to root           |
| I    | toggle hidden files  |
| r    | refresh current node |
| R    | refresh root node    |

[Vim Surround](https://github.com/tpope/vim-surround)

| Keys  | Command                        |
|-------+--------------------------------|
| cs^#  | change surrounding ^ to #      |
| cst#  | change surrounding tag to #    |
| ds#   | delete surrounding #           |
| ysiw# | add surrounding # to word      |
| cs{   | surround with `{`, no spaces   |
| yss#  | wrap entire line with #        |
| VSt   | wrap entire line with html tag |

[Vim TableMode](https://github.com/dhruvasagar/vim-table-mode)

| Keys         | Command                |
|--------------+------------------------|
| ,tm          | toggle table mode      |
| ,tdd         | delete entire row      |
| ,tdc         | delete entire column   |
| <pipe><pipe> | enter table header sep |

[Vim TagBar](https://github.com/majutsushi/tagbar)

| Keys | Command                   |
|------+---------------------------|
| ,ds  | Document Summary (toggle) |

[Vim GitGutter](https://github.com/airblade/vim-gitgutter)

| Keys | Command           |
|------+-------------------|
| ,gd  | toggle git gutter |
| [c   | next change       |
| ]c   | prev change       |
| ,hp  | preview hunk      |
| ,hs  | stage hunk        |
| ,hu  | undo hunk         |

[PDV](https://github.com/tobyS/pdv)

| Keys | Command         |
|------+-----------------|
| ,d   | create docblock |

[Php Namespace](https://github.com/arnaud-lb/vim-php-namespace)

| Keys | Command                   |
|------+---------------------------|
| ,n   | insert use statement      |
| ,f   | expand to full class name |
| ,sa  | sort uses alphabetically  |

[Vim Fugitive](https://github.com/tpope/vim-fugitive)

| Keys     | Command         |
|----------+-----------------|
| :Gdiff   | pretty git diff |
| :Gstatus | git status      |

[Vim Vinegar Browser](https://github.com/tpope/vim-vinegar)

| Keys | Command                    |
|------+----------------------------|
| -    | open browser               |
| .    | prepopulate filename on cl |
| y    | yank absolute path of file |

[Vim AutoFormat](https://github.com/Chiel92/vim-autoformat)

| Keys                  | Command              |
|-----------------------+----------------------|
| :Autoformat           | need to map shortcut |
| :retab                | fix tabs             |
| :RemoveTrailingSpaces | duh                  |

[Vim Commentary](https://github.com/tpope/vim-commentary)

| Keys | Command             |
|------+---------------------|
| gc   | comment selection   |
| gcc  | comment entire line |

## Snippets

via [Vim-UltiSnips](https://github.com/SirVer/ultisnips)
also [Vim-SnipMate](https://github.com/garbas/vim-snipmate)

### JS

| Snippet | Expanded              |
|---------+-----------------------|
| =fn     | equals function       |
| $click  | jquery click function |

### PHP

| Snippet        | Expanded               |
|----------------+------------------------|
| <?             | <?php                  |
| ns             | namespace              |
| fn             | function               |
| met            | public function        |
| pmet           | private function       |
| promet         | protected function     |
| smet           | static function        |
| if             | if->endif              |
| ife            | if else                |
| fe             | foreach                |
| =?             | ternary                |
| test           | phpunit test function  |
| $ae            | assertEquals           |
| $ae!           | assertNotEquals        |
| $ac            | assertCount            |
| at             | assertTrue             |
| af             | assertFalse            |
| an             | assertNull             |
| an!            | assertNotNull          |
| belongsTo      | Laravel relationship   |
| belongsToMany  | Laravel relationship   |
| hasOne         | Laravel relationship   |
| hasMany        | Laravel relationship   |
| hasManyThrough | Laravel relationship   |
| morphTo        | Laravel relationship   |
| morphMany      | Laravel relationship   |
| sc             | database schema create |
| foreign        | define foreign key     |

### ScSS

seriously, way too many


## Other Snippets

### SSH

**SSH specified key**

`ssh -i /path/to/key.pem UN@REMOTE

**Move files via SCP**

```
# copy from remote to local
scp un@remote:/path/to/file.txt /path/to/local

# copy from local to remote
scp file.txt un@remote:/path/to/dir/

# copy from remote to remote
scp un@remote:/path/to/file.txt \ un@remote:/path/to/dir/

# requires port?
scp -P 2264 file.txt un@remote:/path/to/dir/
```

## TAR

**create tar.gz**
`tar -zcvf FILE.tar.gz SOURCE`

**extract tar.gz**
`tar -zxvf FILE.tar.gz`

### MySQL

**import local file**
`mysql -u UN -p DBNAME < file.sql`

**export remote database**
`mysqldump -h HOST -u UN -p DBNAME > file.sql`

### SED

**find/replace all in file
```
sed -i 's/OLD/NEW/g' FILE.txt
# on osx
sed -i '' 's/OLD/NEW/g' FILE.txt

# only if matches FOO
sed -i '/foo/s/bar/baz/g'
# only if !matches FOO
sed -i '/foo/!s/bar/baz/g'
# replace multiple to one
sed -i 's/scarlet/red/g;s/ruby/red/g'
# gnu multiple
sed -i 's/scarlet|ruby/red/g'
```

**adjust file line spaces**
```
# double space
sed G
# already has some, but no more than 1
sed '/^$/d;G'
# triple space
sed 'G;G'
# insert line above pattern
sed '/regex/{x;p;x;}'
# insert line below pattern
sed '/regex/G'
# insert line above and below pattern
sed '/regex/{x;p;x;G;}'
# delete all blank lines
sed '^$/d'
# count lines
sed -n '$='
# delete trailing whitespace per line
sed 's/[ t]*$//'
# add commas to numerbers
gsed ':a;s/B[0-9]{3}>/,&/;ta'                     # GNU sed
sed -e :a -e 's/(.*[0-9])([0-9]{3})/1,2/;ta'  # other seds
```

[more](https://whircat.centosprime.com/sed-one-liners/)
