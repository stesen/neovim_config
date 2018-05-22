#  
# ./install.py --clang-completer --java-completer --go-completer
#

def FlagsForFile( filename, **kwargs ):
    return {
        'flags': [ '-x', 'c++', '-Wall', '-Wextra', '-Werror' ],
    }
