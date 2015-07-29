/****************************************************************************
** Meta object code from reading C++ file 'PhantomRegistrationToolbox.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../PlusApp/fCal/Toolboxes/PhantomRegistrationToolbox.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'PhantomRegistrationToolbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PhantomRegistrationToolbox[] = {

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
      52,   27,   27,   27, 0x09,
      66,   27,   27,   27, 0x09,
      73,   27,   27,   27, 0x09,
      81,   27,   27,   27, 0x09,
     113,   27,   27,   27, 0x09,
     144,   27,   27,   27, 0x09,
     176,   27,   27,   27, 0x09,
     213,   27,   27,   27, 0x09,
     248,   27,   27,   27, 0x09,
     298,   27,   27,   27, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_PhantomRegistrationToolbox[] = {
    "PhantomRegistrationToolbox\0\0"
    "OpenStylusCalibration()\0RecordPoint()\0"
    "Undo()\0Reset()\0StartLinearObjectRegistration()\0"
    "StopLinearObjectRegistration()\0"
    "ResetLinearObjectRegistration()\0"
    "StartLandmarkDetectionRegistration()\0"
    "StopLandmarkPivotingRegistration()\0"
    "AddStylusTipTransformToLinearObjectRegistration()\0"
    "AddStylusTipTransformToLandmarkPivotingRegistration()\0"
};

void PhantomRegistrationToolbox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PhantomRegistrationToolbox *_t = static_cast<PhantomRegistrationToolbox *>(_o);
        switch (_id) {
        case 0: _t->OpenStylusCalibration(); break;
        case 1: _t->RecordPoint(); break;
        case 2: _t->Undo(); break;
        case 3: _t->Reset(); break;
        case 4: _t->StartLinearObjectRegistration(); break;
        case 5: _t->StopLinearObjectRegistration(); break;
        case 6: _t->ResetLinearObjectRegistration(); break;
        case 7: _t->StartLandmarkDetectionRegistration(); break;
        case 8: _t->StopLandmarkPivotingRegistration(); break;
        case 9: _t->AddStylusTipTransformToLinearObjectRegistration(); break;
        case 10: _t->AddStylusTipTransformToLandmarkPivotingRegistration(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData PhantomRegistrationToolbox::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PhantomRegistrationToolbox::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_PhantomRegistrationToolbox,
      qt_meta_data_PhantomRegistrationToolbox, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PhantomRegistrationToolbox::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PhantomRegistrationToolbox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PhantomRegistrationToolbox::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PhantomRegistrationToolbox))
        return static_cast<void*>(const_cast< PhantomRegistrationToolbox*>(this));
    if (!strcmp(_clname, "AbstractToolbox"))
        return static_cast< AbstractToolbox*>(const_cast< PhantomRegistrationToolbox*>(this));
    return QWidget::qt_metacast(_clname);
}

int PhantomRegistrationToolbox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
