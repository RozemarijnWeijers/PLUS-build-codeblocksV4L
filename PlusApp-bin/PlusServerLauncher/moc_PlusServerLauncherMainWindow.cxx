/****************************************************************************
** Meta object code from reading C++ file 'PlusServerLauncherMainWindow.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../PlusApp/PlusServerLauncher/PlusServerLauncherMainWindow.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'PlusServerLauncherMainWindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PlusServerLauncherMainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      30,   29,   29,   29, 0x09,
      74,   72,   29,   29, 0x09,
     100,   29,   29,   29, 0x09,
     120,   29,   29,   29, 0x09,
     140,   29,   29,   29, 0x09,
     196,  178,   29,   29, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_PlusServerLauncherMainWindow[] = {
    "PlusServerLauncherMainWindow\0\0"
    "connectToDevicesByConfigFile(std::string)\0"
    "e\0keyPressEvent(QKeyEvent*)\0"
    "stdOutMsgReceived()\0stdErrMsgReceived()\0"
    "errorReceived(QProcess::ProcessError)\0"
    "returnCode,status\0"
    "serverExecutableFinished(int,QProcess::ExitStatus)\0"
};

void PlusServerLauncherMainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PlusServerLauncherMainWindow *_t = static_cast<PlusServerLauncherMainWindow *>(_o);
        switch (_id) {
        case 0: _t->connectToDevicesByConfigFile((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 1: _t->keyPressEvent((*reinterpret_cast< QKeyEvent*(*)>(_a[1]))); break;
        case 2: _t->stdOutMsgReceived(); break;
        case 3: _t->stdErrMsgReceived(); break;
        case 4: _t->errorReceived((*reinterpret_cast< QProcess::ProcessError(*)>(_a[1]))); break;
        case 5: _t->serverExecutableFinished((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QProcess::ExitStatus(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PlusServerLauncherMainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PlusServerLauncherMainWindow::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_PlusServerLauncherMainWindow,
      qt_meta_data_PlusServerLauncherMainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PlusServerLauncherMainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PlusServerLauncherMainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PlusServerLauncherMainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PlusServerLauncherMainWindow))
        return static_cast<void*>(const_cast< PlusServerLauncherMainWindow*>(this));
    return QDialog::qt_metacast(_clname);
}

int PlusServerLauncherMainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
