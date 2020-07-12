INCLUDEPATH += $$PWD/android/include

HEADERS += \
    $$PWD/android/include/asm-mips/asm.h \
    $$PWD/android/include/asm-mips/fpregdef.h \
    $$PWD/android/include/asm-mips/regdef.h \
    $$PWD/android/include/elf.h \
    $$PWD/android/include/link.h \
    $$PWD/android/include/stab.h \
    $$PWD/android/include/sys/procfs.h \
    $$PWD/android/include/sys/user.h \
    $$PWD/basictypes.h \
    $$PWD/byte_cursor.h \
    $$PWD/convert_UTF.h \
    $$PWD/dwarf/bytereader-inl.h \
    $$PWD/dwarf/bytereader.h \
    $$PWD/dwarf/cfi_assembler.h \
    $$PWD/dwarf/dwarf2diehandler.h \
    $$PWD/dwarf/dwarf2enums.h \
    $$PWD/dwarf/dwarf2reader.h \
    $$PWD/dwarf/elf_reader.h \
    $$PWD/dwarf/line_state_machine.h \
    $$PWD/dwarf/types.h \
    $$PWD/dwarf_cfi_to_module.h \
    $$PWD/dwarf_cu_to_module.h \
    $$PWD/dwarf_line_to_module.h \
    $$PWD/language.h \
    $$PWD/long_string_dictionary.h \
    $$PWD/macros.h \
    $$PWD/md5.h \
    $$PWD/memory_allocator.h \
    $$PWD/memory_range.h \
    $$PWD/module.h \
    $$PWD/path_helper.h \
    $$PWD/scoped_ptr.h \
    $$PWD/simple_string_dictionary.h \
    $$PWD/stabs_reader.h \
    $$PWD/stabs_to_module.h \
    $$PWD/stdio_wrapper.h \
    $$PWD/string_conversion.h \
    $$PWD/symbol_data.h \
    $$PWD/test_assembler.h \
    $$PWD/unordered.h \
    $$PWD/using_std_string.h

SOURCES += \
    $$PWD/convert_UTF.cc \
    $$PWD/dwarf/bytereader.cc \
    $$PWD/dwarf/cfi_assembler.cc \
    $$PWD/dwarf/dwarf2diehandler.cc \
    $$PWD/dwarf/dwarf2reader.cc \
    $$PWD/dwarf/elf_reader.cc \
    $$PWD/dwarf_cfi_to_module.cc \
    $$PWD/dwarf_cu_to_module.cc \
    $$PWD/dwarf_line_to_module.cc \
    $$PWD/language.cc \
    $$PWD/long_string_dictionary.cc \
    $$PWD/md5.cc \
    $$PWD/module.cc \
    $$PWD/path_helper.cc \
    $$PWD/simple_string_dictionary.cc \
    $$PWD/stabs_reader.cc \
    $$PWD/stabs_to_module.cc \
    $$PWD/string_conversion.cc \
    $$PWD/test_assembler.cc
