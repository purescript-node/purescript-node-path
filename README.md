# Module Documentation

## Module Node.Path

### Types

    type FilePath  = String


### Values

    basename :: FilePath -> FilePath

    basenameWithoutExt :: FilePath -> FilePath -> FilePath

    delimiter :: String

    dirname :: FilePath -> FilePath

    extname :: FilePath -> FilePath

    join :: [FilePath] -> FilePath

    normalize :: FilePath -> FilePath

    relative :: FilePath -> FilePath -> FilePath

    resolve :: [FilePath] -> FilePath -> FilePath

    sep :: String