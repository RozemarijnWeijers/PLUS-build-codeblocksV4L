/****************************************************************************
** Meta object code from reading C++ file 'CapturingToolbox.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../PlusApp/fCal/Toolboxes/CapturingToolbox.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'CapturingToolbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_CapturingToolbox[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      18,   17,   17,   17, 0x09,
      33,   17,   17,   17, 0x09,
      42,   17,   17,   17, 0x09,
      49,   17,   17,   17, 0x09,
      71,   17,   17,   17, 0x09,
      82,   17,   17,   17, 0x09,
      97,   17,   17,   17, 0x09,
     104,   17,   17,   17, 0x09,
     113,   17,   17,   17, 0x09,
     130,  123,   17,   17, 0x09,
     155,   17,   17,   17, 0x09,
     174,  165,   17,   17, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_CapturingToolbox[] = {
    "CapturingToolbox\0\0TakeSnapshot()\0"
    "Record()\0Stop()\0ClearRecordedFrames()\0"
    "ClearAll()\0StartStopAll()\0Save()\0"
    "SaveAs()\0SaveAll()\0aValue\0"
    "SamplingRateChanged(int)\0Capture()\0"
    "aMessage\0HandleStatusMessage(std::string)\0"
};

void CapturingToolbox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        CapturingToolbox *_t = static_cast<CapturingToolbox *>(_o);
        switch (_id) {
        case 0: _t->TakeSnapshot(); break;
        case 1: _t->Record(); break;
        case 2: _t->Stop(); break;
        case 3: _t->ClearRecordedFrames(); break;
        case 4: _t->ClearAll(); break;
        case 5: _t->StartStopAll(); break;
        case 6: _t->Save(); break;
        case 7: _t->SaveAs(); break;
        case 8: _t->SaveAll(); break;
        case 9: _t->SamplingRateChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->Capture(); break;
        case 11: _t->HandleStatusMessage((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData CapturingToolbox::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject CapturingToolbox::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_CapturingToolbox,
      qt_meta_data_CapturingToolbox, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &CapturingToolbox::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *CapturingToolbox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *CapturingToolbox::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_CapturingToolbox))
        return static_cast<void*>(const_cast< CapturingToolbox*>(this));
    if (!strcmp(_clname, "AbstractToolbox"))
        return static_cast< AbstractToolbox*>(const_cast< CapturingToolbox*>(this));
    return QWidget::qt_metacast(_clname);
}

int CapturingToolbox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
