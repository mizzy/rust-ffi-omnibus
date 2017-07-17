require 'ffi'

module Integers
  extend FFI::Library
  ffi_lib './target/debug/libintegers.dylib'
  attach_function :addition, [:uint32, :uint32], :uint32
end

puts Integers.addition(1, 2)

