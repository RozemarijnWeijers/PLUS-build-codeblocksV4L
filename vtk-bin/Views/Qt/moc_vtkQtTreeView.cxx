/****************************************************************************
** Meta object code from reading C++ file 'vtkQtTreeView.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../vtk/Views/Qt/vtkQtTreeView.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vtkQtTreeView.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_vtkQtTreeView[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      15,   14,   14,   14, 0x05,
      37,   14,   14,   14, 0x05,
      60,   14,   14,   14, 0x05,

 // slots: signature, parameters, type, tag, flags
      95,   93,   14,   14, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_vtkQtTreeView[] = {
    "vtkQtTreeView\0\0expanded(QModelIndex)\0"
    "collapsed(QModelIndex)\0"
    "updatePreviewWidget(QModelIndex)\0,\0"
    "slotQtSelectionChanged(QItemSelection,QItemSelection)\0"
};

void vtkQtTreeView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        vtkQtTreeView *_t = static_cast<vtkQtTreeView *>(_o);
        switch (_id) {
        case 0: _t->expanded((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 1: _t->collapsed((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 2: _t->updatePreviewWidget((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 3: _t->slotQtSelectionChanged((*reinterpret_cast< const QItemSelection(*)>(_a[1])),(*reinterpret_cast< const QItemSelection(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData vtkQtTreeView::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject vtkQtTreeView::staticMetaObject = {
    { &vtkQtView::staticMetaObject, qt_meta_stringdata_vtkQtTreeView,
      qt_meta_data_vtkQtTreeView, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &vtkQtTreeView::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *vtkQtTreeView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *vtkQtTreeView::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_vtkQtTreeView))
        return static_cast<void*>(const_cast< vtkQtTreeView*>(this));
    return vtkQtView::qt_metacast(_clname);
}

int vtkQtTreeView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = vtkQtView::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void vtkQtTreeView::expanded(const QModelIndex & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void vtkQtTreeView::collapsed(const QModelIndex & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void vtkQtTreeView::updatePreviewWidget(const QModelIndex & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE
