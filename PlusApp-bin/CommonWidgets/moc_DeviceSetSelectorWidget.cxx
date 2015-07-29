/****************************************************************************
** Meta object code from reading C++ file 'DeviceSetSelectorWidget.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../PlusApp/CommonWidgets/DeviceSetSelectorWidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'DeviceSetSelectorWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_DeviceSetSelectorWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      25,   24,   24,   24, 0x05,
      68,   24,   24,   24, 0x05,
      99,   24,   24,   24, 0x05,
     148,   24,   24,   24, 0x05,

 // slots: signature, parameters, type, tag, flags
     163,   24,   24,   24, 0x09,
     192,   24,   24,   24, 0x09,
     215,   24,   24,   24, 0x09,
     231,   24,   24,   24, 0x09,
     250,   24,   24,   24, 0x09,
     266,   24,   24,   24, 0x09,
     286,   24,   24,   24, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_DeviceSetSelectorWidget[] = {
    "DeviceSetSelectorWidget\0\0"
    "ConfigurationDirectoryChanged(std::string)\0"
    "DeviceSetSelected(std::string)\0"
    "ConnectToDevicesByConfigFileInvoked(std::string)\0"
    "ResetTracker()\0OpenConfigurationDirectory()\0"
    "DeviceSetSelected(int)\0InvokeConnect()\0"
    "InvokeDisconnect()\0RefreshFolder()\0"
    "EditConfiguration()\0ResetTrackerButtonClicked()\0"
};

void DeviceSetSelectorWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        DeviceSetSelectorWidget *_t = static_cast<DeviceSetSelectorWidget *>(_o);
        switch (_id) {
        case 0: _t->ConfigurationDirectoryChanged((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 1: _t->DeviceSetSelected((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 2: _t->ConnectToDevicesByConfigFileInvoked((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 3: _t->ResetTracker(); break;
        case 4: _t->OpenConfigurationDirectory(); break;
        case 5: _t->DeviceSetSelected((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->InvokeConnect(); break;
        case 7: _t->InvokeDisconnect(); break;
        case 8: _t->RefreshFolder(); break;
        case 9: _t->EditConfiguration(); break;
        case 10: _t->ResetTrackerButtonClicked(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData DeviceSetSelectorWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject DeviceSetSelectorWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_DeviceSetSelectorWidget,
      qt_meta_data_DeviceSetSelectorWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &DeviceSetSelectorWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *DeviceSetSelectorWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *DeviceSetSelectorWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_DeviceSetSelectorWidget))
        return static_cast<void*>(const_cast< DeviceSetSelectorWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int DeviceSetSelectorWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void DeviceSetSelectorWidget::ConfigurationDirectoryChanged(std::string _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void DeviceSetSelectorWidget::DeviceSetSelected(std::string _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void DeviceSetSelectorWidget::ConnectToDevicesByConfigFileInvoked(std::string _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void DeviceSetSelectorWidget::ResetTracker()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}
QT_END_MOC_NAMESPACE
