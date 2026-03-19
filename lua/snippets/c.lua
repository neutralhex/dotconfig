local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {

-- main function
s("main", {
  t({"#include <stdio.h>", "", "int main(void) {", "    "}),
  i(1, 'printf("Hello, world!\\n");'),
  t({"", "    return 0;", "}"}),
}),

-- printf
s("pf", {
  t("printf(\""),
  i(1),
  t("\\n\""),
  i(2),
  t(");"),
}),

-- for loop
s("for", {
  t("for (int "),
  i(1, "i"),
  t(" = 0; "),
  i(1),
  t(" < "),
  i(2, "n"),
  t("; "),
  i(1),
  t("++) {"),
  t({"", "    "}),
  i(3),
  t({"", "}"}),
}),

-- if statement
s("if", {
  t("if ("),
  i(1, "condition"),
  t(") {"),
  t({"", "    "}),
  i(2),
  t({"", "}"}),
}),

-- struct
s("struct", {
  t("typedef struct {"),
  t({"", "    "}),
  i(1),
  t({"", "} "}),
  i(2, "Name"),
  t(";"),
}),

-- function
s("fn", {
  i(1, "void"),
  t(" "),
  i(2, "function_name"),
  t("("),
  i(3),
  t(") {"),
  t({"", "    "}),
  i(4),
  t({"", "}"}),
}),

}
