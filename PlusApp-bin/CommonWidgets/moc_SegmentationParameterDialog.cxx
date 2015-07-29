/****************************************************************************
** Meta object code from reading C++ file 'SegmentationParameterDialog.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../PlusApp/CommonWidgets/SegmentationParameterDialog.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'SegmentationParameterDialog.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_SegmentationParameterDialog[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      26,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      29,   28,   28,   28, 0x09,
      52,   28,   28,   28, 0x09,
      78,   74,   28,   28, 0x09,
     103,   74,   28,   28, 0x09,
     139,  132,   28,   28, 0x09,
     166,   28,   28,   28, 0x09,
     181,   74,   28,   28, 0x09,
     199,   28,   28,   28, 0x09,
     220,  213,   28,   28, 0x09,
     240,  213,   28,   28, 0x09,
     260,  213,   28,   28, 0x09,
     280,  213,   28,   28, 0x09,
     300,  213,   28,   28, 0x09,
     327,  213,   28,   28, 0x09,
     355,  213,   28,   28, 0x09,
     390,  213,   28,   28, 0x09,
     420,  213,   28,   28, 0x09,
     457,  213,   28,   28, 0x09,
     488,  213,   28,   28, 0x09,
     512,  213,   28,   28, 0x09,
     536,  213,   28,   28, 0x09,
     566,  213,   28,   28, 0x09,
     616,  213,   28,   28, 0x09,
     646,  213,   28,   28, 0x09,
     676,  213,   28,   28, 0x09,
     705,   74,   28,   28, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_SegmentationParameterDialog[] = {
    "SegmentationParameterDialog\0\0"
    "ApplyAndCloseClicked()\0SaveAndCloseClicked()\0"
    "aOn\0GroupBoxROIToggled(bool)\0"
    "GroupBoxSpacingToggled(bool)\0aEvent\0"
    "resizeEvent(QResizeEvent*)\0UpdateCanvas()\0"
    "FreezeImage(bool)\0ExportImage()\0aValue\0"
    "ROIXMinChanged(int)\0ROIYMinChanged(int)\0"
    "ROIXMaxChanged(int)\0ROIYMaxChanged(int)\0"
    "ReferenceWidthChanged(int)\0"
    "ReferenceHeightChanged(int)\0"
    "OpeningCircleRadiusChanged(double)\0"
    "OpeningBarSizeChanged(double)\0"
    "LinePairDistanceErrorChanged(double)\0"
    "AngleDifferenceChanged(double)\0"
    "MinThetaChanged(double)\0MaxThetaChanged(double)\0"
    "AngleToleranceChanged(double)\0"
    "CollinearPointsMaxDistanceFromLineChanged(double)\0"
    "ImageThresholdChanged(double)\0"
    "MaxLineShiftMmChanged(double)\0"
    "MaxCandidatesChanged(double)\0"
    "OriginalIntensityForDotsToggled(bool)\0"
};

void SegmentationParameterDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SegmentationParameterDialog *_t = static_cast<SegmentationParameterDialog *>(_o);
        switch (_id) {
        case 0: _t->ApplyAndCloseClicked(); break;
        case 1: _t->SaveAndCloseClicked(); break;
        case 2: _t->GroupBoxROIToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->GroupBoxSpacingToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->resizeEvent((*reinterpret_cast< QResizeEvent*(*)>(_a[1]))); break;
        case 5: _t->UpdateCanvas(); break;
        case 6: _t->FreezeImage((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->ExportImage(); break;
        case 8: _t->ROIXMinChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->ROIYMinChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->ROIXMaxChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 11: _t->ROIYMaxChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->ReferenceWidthChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 13: _t->ReferenceHeightChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 14: _t->OpeningCircleRadiusChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 15: _t->OpeningBarSizeChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 16: _t->LinePairDistanceErrorChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 17: _t->AngleDifferenceChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 18: _t->MinThetaChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 19: _t->MaxThetaChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 20: _t->AngleToleranceChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 21: _t->CollinearPointsMaxDistanceFromLineChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 22: _t->ImageThresholdChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 23: _t->MaxLineShiftMmChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 24: _t->MaxCandidatesChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 25: _t->OriginalIntensityForDotsToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData SegmentationParameterDialog::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject SegmentationParameterDialog::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_SegmentationParameterDialog,
      qt_meta_data_SegmentationParameterDialog, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SegmentationParameterDialog::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SegmentationParameterDialog::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SegmentationParameterDialog::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SegmentationParameterDialog))
        return static_cast<void*>(const_cast< SegmentationParameterDialog*>(this));
    return QDialog::qt_metacast(_clname);
}

int SegmentationParameterDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 26)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 26;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
