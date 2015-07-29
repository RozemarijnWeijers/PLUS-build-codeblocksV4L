/****************************************************************************
** Meta object code from reading C++ file 'StylusCalibrationToolbox.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../PlusApp/fCal/Toolboxes/StylusCalibrationToolbox.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'StylusCalibrationToolbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_StylusCalibrationToolbox[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      26,   25,   25,   25, 0x09,
      33,   25,   25,   25, 0x09,
      63,   47,   25,   25, 0x09,
     107,   25,   25,   25, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_StylusCalibrationToolbox[] = {
    "StylusCalibrationToolbox\0\0Stop()\0"
    "OnStartStop()\0aNumberOfPoints\0"
    "NumberOfStylusCalibrationPointsChanged(int)\0"
    "OnDataAcquired()\0"
};

void StylusCalibrationToolbox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        StylusCalibrationToolbox *_t = static_cast<StylusCalibrationToolbox *>(_o);
        switch (_id) {
        case 0: _t->Stop(); break;
        case 1: _t->OnStartStop(); break;
        case 2: _t->NumberOfStylusCalibrationPointsChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->OnDataAcquired(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData StylusCalibrationToolbox::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject StylusCalibrationToolbox::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_StylusCalibrationToolbox,
      qt_meta_data_StylusCalibrationToolbox, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &StylusCalibrationToolbox::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *StylusCalibrationToolbox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *StylusCalibrationToolbox::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_StylusCalibrationToolbox))
        return static_cast<void*>(const_cast< StylusCalibrationToolbox*>(this));
    if (!strcmp(_clname, "AbstractToolbox"))
        return static_cast< AbstractToolbox*>(const_cast< StylusCalibrationToolbox*>(this));
    return QWidget::qt_metacast(_clname);
}

int StylusCalibrationToolbox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
