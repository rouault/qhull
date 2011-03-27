# -------------------------------------------------
# libqhullp.pro -- Qhull shared library with qh_qhPointer
# -------------------------------------------------

DESTDIR = ../../bin
TEMPLATE = lib
CONFIG += shared warn_on
CONFIG -= qt incremental
build_pass:CONFIG(debug, debug|release) {
    TARGET = qhull-pd
    OBJECTS_DIR = Debug
}else:build_pass:CONFIG(release, debug|release) {
    TARGET = qhull-p
    OBJECTS_DIR = Release
}
win32-msvc* : QMAKE_LFLAGS += /INCREMENTAL:NO

DEFINES += qh_QHpointer # libqhull/user.h

include(../qhull-warn.pri)
include(../qhull-libsrc.pri)
