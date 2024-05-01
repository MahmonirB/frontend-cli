---
to: <%=package%>/.editorconfig
---
root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
indent_size = 2
indent_style = space
trim_trailing_whitespace = true

[*.{ts,tsx,js,jsx}]
indent_style = space
indent_size = 2
quote_type = single

[*.json]
indent_style = space
indent_size = 2

[*.svg]
insert_final_newline = false

[Dockerfile]
indent_style = space
indent_size = 4

[Makefile]
indent_style = tab
indent_size = 4

[*.{css,scss,less}]
indent_style = space
indent_size = 2

[*.{md,mdx}]
trim_trailing_whitespace = false
indent_size = 4

[*.{yaml,yml}]
indent_style = space
indent_size = 4
trim_trailing_whitespace = false

[*.html]
indent_style = space
indent_size = 2

