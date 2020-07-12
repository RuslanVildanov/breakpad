INCLUDEPATH += $$PWD

include($$PWD/libdisasm/libdisasm.pri)
include($$PWD/sys/mingw.pri)
include($$PWD/sys/mman.pri)

HEADERS += \
    $$PWD/curl/curl.h \
    $$PWD/curl/curlbuild.h \
    $$PWD/curl/curlrules.h \
    $$PWD/curl/curlver.h \
    $$PWD/curl/easy.h \
    $$PWD/curl/mprintf.h \
    $$PWD/curl/multi.h \
    $$PWD/curl/stdcheaders.h \
    $$PWD/curl/typecheck-gcc.h \
    $$PWD/curl/types.h \
    $$PWD/lss/linux_syscall_support.h \
    $$PWD/musl/include/elf.h
