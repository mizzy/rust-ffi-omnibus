# coding: utf-8
require 'ffi'

module StringArguments
  extend FFI::Library
  ffi_lib 'target/debug/libstring_arguments.dylib'
  attach_function :how_many_characters, [:string], :uint32
end

puts StringArguments.how_many_characters("göes to élevên")
