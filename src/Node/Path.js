"use strict";

import path from "path";
export var normalize = path.normalize;

export function concat(segments) {
  return path.join.apply(this, segments);
}

export function resolve(from) {
  return function (to) {
    return function () {
      return path.resolve.apply(this, from.concat([to]));
    };
  };
}

export function relative(from) {
  return function (to) {
    return path.relative(from, to);
  };
}

export function dirname(p) {
  return path.normalize(path.dirname(p));
}

export var basename = path.basename;

export function basenameWithoutExt(p) {
  return function (ext) {
    return path.basename(p, ext);
  };
}

export var extname = path.extname;
export var sep = path.sep;
export var delimiter = path.delimiter;
export var parse = path.parse;
export var isAbsolute = path.isAbsolute;
