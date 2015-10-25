"use strict";

// module Node.Path

var path = require("path");

exports.normalize = path.normalize;

exports.concat = function (segments) {
  return path.join.apply(this, segments);
};

exports.resolve = function (paths) {
  return function () {
    return path.resolve.apply(this, paths);
  };
};

exports.relative = function (from) {
  return function (to) {
    return path.relative(from, to);
  };
};

exports.dirname = function (p) {
  return path.normalize(path.dirname(p));
};

exports.basename = path.basename;

exports.basenameWithoutExt = function (p) {
  return function (ext) {
    return path.basename(p, ext);
  };
};

exports.extname = path.extname;

exports.sep = path.sep;

exports.delimiter = path.delimiter;
