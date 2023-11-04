# To create Mariana theme for RStudio
# https://github.com/msberends/mariana

tm_file <- "~/Downloads/mariana.thTheme"

# file to be created:
rs_file <- "~/Downloads/mariana.rstheme"

# converting part:
rstudioapi::convertTheme(tm_file, outputLocation = dirname(rs_file), add = FALSE, force = TRUE)
rstheme <- readLines(rs_file)
rstheme <- c(rstheme,
             "",
             "",
             "/* manually added, see https://github.com/msberends/mariana/blob/main/convert_thTheme_to_rstheme.R */",
             ".ace_paren.ace_keyword.ace_operator {",
             "	color: #FFFFFF;",
             "}",
             ".ace_punctuation.ace_keyword.ace_operator {",
             "  /* grey-ish brackets */",
             "	color: #A6ACB9;",
             "}",
             ".ace_bracket.ace_start {",
             "  /* orange underline of brackets */",
             "	border-bottom: 1.5px solid #F9AE58 !important;",
             "	border-bottom-right-radius: 0px;",
             "	border-bottom-left-radius: 0px;",
             "	background: none;",
             "	border-right: none !important;",
             "	border-left: none !important;",
             "	border-top: none !important;",
             "}",
             ".ace_meta.ace_tag {",
             "  /* element names in e.g. YAML files  */",
             "  color: #5FB4B4;",
             "}",
             ".ace_meta.ace_tag + .ace_keyword {",
             " /* an operator directly following a tag, e.g. the : after an element name in YAML */",
             " /* same colour as comments */",
             "  color: #A6ACB9;",
             "}",
             "#rstudio_workbench_panel_console .ace_editor {",
             "  /* make sure that orange underline of brackets are visible in Console *",
             "  padding-bottom: 3px;",
             "}")
writeLines(rstheme, rs_file)
