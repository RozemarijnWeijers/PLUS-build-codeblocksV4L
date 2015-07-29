/********************************************************************************
** Form generated from reading UI file 'SpatialCalibrationToolbox.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SPATIALCALIBRATIONTOOLBOX_H
#define UI_SPATIALCALIBRATIONTOOLBOX_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QFrame>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_SpatialCalibrationToolbox
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label_State;
    QFrame *line;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_PhantomRegistration;
    QPushButton *pushButton_OpenPhantomRegistration;
    QHBoxLayout *horizontalLayout_6;
    QLabel *label_SegmentationParameters;
    QPushButton *pushButton_OpenSegmentationParameters;
    QPushButton *pushButton_EditSegmentationParameters;
    QSpacerItem *verticalSpacer;
    QLabel *label_InstructionsSpatial;
    QSpacerItem *verticalSpacer_7;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer;
    QPushButton *pushButton_StartCancelSpatial;
    QSpacerItem *horizontalSpacer_2;
    QSpacerItem *verticalSpacer_4;
    QLabel *label_Warning;
    QLabel *label_Results;
    QSpacerItem *verticalSpacer_2;

    void setupUi(QWidget *SpatialCalibrationToolbox)
    {
        if (SpatialCalibrationToolbox->objectName().isEmpty())
            SpatialCalibrationToolbox->setObjectName(QString::fromUtf8("SpatialCalibrationToolbox"));
        SpatialCalibrationToolbox->resize(230, 400);
        SpatialCalibrationToolbox->setMinimumSize(QSize(230, 400));
        SpatialCalibrationToolbox->setMaximumSize(QSize(230, 16777215));
        verticalLayout = new QVBoxLayout(SpatialCalibrationToolbox);
        verticalLayout->setSpacing(4);
        verticalLayout->setContentsMargins(4, 4, 4, 4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 4, 0, 4);
        label_State = new QLabel(SpatialCalibrationToolbox);
        label_State->setObjectName(QString::fromUtf8("label_State"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(label_State->sizePolicy().hasHeightForWidth());
        label_State->setSizePolicy(sizePolicy);
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_State->setFont(font);
        label_State->setWordWrap(true);

        verticalLayout->addWidget(label_State);

        line = new QFrame(SpatialCalibrationToolbox);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(2);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label_PhantomRegistration = new QLabel(SpatialCalibrationToolbox);
        label_PhantomRegistration->setObjectName(QString::fromUtf8("label_PhantomRegistration"));

        horizontalLayout_3->addWidget(label_PhantomRegistration);

        pushButton_OpenPhantomRegistration = new QPushButton(SpatialCalibrationToolbox);
        pushButton_OpenPhantomRegistration->setObjectName(QString::fromUtf8("pushButton_OpenPhantomRegistration"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(pushButton_OpenPhantomRegistration->sizePolicy().hasHeightForWidth());
        pushButton_OpenPhantomRegistration->setSizePolicy(sizePolicy1);
        pushButton_OpenPhantomRegistration->setMinimumSize(QSize(23, 23));
        pushButton_OpenPhantomRegistration->setMaximumSize(QSize(23, 23));
        pushButton_OpenPhantomRegistration->setFocusPolicy(Qt::NoFocus);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_Import.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_OpenPhantomRegistration->setIcon(icon);
        pushButton_OpenPhantomRegistration->setIconSize(QSize(16, 16));

        horizontalLayout_3->addWidget(pushButton_OpenPhantomRegistration);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setSpacing(6);
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        label_SegmentationParameters = new QLabel(SpatialCalibrationToolbox);
        label_SegmentationParameters->setObjectName(QString::fromUtf8("label_SegmentationParameters"));

        horizontalLayout_6->addWidget(label_SegmentationParameters);

        pushButton_OpenSegmentationParameters = new QPushButton(SpatialCalibrationToolbox);
        pushButton_OpenSegmentationParameters->setObjectName(QString::fromUtf8("pushButton_OpenSegmentationParameters"));
        sizePolicy1.setHeightForWidth(pushButton_OpenSegmentationParameters->sizePolicy().hasHeightForWidth());
        pushButton_OpenSegmentationParameters->setSizePolicy(sizePolicy1);
        pushButton_OpenSegmentationParameters->setMinimumSize(QSize(23, 23));
        pushButton_OpenSegmentationParameters->setMaximumSize(QSize(23, 23));
        pushButton_OpenSegmentationParameters->setFocusPolicy(Qt::NoFocus);
        pushButton_OpenSegmentationParameters->setIcon(icon);
        pushButton_OpenSegmentationParameters->setIconSize(QSize(16, 16));

        horizontalLayout_6->addWidget(pushButton_OpenSegmentationParameters);

        pushButton_EditSegmentationParameters = new QPushButton(SpatialCalibrationToolbox);
        pushButton_EditSegmentationParameters->setObjectName(QString::fromUtf8("pushButton_EditSegmentationParameters"));
        pushButton_EditSegmentationParameters->setMinimumSize(QSize(23, 23));
        pushButton_EditSegmentationParameters->setMaximumSize(QSize(23, 23));
        pushButton_EditSegmentationParameters->setFocusPolicy(Qt::NoFocus);
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/icons/CommonWidgets/Resources/icon_Edit.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_EditSegmentationParameters->setIcon(icon1);

        horizontalLayout_6->addWidget(pushButton_EditSegmentationParameters);


        verticalLayout->addLayout(horizontalLayout_6);

        verticalSpacer = new QSpacerItem(158, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        label_InstructionsSpatial = new QLabel(SpatialCalibrationToolbox);
        label_InstructionsSpatial->setObjectName(QString::fromUtf8("label_InstructionsSpatial"));
        label_InstructionsSpatial->setFont(font);
        label_InstructionsSpatial->setWordWrap(true);

        verticalLayout->addWidget(label_InstructionsSpatial);

        verticalSpacer_7 = new QSpacerItem(158, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_7);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(4);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        pushButton_StartCancelSpatial = new QPushButton(SpatialCalibrationToolbox);
        pushButton_StartCancelSpatial->setObjectName(QString::fromUtf8("pushButton_StartCancelSpatial"));

        horizontalLayout_2->addWidget(pushButton_StartCancelSpatial);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);


        verticalLayout->addLayout(horizontalLayout_2);

        verticalSpacer_4 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        label_Warning = new QLabel(SpatialCalibrationToolbox);
        label_Warning->setObjectName(QString::fromUtf8("label_Warning"));
        label_Warning->setFont(font);
        label_Warning->setWordWrap(true);

        verticalLayout->addWidget(label_Warning);

        label_Results = new QLabel(SpatialCalibrationToolbox);
        label_Results->setObjectName(QString::fromUtf8("label_Results"));

        verticalLayout->addWidget(label_Results);

        verticalSpacer_2 = new QSpacerItem(158, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);


        retranslateUi(SpatialCalibrationToolbox);

        QMetaObject::connectSlotsByName(SpatialCalibrationToolbox);
    } // setupUi

    void retranslateUi(QWidget *SpatialCalibrationToolbox)
    {
        SpatialCalibrationToolbox->setWindowTitle(QApplication::translate("SpatialCalibrationToolbox", "Spatial calibration", 0, QApplication::UnicodeUTF8));
        label_State->setText(QApplication::translate("SpatialCalibrationToolbox", "ImageToProge transform is absent, spatial calibration needs to be performed.", 0, QApplication::UnicodeUTF8));
        label_PhantomRegistration->setText(QApplication::translate("SpatialCalibrationToolbox", "Import phantom registration result:", 0, QApplication::UnicodeUTF8));
        pushButton_OpenPhantomRegistration->setText(QString());
        label_SegmentationParameters->setText(QApplication::translate("SpatialCalibrationToolbox", "Pattern recognition parameters:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_OpenSegmentationParameters->setToolTip(QApplication::translate("SpatialCalibrationToolbox", "Import segmentation parameters", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_OpenSegmentationParameters->setText(QString());
#ifndef QT_NO_TOOLTIP
        pushButton_EditSegmentationParameters->setToolTip(QApplication::translate("SpatialCalibrationToolbox", "Show segmentation parameter editing dialog, in which segmentation parameters can be tested and changed", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_EditSegmentationParameters->setText(QString());
        label_InstructionsSpatial->setText(QApplication::translate("SpatialCalibrationToolbox", "Instructions", 0, QApplication::UnicodeUTF8));
        pushButton_StartCancelSpatial->setText(QApplication::translate("SpatialCalibrationToolbox", "Start", 0, QApplication::UnicodeUTF8));
        label_Warning->setText(QString());
        label_Results->setText(QApplication::translate("SpatialCalibrationToolbox", "Results", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class SpatialCalibrationToolbox: public Ui_SpatialCalibrationToolbox {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SPATIALCALIBRATIONTOOLBOX_H
