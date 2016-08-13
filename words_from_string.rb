# /./ - Any character except a newline.
# /./m - Any character (the m modifier enables multiline mode)
# /\w/ - A word character ([a-zA-Z0-9_])
# /\W/ - A non-word character ([^a-zA-Z0-9_]). Please take a look at Bug #4044 if using /\W/ with the /i modifier.
# /\d/ - A digit character ([0-9])
# /\D/ - A non-digit character ([^0-9])
# /\h/ - A hexdigit character ([0-9a-fA-F])
# /\H/ - A non-hexdigit character ([^0-9a-fA-F])
# /\s/ - A whitespace character: /[ \t\r\n\f]/
# /\S/ - A non-whitespace character: /[^ \t\r\n\f]/

def words_from_string(string) 
   string.downcase.scan(/[\w']+/)
end  
