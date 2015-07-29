/****************************************************************************
** Meta object code from reading C++ file 'QVTKGraphicsItem.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../vtk/GUISupport/QtOpenGL/QVTKGraphicsItem.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QVTKGraphicsItem.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_QVTKGraphicsItem[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      18,   17,   17,   17, 0x0a,
      27,   17,   17,   17, 0x09,
      41,   17,   17,   17, 0x09,
      49,   17,   17,   17, 0x09,
      94,   55,   17,   17, 0x09,
     134,   55,   17,   17, 0x09,
     173,   55,   17,   17, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_QVTKGraphicsItem[] = {
    "QVTKGraphicsItem\0\0Update()\0MakeCurrent()\0"
    "Start()\0End()\0caller,vtk_event,client_data,call_data\0"
    "IsCurrent(vtkObject*,ulong,void*,void*)\0"
    "IsDirect(vtkObject*,ulong,void*,void*)\0"
    "SupportsOpenGL(vtkObject*,ulong,void*,void*)\0"
};

void QVTKGraphicsItem::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        QVTKGraphicsItem *_t = static_cast<QVTKGraphicsItem *>(_o);
        switch (_id) {
        case 0: _t->Update(); break;
        case 1: _t->MakeCurrent(); break;
        case 2: _t->Start(); break;
        case 3: _t->End(); break;
        case 4: _t->IsCurrent((*reinterpret_cast< vtkObject*(*)>(_a[1])),(*reinterpret_cast< ulong(*)>(_a[2])),(*reinterpret_cast< void*(*)>(_a[3])),(*reinterpret_cast< void*(*)>(_a[4]))); break;
        case 5: _t->IsDirect((*reinterpret_cast< vtkObject*(*)>(_a[1])),(*reinterpret_cast< ulong(*)>(_a[2])),(*reinterpret_cast< void*(*)>(_a[3])),(*reinterpret_cast< void*(*)>(_a[4]))); break;
        case 6: _t->SupportsOpenGL((*reinterpret_cast< vtkObject*(*)>(_a[1])),(*reinterpret_cast< ulong(*)>(_a[2])),(*reinterpret_cast< void*(*)>(_a[3])),(*reinterpret_cast< void*(*)>(_a[4]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData QVTKGraphicsItem::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject QVTKGraphicsItem::staticMetaObject = {
    { &QGraphicsWidget::staticMetaObject, qt_meta_stringdata_QVTKGraphicsItem,
      qt_meta_data_QVTKGraphicsItem, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &QVTKGraphicsItem::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *QVTKGraphicsItem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *QVTKGraphicsItem::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QVTKGraphicsItem))
        return static_cast<void*>(const_cast< QVTKGraphicsItem*>(this));
    return QGraphicsWidget::qt_metacast(_clname);
}

int QVTKGraphicsItem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGraphicsWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
