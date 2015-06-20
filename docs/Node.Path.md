## Module Node.Path

#### `FilePath`

``` purescript
type FilePath = String
```

Type for strings representing file paths.

#### `normalize`

``` purescript
normalize :: FilePath -> FilePath
```

Normalize a string path, taking care of `..` and `.`, duplicated slashes,
etc. If the path contains a trailing slash it is preserved. On Windows
backslashes are used.

#### `concat`

``` purescript
concat :: Array FilePath -> FilePath
```

Concatenates multiple path segments together and normalizes the resulting path.

#### `resolve`

``` purescript
resolve :: Array FilePath -> FilePath -> FilePath
```

Resolves `to` to an absolute path ([from...], to).

#### `relative`

``` purescript
relative :: FilePath -> FilePath -> FilePath
```

Solve the relative path from `from` to `to`.

#### `dirname`

``` purescript
dirname :: FilePath -> FilePath
```

Return the directory name of a path.

#### `basename`

``` purescript
basename :: FilePath -> FilePath
```

Return the last portion of a path.

#### `basenameWithoutExt`

``` purescript
basenameWithoutExt :: FilePath -> FilePath -> FilePath
```

Return the last portion of a path, also dropping a specific file extension
if it matches the end of the name.

#### `extname`

``` purescript
extname :: FilePath -> FilePath
```

Return the extension of the path, from the last `.` to end of string in the
last portion of the path. If there is no `.` in the last portion of the
path or the first character of it is `.`, then it returns an empty string.

#### `sep`

``` purescript
sep :: String
```

The platform-specific file separator. `\\` or `/`.

#### `delimiter`

``` purescript
delimiter :: String
```

The platform-specific path delimiter, `;` or `:`.


