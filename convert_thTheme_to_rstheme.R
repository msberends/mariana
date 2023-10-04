tm_file <- "~/Downloads/mariana.thTheme"

# file to be created:
rs_file <- "~/Downloads/mariana.rstheme"

# converting:
rstudioapi::convertTheme(tm_file, outputLocation = dirname(rs_file), add = FALSE, force = TRUE)
rstheme <- readLines(rs_file)
rstheme <- c(rstheme, ".ace_paren.ace_keyword.ace_operator {",
             "	color: #FFFFFF;",
             "}",
             ".ace_punctuation.ace_keyword.ace_operator {",
             "	color: #A6ACB9;",
             "}",
             "",
             ".ace_bracket.ace_start {",
             "	border-bottom: 1.5px solid #F9AE58 !important;",
             "	border-bottom-right-radius: 0px;",
             "	border-bottom-left-radius: 0px;",
             "	background: none;",
             "	border-right: none !important;",
             "	border-left: none !important;",
             "	border-top: none !important;",
             "}")
writeLines(rstheme, rs_file)
