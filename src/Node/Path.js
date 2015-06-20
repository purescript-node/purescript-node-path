"use strict";

// module Node.Path

var path = require("path");

exports.normalize = path.normalize;

exports.concat = function (segments) {
  return path.join.apply(this, segments);
};

exports.resolve = function (from) {
  return function (to) {
    return path.resolve.apply(this, from.concat([to]));
  };
};

exports.relative = function (from) {
  return function (to) {
    return path.relative(from, to);
  };
};

exports.dirname = function (path) {
  return path.normalize(path.dirname(path));
};

exports.basename = path.basename;

exports.basenameWithoutExt = function (path) {
  return function (ext) {
    return path.basename(path, ext);
  };
};

exports.extname = path.extname;

exports.sep = path.sep;

exports.delimiter = path.delimiter;
