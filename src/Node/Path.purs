module Node.Path where

-- |
-- Type for strings representing file paths.
--
type FilePath = String

-- |
-- Normalize a string path, taking care of `..` and `.`, duplicated slashes,
-- etc. If the path contains a trailing slash it is preserved. On Windows
-- backslashes are used.
--
foreign import normalize
  "var normalize = require('path').normalize;" :: FilePath -> FilePath

-- |
-- Joins two path segments together and normalizes the resulting path.
--
foreign import join
  "var join = function (start) { \
  \  return function (end) { \
  \    return require('path').join(start, end); \
  \  }; \
  \}" :: FilePath -> FilePath -> FilePath

-- |
-- Resolves `to` to an absolute path ([from...], to).
--
foreign import resolve
  "var resolve = function (from) { \
  \  return function (to) { \
  \    return require('path').resolve.apply(this, from.concat([to])); \
  \  }; \
  \};" :: [FilePath] -> FilePath -> FilePath

-- |
-- Solve the relative path from `from` to `to`.
--
foreign import relative
  "var relative = function (from) { \
  \  return function (to) { \
  \    return require('path').relative(from, to); \
  \  }; \
  \}" :: FilePath -> FilePath -> FilePath

-- |
-- Return the directory name of a path.
--
foreign import dirname
  "var dirname = function (path) { \
  \  var p = require('path'); \
  \  return p.normalize(p.dirname(path)); \
  \}" :: FilePath -> FilePath

-- |
-- Return the last portion of a path.
--
foreign import basename
  "var basename = require('path').basename;" :: FilePath -> FilePath

-- |
-- Return the last portion of a path, also dropping a specific file extension
-- if it matches the end of the name.
--
foreign import basenameWithoutExt
  "var basenameWithoutExt = function (path) { \
  \  return function (ext) { \
  \    return require('path').basename(path, ext); \
  \  }; \
  \}" :: FilePath -> FilePath -> FilePath

-- |
-- Return the extension of the path, from the last `.` to end of string in the
-- last portion of the path. If there is no `.` in the last portion of the path
-- or the first character of it is `.`, then it returns an empty string.
--
foreign import extname
  "var extname = require('path').extname;" :: FilePath -> FilePath

-- |
-- The platform-specific file separator. `\\` or `/`.
--
foreign import sep
  "var sep = require('path').sep;" :: String

-- |
-- The platform-specific path delimiter, `;` or `:`.
--
foreign import delimiter
  "var delimiter = require('path').delimiter;" :: String
