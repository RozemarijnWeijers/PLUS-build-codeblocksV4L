/********************************************************************************
** Form generated from reading UI file 'fCalMainWindow.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FCALMAINWINDOW_H
#define UI_FCALMAINWINDOW_H

#include <QVTKWidget.h>
#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QFrame>
#include <QtGui/QGridLayout>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QMainWindow>
#include <QtGui/QPushButton>
#include <QtGui/QSlider>
#include <QtGui/QSpacerItem>
#include <QtGui/QSpinBox>
#include <QtGui/QStatusBar>
#include <QtGui/QToolBox>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_fCalMainWindow
{
public:
    QWidget *centralWidget;
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout;
    QFrame *frame_Toolbar;
    QHBoxLayout *horizontalLayout;
    QPushButton *pushButton_SaveConfiguration;
    QSpacerItem *horizontalSpacer;
    QPushButton *pushButton_ImageOrientation;
    QPushButton *pushButton_ShowDevices;
    QPushButton *pushButton_Tools;
    QToolBox *toolbox;
    QWidget *toolbox_Configuration;
    QWidget *toolbox_Capturing;
    QWidget *toolbox_StylusCalibration;
    QWidget *toolbox_PhantomRegistration;
    QWidget *toolbox_TemporalCalibration;
    QWidget *toolbox_SpatialCalibration;
    QWidget *toolbox_VolumeReconstruction;
    QHBoxLayout *horizontalLayout_SliceNumber;
    QLabel *label_SliceNumber;
    QSpinBox *spinBox_SliceNumber;
    QSlider *horizontalSlider_SliceNumber;
    QVTKWidget *canvas;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *fCalMainWindow)
    {
        if (fCalMainWindow->objectName().isEmpty())
            fCalMainWindow->setObjectName(QString::fromUtf8("fCalMainWindow"));
        fCalMainWindow->resize(1028, 787);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_fCal.png"), QSize(), QIcon::Normal, QIcon::Off);
        fCalMainWindow->setWindowIcon(icon);
        centralWidget = new QWidget(fCalMainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(centralWidget->sizePolicy().hasHeightForWidth());
        centralWidget->setSizePolicy(sizePolicy);
        gridLayout = new QGridLayout(centralWidget);
        gridLayout->setSpacing(0);
        gridLayout->setContentsMargins(0, 0, 0, 0);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(0);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        frame_Toolbar = new QFrame(centralWidget);
        frame_Toolbar->setObjectName(QString::fromUtf8("frame_Toolbar"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Minimum);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(frame_Toolbar->sizePolicy().hasHeightForWidth());
        frame_Toolbar->setSizePolicy(sizePolicy1);
        frame_Toolbar->setMinimumSize(QSize(260, 27));
        frame_Toolbar->setMaximumSize(QSize(260, 27));
        frame_Toolbar->setFrameShape(QFrame::StyledPanel);
        frame_Toolbar->setFrameShadow(QFrame::Raised);
        horizontalLayout = new QHBoxLayout(frame_Toolbar);
        horizontalLayout->setSpacing(4);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(4, 2, 4, 2);
        pushButton_SaveConfiguration = new QPushButton(frame_Toolbar);
        pushButton_SaveConfiguration->setObjectName(QString::fromUtf8("pushButton_SaveConfiguration"));
        pushButton_SaveConfiguration->setMinimumSize(QSize(23, 23));
        pushButton_SaveConfiguration->setMaximumSize(QSize(23, 23));
        pushButton_SaveConfiguration->setFocusPolicy(Qt::ClickFocus);
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/icons/Resources/icon_Save.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_SaveConfiguration->setIcon(icon1);

        horizontalLayout->addWidget(pushButton_SaveConfiguration);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        pushButton_ImageOrientation = new QPushButton(frame_Toolbar);
        pushButton_ImageOrientation->setObjectName(QString::fromUtf8("pushButton_ImageOrientation"));
        pushButton_ImageOrientation->setEnabled(false);
        pushButton_ImageOrientation->setMinimumSize(QSize(23, 23));
        pushButton_ImageOrientation->setMaximumSize(QSize(23, 23));
        pushButton_ImageOrientation->setFocusPolicy(Qt::ClickFocus);
        pushButton_ImageOrientation->setContextMenuPolicy(Qt::DefaultContextMenu);
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/icons/Resources/icon_ImageControl.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_ImageOrientation->setIcon(icon2);

        horizontalLayout->addWidget(pushButton_ImageOrientation);

        pushButton_ShowDevices = new QPushButton(frame_Toolbar);
        pushButton_ShowDevices->setObjectName(QString::fromUtf8("pushButton_ShowDevices"));
        pushButton_ShowDevices->setMinimumSize(QSize(23, 23));
        pushButton_ShowDevices->setMaximumSize(QSize(23, 23));
        pushButton_ShowDevices->setFocusPolicy(Qt::ClickFocus);
        QIcon icon3;
        icon3.addFile(QString::fromUtf8(":/icons/Resources/icon_ObjectMode.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_ShowDevices->setIcon(icon3);
        pushButton_ShowDevices->setCheckable(true);

        horizontalLayout->addWidget(pushButton_ShowDevices);

        pushButton_Tools = new QPushButton(frame_Toolbar);
        pushButton_Tools->setObjectName(QString::fromUtf8("pushButton_Tools"));
        pushButton_Tools->setMinimumSize(QSize(23, 23));
        pushButton_Tools->setMaximumSize(QSize(23, 23));
        pushButton_Tools->setFocusPolicy(Qt::NoFocus);
        QIcon icon4;
        icon4.addFile(QString::fromUtf8(":/icons/Resources/icon_Tools.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_Tools->setIcon(icon4);

        horizontalLayout->addWidget(pushButton_Tools);


        verticalLayout->addWidget(frame_Toolbar);

        toolbox = new QToolBox(centralWidget);
        toolbox->setObjectName(QString::fromUtf8("toolbox"));
        QSizePolicy sizePolicy2(QSizePolicy::Preferred, QSizePolicy::Expanding);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(toolbox->sizePolicy().hasHeightForWidth());
        toolbox->setSizePolicy(sizePolicy2);
        toolbox->setMinimumSize(QSize(260, 200));
        toolbox->setMaximumSize(QSize(260, 16777215));
        toolbox->setFrameShape(QFrame::Panel);
        toolbox->setFrameShadow(QFrame::Raised);
        toolbox_Configuration = new QWidget();
        toolbox_Configuration->setObjectName(QString::fromUtf8("toolbox_Configuration"));
        toolbox_Configuration->setGeometry(QRect(0, 0, 258, 547));
        toolbox->addItem(toolbox_Configuration, QString::fromUtf8("Configuration"));
        toolbox_Capturing = new QWidget();
        toolbox_Capturing->setObjectName(QString::fromUtf8("toolbox_Capturing"));
        toolbox_Capturing->setGeometry(QRect(0, 0, 258, 547));
        toolbox->addItem(toolbox_Capturing, QString::fromUtf8("Capturing"));
        toolbox_StylusCalibration = new QWidget();
        toolbox_StylusCalibration->setObjectName(QString::fromUtf8("toolbox_StylusCalibration"));
        toolbox_StylusCalibration->setGeometry(QRect(0, 0, 258, 547));
        toolbox->addItem(toolbox_StylusCalibration, QString::fromUtf8("Stylus calibration"));
        toolbox_PhantomRegistration = new QWidget();
        toolbox_PhantomRegistration->setObjectName(QString::fromUtf8("toolbox_PhantomRegistration"));
        toolbox_PhantomRegistration->setGeometry(QRect(0, 0, 258, 547));
        toolbox->addItem(toolbox_PhantomRegistration, QString::fromUtf8("Phantom registration"));
        toolbox_TemporalCalibration = new QWidget();
        toolbox_TemporalCalibration->setObjectName(QString::fromUtf8("toolbox_TemporalCalibration"));
        toolbox_TemporalCalibration->setGeometry(QRect(0, 0, 258, 547));
        toolbox->addItem(toolbox_TemporalCalibration, QString::fromUtf8("Temporal calibration"));
        toolbox_SpatialCalibration = new QWidget();
        toolbox_SpatialCalibration->setObjectName(QString::fromUtf8("toolbox_SpatialCalibration"));
        toolbox_SpatialCalibration->setGeometry(QRect(0, 0, 258, 547));
        toolbox->addItem(toolbox_SpatialCalibration, QString::fromUtf8("Spatial calibration"));
        toolbox_VolumeReconstruction = new QWidget();
        toolbox_VolumeReconstruction->setObjectName(QString::fromUtf8("toolbox_VolumeReconstruction"));
        toolbox_VolumeReconstruction->setGeometry(QRect(0, 0, 258, 547));
        toolbox->addItem(toolbox_VolumeReconstruction, QString::fromUtf8("Volume reconstruction"));

        verticalLayout->addWidget(toolbox);


        gridLayout->addLayout(verticalLayout, 0, 0, 4, 1);

        horizontalLayout_SliceNumber = new QHBoxLayout();
        horizontalLayout_SliceNumber->setSpacing(6);
        horizontalLayout_SliceNumber->setObjectName(QString::fromUtf8("horizontalLayout_SliceNumber"));
        label_SliceNumber = new QLabel(centralWidget);
        label_SliceNumber->setObjectName(QString::fromUtf8("label_SliceNumber"));
        QSizePolicy sizePolicy3(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(label_SliceNumber->sizePolicy().hasHeightForWidth());
        label_SliceNumber->setSizePolicy(sizePolicy3);

        horizontalLayout_SliceNumber->addWidget(label_SliceNumber);

        spinBox_SliceNumber = new QSpinBox(centralWidget);
        spinBox_SliceNumber->setObjectName(QString::fromUtf8("spinBox_SliceNumber"));
        spinBox_SliceNumber->setEnabled(false);

        horizontalLayout_SliceNumber->addWidget(spinBox_SliceNumber);

        horizontalSlider_SliceNumber = new QSlider(centralWidget);
        horizontalSlider_SliceNumber->setObjectName(QString::fromUtf8("horizontalSlider_SliceNumber"));
        horizontalSlider_SliceNumber->setEnabled(false);
        horizontalSlider_SliceNumber->setOrientation(Qt::Horizontal);

        horizontalLayout_SliceNumber->addWidget(horizontalSlider_SliceNumber);


        gridLayout->addLayout(horizontalLayout_SliceNumber, 2, 1, 1, 1);

        canvas = new QVTKWidget(centralWidget);
        canvas->setObjectName(QString::fromUtf8("canvas"));
        QSizePolicy sizePolicy4(QSizePolicy::Preferred, QSizePolicy::Expanding);
        sizePolicy4.setHorizontalStretch(1);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(canvas->sizePolicy().hasHeightForWidth());
        canvas->setSizePolicy(sizePolicy4);
        canvas->setMinimumSize(QSize(300, 200));
        canvas->setSizeIncrement(QSize(4, 3));
        canvas->setFocusPolicy(Qt::ClickFocus);

        gridLayout->addWidget(canvas, 1, 1, 1, 1);

        fCalMainWindow->setCentralWidget(centralWidget);
        statusBar = new QStatusBar(fCalMainWindow);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        QSizePolicy sizePolicy5(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy5.setHorizontalStretch(0);
        sizePolicy5.setVerticalStretch(0);
        sizePolicy5.setHeightForWidth(statusBar->sizePolicy().hasHeightForWidth());
        statusBar->setSizePolicy(sizePolicy5);
        fCalMainWindow->setStatusBar(statusBar);

        retranslateUi(fCalMainWindow);

        toolbox->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(fCalMainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *fCalMainWindow)
    {
        fCalMainWindow->setWindowTitle(QApplication::translate("fCalMainWindow", "fCal", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_SaveConfiguration->setToolTip(QApplication::translate("fCalMainWindow", "Save current device set configuration", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_SaveConfiguration->setText(QString());
#ifndef QT_NO_TOOLTIP
        pushButton_ImageOrientation->setToolTip(QApplication::translate("fCalMainWindow", "Image (2D) Controls", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_ImageOrientation->setText(QString());
#ifndef QT_NO_TOOLTIP
        pushButton_ShowDevices->setToolTip(QApplication::translate("fCalMainWindow", "Show all devices / Show content for current toolbox", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_ShowDevices->setText(QString());
#ifndef QT_NO_TOOLTIP
        pushButton_Tools->setToolTip(QApplication::translate("fCalMainWindow", "Tools menu", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_Tools->setText(QString());
        toolbox->setItemText(toolbox->indexOf(toolbox_Configuration), QApplication::translate("fCalMainWindow", "Configuration", 0, QApplication::UnicodeUTF8));
        toolbox->setItemText(toolbox->indexOf(toolbox_Capturing), QApplication::translate("fCalMainWindow", "Capturing", 0, QApplication::UnicodeUTF8));
        toolbox->setItemText(toolbox->indexOf(toolbox_StylusCalibration), QApplication::translate("fCalMainWindow", "Stylus calibration", 0, QApplication::UnicodeUTF8));
        toolbox->setItemText(toolbox->indexOf(toolbox_PhantomRegistration), QApplication::translate("fCalMainWindow", "Phantom registration", 0, QApplication::UnicodeUTF8));
        toolbox->setItemText(toolbox->indexOf(toolbox_TemporalCalibration), QApplication::translate("fCalMainWindow", "Temporal calibration", 0, QApplication::UnicodeUTF8));
        toolbox->setItemText(toolbox->indexOf(toolbox_SpatialCalibration), QApplication::translate("fCalMainWindow", "Spatial calibration", 0, QApplication::UnicodeUTF8));
        toolbox->setItemText(toolbox->indexOf(toolbox_VolumeReconstruction), QApplication::translate("fCalMainWindow", "Volume reconstruction", 0, QApplication::UnicodeUTF8));
        label_SliceNumber->setText(QApplication::translate("fCalMainWindow", "Slice:", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class fCalMainWindow: public Ui_fCalMainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FCALMAINWINDOW_H
