/****************************************************************************
** Meta object code from reading C++ file 'fCalMainWindow.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../PlusApp/fCal/fCalMainWindow.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'fCalMainWindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_fCalMainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      19,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      30,   16,   15,   15, 0x09,
      57,   15,   15,   15, 0x09,
      80,   15,   15,   15, 0x09,
      92,   15,   15,   15, 0x09,
     114,   15,   15,   15, 0x09,
     135,   15,   15,   15, 0x09,
     161,   15,   15,   15, 0x09,
     201,  192,   15,   15, 0x09,
     241,  234,   15,   15, 0x09,
     271,  234,   15,   15, 0x09,
     309,  302,   15,   15, 0x09,
     336,   15,   15,   15, 0x09,
     350,   15,   15,   15, 0x09,
     379,   15,   15,   15, 0x09,
     405,   15,   15,   15, 0x09,
     430,   15,   15,   15, 0x09,
     458,   15,   15,   15, 0x09,
     485,   15,   15,   15, 0x09,
     512,   15,   15,   15, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_fCalMainWindow[] = {
    "fCalMainWindow\0\0aToolboxIndex\0"
    "CurrentToolboxChanged(int)\0"
    "ChangeBackToolbox(int)\0UpdateGUI()\0"
    "UpdateSliceNumberUI()\0ShowDevicesToggled()\0"
    "ShowPhantomModelToggled()\0"
    "ShowPhantomWiresModelToggled()\0aChannel\0"
    "ChannelSelected(vtkPlusChannel*)\0"
    "number\0SliceNumberSliderChanged(int)\0"
    "SliceNumberSpinBoxChanged(int)\0aEvent\0"
    "resizeEvent(QResizeEvent*)\0DumpBuffers()\0"
    "SaveDeviceSetConfiguration()\0"
    "SetOrientationMRightFUp()\0"
    "SetOrientationMLeftFUp()\0"
    "SetOrientationMRightFDown()\0"
    "SetOrientationMLeftFDown()\0"
    "EnableOrientationMarkers()\0EnableROI()\0"
};

void fCalMainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        fCalMainWindow *_t = static_cast<fCalMainWindow *>(_o);
        switch (_id) {
        case 0: _t->CurrentToolboxChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->ChangeBackToolbox((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->UpdateGUI(); break;
        case 3: _t->UpdateSliceNumberUI(); break;
        case 4: _t->ShowDevicesToggled(); break;
        case 5: _t->ShowPhantomModelToggled(); break;
        case 6: _t->ShowPhantomWiresModelToggled(); break;
        case 7: _t->ChannelSelected((*reinterpret_cast< vtkPlusChannel*(*)>(_a[1]))); break;
        case 8: _t->SliceNumberSliderChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->SliceNumberSpinBoxChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->resizeEvent((*reinterpret_cast< QResizeEvent*(*)>(_a[1]))); break;
        case 11: _t->DumpBuffers(); break;
        case 12: _t->SaveDeviceSetConfiguration(); break;
        case 13: _t->SetOrientationMRightFUp(); break;
        case 14: _t->SetOrientationMLeftFUp(); break;
        case 15: _t->SetOrientationMRightFDown(); break;
        case 16: _t->SetOrientationMLeftFDown(); break;
        case 17: _t->EnableOrientationMarkers(); break;
        case 18: _t->EnableROI(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData fCalMainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject fCalMainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_fCalMainWindow,
      qt_meta_data_fCalMainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &fCalMainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *fCalMainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *fCalMainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_fCalMainWindow))
        return static_cast<void*>(const_cast< fCalMainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int fCalMainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 19)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 19;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
