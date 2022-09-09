-- mod-version:3
local syntax = require 'core.syntax'

syntax.add {
	name = "MiniScript",
	files = { "%.ms$" },
	comment = "//",
	patterns = {
		{ pattern = "//.*",                type = "comment"  },
		{ pattern = { '"', '"' },          type = "string"   },
		{ pattern = "[<>!=]=",             type = "operator" },
		{ pattern = "[%+%-%*%/%^@<>:]",    type = "operator" },
		{ pattern = "%d%.%d*[eE][-+]?%d+", type = "number"   },
		{ pattern = "%d%.%d*",             type = "number"   },
		{ pattern = "%.?%d*[eE][-+]?%d+",  type = "number"   },
		{ pattern = "%.?%d+",              type = "number"   },
		{ pattern = "[%a_][%w_]*",         type = "symbol"   },
	},
	symbols = {
		["if"]       = "keyword",
		["not"]      = "keyword",
		["and"]      = "keyword",
		["or"]       = "keyword",
		["else"]     = "keyword",
		["then"]     = "keyword",
		["for"]      = "keyword",
		["in"]       = "keyword",
		["while"]    = "keyword",
		["break"]    = "keyword",
		["continue"] = "keyword",
		["function"] = "keyword",
		["end"]      = "keyword",
		["return"]   = "keyword",
		["new"]      = "keyword",
		["isa"]      = "keyword",
		["self"]     = "keyword2",
		
		["true"]     = "literal",
		["false"]    = "literal",
		["null"]     = "literal",
		["globals"]  = "literal",
		["locals"]   = "literal",
		["outer"]    = "literal",

		["number"]   = "literal",
		["string"]   = "literal",
		["list"]     = "literal",
		["map"]      = "literal",

		["print"]    = "function",
		["range"]    = "function",
		["import"]   = "function",
	},
}
