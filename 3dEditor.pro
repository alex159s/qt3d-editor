TEMPLATE = app

QT += qml quick widgets 3dcore 3drender 3dinput 3dlogic 3dquick

SOURCES += src/main.cpp \
    src/editorviewportitem.cpp \
    src/editorscene.cpp \
    src/editorsceneitemmodel.cpp \
    src/editorsceneitem.cpp \
    src/editorsceneitemcomponentsmodel.cpp \
    src/editorsceneparser.cpp \
    src/components/transformcomponentproxyitem.cpp \
    src/components/editorsceneitemtransformcomponentsmodel.cpp \
    src/components/materialcomponentproxyitem.cpp \
    src/components/editorsceneitemmaterialcomponentsmodel.cpp \
    src/components/meshcomponentproxyitem.cpp \
    src/components/editorsceneitemmeshcomponentsmodel.cpp \
    src/components/lightcomponentproxyitem.cpp \
    src/components/editorsceneitemlightcomponentsmodel.cpp \
    src/components/qdummyobjectpicker.cpp \
    src/undohandler/undohandler.cpp \
    src/undohandler/insertentitycommand.cpp \
    src/undohandler/removeentitycommand.cpp \
    src/undohandler/renameentitycommand.cpp \
    src/undohandler/propertychangecommand.cpp \
    src/undohandler/modelrolechangecommand.cpp \
    src/undohandler/replacecomponentcommand.cpp

RESOURCES += qml.qrc \
    images.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

INCLUDEPATH += src src/components src/undohandler

HEADERS += \
    src/editorviewportitem.h \
    src/editorscene.h \
    src/editorsceneitemmodel.h \
    src/editorsceneitem.h \
    src/editorsceneitemcomponentsmodel.h \
    src/editorsceneparser.h \
    src/components/transformcomponentproxyitem.h \
    src/components/editorsceneitemtransformcomponentsmodel.h \
    src/components/materialcomponentproxyitem.h \
    src/components/editorsceneitemmaterialcomponentsmodel.h \
    src/components/meshcomponentproxyitem.h \
    src/components/editorsceneitemmeshcomponentsmodel.h \
    src/components/lightcomponentproxyitem.h \
    src/components/editorsceneitemlightcomponentsmodel.h \
    src/components/qdummyobjectpicker.h \
    src/undohandler/undohandler.h \
    src/undohandler/insertentitycommand.h \
    src/undohandler/removeentitycommand.h \
    src/undohandler/renameentitycommand.h \
    src/undohandler/propertychangecommand.h \
    src/undohandler/modelrolechangecommand.h \
    src/undohandler/replacecomponentcommand.h
