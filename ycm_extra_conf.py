import os
import ycm_core

# You can set a directory with a lot of libraries to be search recursively here
ArduinoLibDir = [
  # "/Applications/Arduino.app/Contents/Java/libraries"
  "/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/libraries"
]

# This is the list of all directories to search for header files
libDirs = ArduinoLibDir + ["lib"]

flags = [
  # General flags
  '-Wall'
  ,'-Wextra'
  ,'-Werror'

  ,'-Wno-attributes'
  ,'-std=c++17'
  ,'-x'
  ,'c++'

  # Avr-libc flags installed with homebrew
  ,"-isystem/usr/local/Cellar/avr-gcc/7.2.0/avr/include"

  # IDE 1.6.3
  ,'-I/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino'
  ,'-I/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/mega'

    # Customize microcontroler and Arduino version
  ,'-mmcu=atmega2560'
  ,'-DF_CPU=16000000L'
  ,'-DARDUINO=183'
  ,'-D__AVR__'
  ,'-D__AVR_ATmega2560__'

  # ,'-MMD -DUSB_VID=null'
  # ,'-DUSB_PID=null'
]

compilation_database_folder = ''

if os.path.exists( compilation_database_folder ):
  database = ycm_core.CompilationDatabase( compilation_database_folder )
else:
  database = None

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', '.ino', '.m', '.mm' ]

def DirectoryOfThisScript():
  return os.path.dirname( os.path.abspath( __file__ ) )

def MakeRelativePathsInFlagsAbsolute( flags, working_directory ):
  if not working_directory:
    return list( flags )

  new_flags = []
  make_next_absolute = False
  path_flags = [ '-isystem', '-I', '-iquote', '--sysroot=' ]

  for libDir in libDirs:
    for path, dirs, files in os.walk(libDir):
      for d in dirs:
        flag = '-I' + os.path.join(path, d)
        flags.append(flag)

  for flag in flags:
    new_flag = flag

    if make_next_absolute:
      make_next_absolute = False
      if not flag.startswith( '/' ):
        new_flag = os.path.join( working_directory, flag )

    for path_flag in path_flags:
      if flag == path_flag:
        make_next_absolute = True
        break

      if flag.startswith( path_flag ):
        path = flag[ len( path_flag ): ]
        new_flag = path_flag + os.path.join( working_directory, path )
        break

    if new_flag:
      new_flags.append( new_flag )

  return new_flags


def IsHeaderFile( filename ):
  extension = os.path.splitext( filename )[ 1 ]
  return extension in [ '.h', '.hxx', '.hpp', '.hh' ]


def GetCompilationInfoForFile( filename ):
  # The compilation_commands.json file generated by CMake does not have entries
  # for header files. So we do our best by asking the db for flags for a
  # corresponding source file, if any. If one exists, the flags for that file
  # should be good enough.
  if IsHeaderFile( filename ):
    basename = os.path.splitext( filename )[ 0 ]
    for extension in SOURCE_EXTENSIONS:
      replacement_file = basename + extension
      if os.path.exists( replacement_file ):
        compilation_info = database.GetCompilationInfoForFile(
          replacement_file )
        if compilation_info.compiler_flags_:
          return compilation_info
    return None
  return database.GetCompilationInfoForFile( filename )


def FlagsForFile( filename, **kwargs ):
  topdir = os.path.dirname(os.path.abspath(filename))
  if ("/kernel" in topdir) or ("/linux-" in topdir):
    return None
  if database:
    # Bear in mind that compilation_info.compiler_flags_ does NOT return a
    # python list, but a "list-like" StringVec object
    compilation_info = GetCompilationInfoForFile( filename )
    if not compilation_info:
      return None

    final_flags = MakeRelativePathsInFlagsAbsolute(
      compilation_info.compiler_flags_,
      compilation_info.compiler_working_dir_ )

    # NOTE: This is just for YouCompleteMe; it's highly likely that your project
    # does NOT need to remove the stdlib flag. DO NOT USE THIS IN YOUR
    # ycm_extra_conf IF YOU'RE NOT 100% SURE YOU NEED IT.
    #try:
    #  final_flags.remove( '-stdlib=libc++' )
    #except ValueError:
    #  pass
  else:
    relative_to = DirectoryOfThisScript()
    final_flags = MakeRelativePathsInFlagsAbsolute( flags, relative_to )

  return {
    'flags': final_flags,
    'do_cache': True
  }
