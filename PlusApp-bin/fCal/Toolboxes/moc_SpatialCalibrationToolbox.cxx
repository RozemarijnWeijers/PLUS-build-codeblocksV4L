/****************************************************************************
** Meta object code from reading C++ file 'SpatialCalibrationToolbox.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../PlusApp/fCal/Toolboxes/SpatialCalibrationToolbox.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'SpatialCalibrationToolbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_SpatialCalibrationToolbox[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      27,   26,   26,   26, 0x09,
      45,   26,   26,   26, 0x09,
      60,   26,   26,   26, 0x09,
      76,   26,   26,   26, 0x09,
     102,   26,   26,   26, 0x09,
     131,   26,   26,   26, 0x09,
     160,   26,   26,   26, 0x09,
     179,   26,   26,   26, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_SpatialCalibrationToolbox[] = {
    "SpatialCalibrationToolbox\0\0StartDelayTimer()\0"
    "DelayStartup()\0DoCalibration()\0"
    "OpenPhantomRegistration()\0"
    "OpenSegmentationParameters()\0"
    "EditSegmentationParameters()\0"
    "StartCalibration()\0CancelCalibration()\0"
};

void SpatialCalibrationToolbox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SpatialCalibrationToolbox *_t = static_cast<SpatialCalibrationToolbox *>(_o);
        switch (_id) {
        case 0: _t->StartDelayTimer(); break;
        case 1: _t->DelayStartup(); break;
        case 2: _t->DoCalibration(); break;
        case 3: _t->OpenPhantomRegistration(); break;
        case 4: _t->OpenSegmentationParameters(); break;
        case 5: _t->EditSegmentationParameters(); break;
        case 6: _t->StartCalibration(); break;
        case 7: _t->CancelCalibration(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData SpatialCalibrationToolbox::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject SpatialCalibrationToolbox::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_SpatialCalibrationToolbox,
      qt_meta_data_SpatialCalibrationToolbox, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SpatialCalibrationToolbox::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SpatialCalibrationToolbox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SpatialCalibrationToolbox::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SpatialCalibrationToolbox))
        return static_cast<void*>(const_cast< SpatialCalibrationToolbox*>(this));
    if (!strcmp(_clname, "AbstractToolbox"))
        return static_cast< AbstractToolbox*>(const_cast< SpatialCalibrationToolbox*>(this));
    return QWidget::qt_metacast(_clname);
}

int SpatialCalibrationToolbox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
