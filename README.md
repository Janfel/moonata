# moonata

Moonata is a restricted subset of the [Moonscript] language, for use in
configuration files. It is engineered to not allow arbitrary code to execute,
becaus nobody wants `os.popen("rm -rf ~")` in a config file.

## Download
There isn't a download link yet. In the meantime, just `git clone` the repo.

### Dependencies
- [Moonscript]

## Usage
```moonscript
moonata = require "moonata"

func, err = moonata.loadfile "myfile.moonata"
configuration = func!
```

## API
**`loadstring (code, [name, [mode]])`**
Like Lua's `load()`. Returns either the code loaded into a function,
or `nil` and an error value.

**`loadfile (fname, [name, [mode]])`**
Like Lua's `loadfile()`. Returns either the code loaded into a function,
or `nil` and an error value.

## Global values
- `_VERSION`
- `tostring`
- `tonumber`
- `pairs`
- `ipairs`
- `next`
- `type`
- `unpack`
- `math`
- `table`
- `string`


## License
See LICENSE

## Author
Copyright (c) Jan Felix Langenbach

[Moonscript]: https://moonscript.org
