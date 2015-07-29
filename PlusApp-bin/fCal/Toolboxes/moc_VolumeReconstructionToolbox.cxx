/****************************************************************************
** Meta object code from reading C++ file 'VolumeReconstructionToolbox.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../PlusApp/fCal/Toolboxes/VolumeReconstructionToolbox.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'VolumeReconstructionToolbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_VolumeReconstructionToolbox[] = {

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
      29,   28,   28,   28, 0x09,
      73,   62,   28,   28, 0x09,
      96,   28,   28,   28, 0x09,
     113,   28,   28,   28, 0x09,
     127,   28,   28,   28, 0x09,
     141,  134,   28,   28, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_VolumeReconstructionToolbox[] = {
    "VolumeReconstructionToolbox\0\0"
    "OpenVolumeReconstructionConfig()\0"
    "aItemIndex\0InputImageChanged(int)\0"
    "OpenInputImage()\0Reconstruct()\0Save()\0"
    "aValue\0RecomputeContourFromReconstructedVolume(int)\0"
};

void VolumeReconstructionToolbox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        VolumeReconstructionToolbox *_t = static_cast<VolumeReconstructionToolbox *>(_o);
        switch (_id) {
        case 0: _t->OpenVolumeReconstructionConfig(); break;
        case 1: _t->InputImageChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->OpenInputImage(); break;
        case 3: _t->Reconstruct(); break;
        case 4: _t->Save(); break;
        case 5: _t->RecomputeContourFromReconstructedVolume((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData VolumeReconstructionToolbox::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject VolumeReconstructionToolbox::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_VolumeReconstructionToolbox,
      qt_meta_data_VolumeReconstructionToolbox, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &VolumeReconstructionToolbox::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *VolumeReconstructionToolbox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *VolumeReconstructionToolbox::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_VolumeReconstructionToolbox))
        return static_cast<void*>(const_cast< VolumeReconstructionToolbox*>(this));
    if (!strcmp(_clname, "AbstractToolbox"))
        return static_cast< AbstractToolbox*>(const_cast< VolumeReconstructionToolbox*>(this));
    return QWidget::qt_metacast(_clname);
}

int VolumeReconstructionToolbox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
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
