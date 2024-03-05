local rainbow_delimiters = require("rainbow-delimiters")

require 'rainbow-delimiters.setup'.setup {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        commonlisp = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        latex = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterYellow',
        'RainbowDelimiterViolet',
        'RainbowDelimiterBlue',
        'RainbowDelimiterGreen',
        'RainbowDelimiterOrange',
    },
    blacklist = {'c', 'cpp'},
}
