# frozen_string_literal: true

CONFIG['CC'] = 'clang'
CONFIG['CXX'] = 'clang++'

$CFLAGS = ['-Wall -Werror=return-type -O3 -flto -march=native', $CFLAGS].join(' ')
$CXXFLAGS = ['-Wall -Werror=return-type -O3 -flto -march=native', $CXXFLAGS].join(' ')

require 'mkmf'
create_makefile('minecraft_3d_printer')
