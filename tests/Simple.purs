module SimplePathTests where

import Control.Monad.Eff
import Control.Monad.Eff.Exception
import Debug.Trace
import Node.Path

assertEq :: forall a. (Show a, Eq a) => a -> a -> Eff (err :: Exception String, trace :: Trace) {}
assertEq x y =
  if x /= y
    then throwException $ "Assertion failed: " ++ show x ++ " /= " ++ show y
    else trace $ "Assertion passed"

main = do
  assertEq (normalize "/foo/bar//baz/asdf/quux/..") (normalize "/foo/bar/baz/asdf")
  assertEq (join "/foo" "bar") (normalize "/foo/bar")
  --assertEq (resolve ["foo/bar", "tmp/file/", ".."] "a/../subfile") (normalize "/foo/bar")
  assertEq (relative "/data/orandea/test/aaa" "/data/orandea/impl/bbb") (normalize "../../impl/bbb")
  assertEq (dirname "/foo/bar/baz/asdf/quux") (normalize "/foo/bar/baz/asdf")
  assertEq (basename "/foo/bar/baz/asdf/quux.html") "quux.html"
  assertEq (basenameWithoutExt "/foo/bar/baz/asdf/quux.html" ".html") "quux"
  assertEq (basenameWithoutExt "/foo/bar/baz/asdf/quux.txt" ".html") "quux.txt"
  assertEq (extname "index.html") ".html"
  assertEq (extname "index.coffee.md") ".md"
  assertEq (extname "index.") "."
  assertEq (extname "index") ""
  assertEq sep (normalize "/")
  assertEq (delimiter == ";" || delimiter == ":") true
