# frozen_string_literal: true

CONFIG['CC'] = 'clang'
CONFIG['CXX'] = 'clang++'
$CFLAGS = ['-Wall', '-O3', '-flto', '-march=native', $CFLAGS].join(' ')
$CXXFLAGS = ['-Wall', '-O3', '-flto', '-march=native', $CXXFLAGS].join(' ')
$LDFLAGS = ['-flto', $LDFLAGS].join(' ')

require 'mkmf'
create_makefile('native/triangle')
