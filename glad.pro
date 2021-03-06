TARGET = glad
TEMPLATE = lib
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

DESTDIR = ../../build/lib
MAKEFILE = ../../build/makefiles/$${TARGET}
OBJECTS_DIR = ../../build/obj/$${TARGET}

INCLUDEPATH += \
    include \

SOURCES += \
    src/glad.cpp

HEADERS += \
    include/glad/glad.h \
    include/KHR/khrplatform.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
