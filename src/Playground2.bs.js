// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var $$String = require("bs-platform/lib/js/string.js");

function validate(a) {
  return a;
}

function create(a) {
  return a;
}

var upperCase = $$String.uppercase_ascii;

function toString(a) {
  return a;
}

var $$FormData = {
  create: create,
  validate: validate,
  upperCase: upperCase,
  toString: toString
};

var a = "foobarbaz";

console.log(a);

console.log("----------------------------");

console.log($$String.uppercase_ascii(a));

console.log("----------------------------");

console.log($$String.uppercase_ascii(a));

console.log("----------------------------");

var b = a;

exports.$$FormData = $$FormData;
exports.a = a;
exports.b = b;
/*  Not a pure module */