/****************************************************************************
** Meta object code from reading C++ file 'TemporalCalibrationToolbox.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../PlusApp/fCal/Toolboxes/TemporalCalibrationToolbox.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'TemporalCalibrationToolbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_TemporalCalibrationToolbox[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      28,   27,   27,   27, 0x09,
      46,   27,   27,   27, 0x09,
      61,   27,   27,   27, 0x09,
      81,   77,   27,   27, 0x09,
     104,   27,   27,   27, 0x09,
     123,   27,   27,   27, 0x09,
     143,   27,   27,   27, 0x09,
     180,  171,   27,   27, 0x09,
     204,  171,   27,   27, 0x09,
     229,  171,   27,   27, 0x09,
     253,  171,   27,   27, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_TemporalCalibrationToolbox[] = {
    "TemporalCalibrationToolbox\0\0"
    "StartDelayTimer()\0DelayStartup()\0"
    "DoCalibration()\0aOn\0ShowPlotsToggled(bool)\0"
    "StartCalibration()\0CancelCalibration()\0"
    "ComputeCalibrationResults()\0newIndex\0"
    "FixedSignalChanged(int)\0"
    "MovingSignalChanged(int)\0"
    "FixedSourceChanged(int)\0"
    "MovingSourceChanged(int)\0"
};

void TemporalCalibrationToolbox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TemporalCalibrationToolbox *_t = static_cast<TemporalCalibrationToolbox *>(_o);
        switch (_id) {
        case 0: _t->StartDelayTimer(); break;
        case 1: _t->DelayStartup(); break;
        case 2: _t->DoCalibration(); break;
        case 3: _t->ShowPlotsToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->StartCalibration(); break;
        case 5: _t->CancelCalibration(); break;
        case 6: _t->ComputeCalibrationResults(); break;
        case 7: _t->FixedSignalChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->MovingSignalChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->FixedSourceChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->MovingSourceChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TemporalCalibrationToolbox::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TemporalCalibrationToolbox::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_TemporalCalibrationToolbox,
      qt_meta_data_TemporalCalibrationToolbox, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TemporalCalibrationToolbox::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TemporalCalibrationToolbox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TemporalCalibrationToolbox::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TemporalCalibrationToolbox))
        return static_cast<void*>(const_cast< TemporalCalibrationToolbox*>(this));
    if (!strcmp(_clname, "AbstractToolbox"))
        return static_cast< AbstractToolbox*>(const_cast< TemporalCalibrationToolbox*>(this));
    return QWidget::qt_metacast(_clname);
}

int TemporalCalibrationToolbox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
QT_END_MOC_NAMESPACE
