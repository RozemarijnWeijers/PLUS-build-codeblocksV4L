/****************************************************************************
** Meta object code from reading C++ file 'SegmentationParameterDialogTest.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../PlusApp/CommonWidgets/Testing/SegmentationParameterDialogTest.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'SegmentationParameterDialogTest.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_SegmentationParameterDialogTest[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      45,   33,   32,   32, 0x09,
      87,   32,   32,   32, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_SegmentationParameterDialogTest[] = {
    "SegmentationParameterDialogTest\0\0"
    "aConfigFile\0ConnectToDevicesByConfigFile(std::string)\0"
    "SaveConfigurationClicked()\0"
};

void SegmentationParameterDialogTest::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SegmentationParameterDialogTest *_t = static_cast<SegmentationParameterDialogTest *>(_o);
        switch (_id) {
        case 0: _t->ConnectToDevicesByConfigFile((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 1: _t->SaveConfigurationClicked(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData SegmentationParameterDialogTest::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject SegmentationParameterDialogTest::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_SegmentationParameterDialogTest,
      qt_meta_data_SegmentationParameterDialogTest, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SegmentationParameterDialogTest::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SegmentationParameterDialogTest::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SegmentationParameterDialogTest::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SegmentationParameterDialogTest))
        return static_cast<void*>(const_cast< SegmentationParameterDialogTest*>(this));
    return QDialog::qt_metacast(_clname);
}

int SegmentationParameterDialogTest::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
