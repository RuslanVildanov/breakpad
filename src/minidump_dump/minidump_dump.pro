TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -W -Wall -Wextra -std=c++11

include(../google_breakpad/google_breakpad.pri)
include(../common/common.pri)
include(../third_party/third_party.pri)
include(../processor/processor.pri)

INCLUDEPATH += ..

DESTDIR = ../
TARGET = minidump_dump

SOURCES += \
    ../processor/minidump_dump.cc
