TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH += "C:/MinGW/sdk/mingw32/i686-w64-mingw32/include"
INCLUDEPATH += "C:/MinGW/sdk/objfw-i686/include"
QMAKE_CFLAGS += "-Xclang -fobjc-runtime=objfw -fexceptions -fobjc-exceptions -funwind-tables -fconstant-string-class=OFConstantString -Xclang -fno-constant-cfstrings -Xclang -fblocks"
LIBS += -LC:/MinGW/sdk/objfw-i686/lib -lobjfw.dll -lm -lws2_32

HEADERS += 

SOURCES += %{CFileName}

OBJECTIVE_SOURCES += %{CFileName}

OBJECTIVE_HEADERS += 

DISTFILES += %{CFileName}
