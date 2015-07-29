/********************************************************************************
** Form generated from reading UI file 'VolumeReconstructionToolbox.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_VOLUMERECONSTRUCTIONTOOLBOX_H
#define UI_VOLUMERECONSTRUCTIONTOOLBOX_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QComboBox>
#include <QtGui/QFrame>
#include <QtGui/QGridLayout>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSlider>
#include <QtGui/QSpacerItem>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_VolumeReconstructionToolbox
{
public:
    QGridLayout *gridLayout;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_VolumeReconstructionConfig;
    QPushButton *pushButton_OpenVolumeReconstructionConfig;
    QLabel *label_InputImage;
    QHBoxLayout *horizontalLayout;
    QComboBox *comboBox_InputImage;
    QPushButton *pushButton_OpenInputImage;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *pushButton_Reconstruct;
    QSpacerItem *verticalSpacer_2;
    QSpacerItem *verticalSpacer;
    QLabel *label_Instructions;
    QSpacerItem *verticalSpacer_3;
    QHBoxLayout *horizontalLayout_4;
    QPushButton *pushButton_Save;
    QSlider *horizontalSlider_ContouringThreshold;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label_ContouringThresholdText;
    QLabel *label_ContouringThreshold;
    QLabel *label_State;
    QFrame *line;

    void setupUi(QWidget *VolumeReconstructionToolbox)
    {
        if (VolumeReconstructionToolbox->objectName().isEmpty())
            VolumeReconstructionToolbox->setObjectName(QString::fromUtf8("VolumeReconstructionToolbox"));
        VolumeReconstructionToolbox->resize(230, 280);
        VolumeReconstructionToolbox->setMinimumSize(QSize(230, 280));
        VolumeReconstructionToolbox->setMaximumSize(QSize(230, 16777215));
        gridLayout = new QGridLayout(VolumeReconstructionToolbox);
        gridLayout->setSpacing(4);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 4, 0, 4);
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(2);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label_VolumeReconstructionConfig = new QLabel(VolumeReconstructionToolbox);
        label_VolumeReconstructionConfig->setObjectName(QString::fromUtf8("label_VolumeReconstructionConfig"));

        horizontalLayout_3->addWidget(label_VolumeReconstructionConfig);

        pushButton_OpenVolumeReconstructionConfig = new QPushButton(VolumeReconstructionToolbox);
        pushButton_OpenVolumeReconstructionConfig->setObjectName(QString::fromUtf8("pushButton_OpenVolumeReconstructionConfig"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(pushButton_OpenVolumeReconstructionConfig->sizePolicy().hasHeightForWidth());
        pushButton_OpenVolumeReconstructionConfig->setSizePolicy(sizePolicy);
        pushButton_OpenVolumeReconstructionConfig->setMinimumSize(QSize(23, 23));
        pushButton_OpenVolumeReconstructionConfig->setMaximumSize(QSize(23, 23));
        pushButton_OpenVolumeReconstructionConfig->setFocusPolicy(Qt::NoFocus);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_Import.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_OpenVolumeReconstructionConfig->setIcon(icon);
        pushButton_OpenVolumeReconstructionConfig->setIconSize(QSize(16, 16));

        horizontalLayout_3->addWidget(pushButton_OpenVolumeReconstructionConfig);


        gridLayout->addLayout(horizontalLayout_3, 2, 0, 1, 1);

        label_InputImage = new QLabel(VolumeReconstructionToolbox);
        label_InputImage->setObjectName(QString::fromUtf8("label_InputImage"));

        gridLayout->addWidget(label_InputImage, 3, 0, 1, 1);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(2);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        comboBox_InputImage = new QComboBox(VolumeReconstructionToolbox);
        comboBox_InputImage->setObjectName(QString::fromUtf8("comboBox_InputImage"));

        horizontalLayout->addWidget(comboBox_InputImage);

        pushButton_OpenInputImage = new QPushButton(VolumeReconstructionToolbox);
        pushButton_OpenInputImage->setObjectName(QString::fromUtf8("pushButton_OpenInputImage"));
        sizePolicy.setHeightForWidth(pushButton_OpenInputImage->sizePolicy().hasHeightForWidth());
        pushButton_OpenInputImage->setSizePolicy(sizePolicy);
        pushButton_OpenInputImage->setMinimumSize(QSize(23, 23));
        pushButton_OpenInputImage->setMaximumSize(QSize(23, 23));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/icons/CommonWidgets/Resources/icon_OpenFile.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_OpenInputImage->setIcon(icon1);
        pushButton_OpenInputImage->setIconSize(QSize(16, 16));

        horizontalLayout->addWidget(pushButton_OpenInputImage);


        gridLayout->addLayout(horizontalLayout, 4, 0, 1, 1);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        pushButton_Reconstruct = new QPushButton(VolumeReconstructionToolbox);
        pushButton_Reconstruct->setObjectName(QString::fromUtf8("pushButton_Reconstruct"));
        pushButton_Reconstruct->setMinimumSize(QSize(120, 0));
        pushButton_Reconstruct->setMaximumSize(QSize(120, 16777215));

        horizontalLayout_2->addWidget(pushButton_Reconstruct);


        gridLayout->addLayout(horizontalLayout_2, 11, 0, 1, 1);

        verticalSpacer_2 = new QSpacerItem(177, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout->addItem(verticalSpacer_2, 13, 0, 1, 1);

        verticalSpacer = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout->addItem(verticalSpacer, 8, 0, 1, 1);

        label_Instructions = new QLabel(VolumeReconstructionToolbox);
        label_Instructions->setObjectName(QString::fromUtf8("label_Instructions"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_Instructions->setFont(font);
        label_Instructions->setWordWrap(true);

        gridLayout->addWidget(label_Instructions, 9, 0, 1, 1);

        verticalSpacer_3 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout->addItem(verticalSpacer_3, 10, 0, 1, 1);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        pushButton_Save = new QPushButton(VolumeReconstructionToolbox);
        pushButton_Save->setObjectName(QString::fromUtf8("pushButton_Save"));
        sizePolicy.setHeightForWidth(pushButton_Save->sizePolicy().hasHeightForWidth());
        pushButton_Save->setSizePolicy(sizePolicy);
        pushButton_Save->setMinimumSize(QSize(120, 0));
        pushButton_Save->setMaximumSize(QSize(120, 16777215));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/icons/Resources/icon_Save.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_Save->setIcon(icon2);

        horizontalLayout_4->addWidget(pushButton_Save);


        gridLayout->addLayout(horizontalLayout_4, 12, 0, 1, 1);

        horizontalSlider_ContouringThreshold = new QSlider(VolumeReconstructionToolbox);
        horizontalSlider_ContouringThreshold->setObjectName(QString::fromUtf8("horizontalSlider_ContouringThreshold"));
        horizontalSlider_ContouringThreshold->setMaximum(255);
        horizontalSlider_ContouringThreshold->setValue(64);
        horizontalSlider_ContouringThreshold->setOrientation(Qt::Horizontal);
        horizontalSlider_ContouringThreshold->setTickPosition(QSlider::NoTicks);

        gridLayout->addWidget(horizontalSlider_ContouringThreshold, 7, 0, 1, 1);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        label_ContouringThresholdText = new QLabel(VolumeReconstructionToolbox);
        label_ContouringThresholdText->setObjectName(QString::fromUtf8("label_ContouringThresholdText"));

        horizontalLayout_5->addWidget(label_ContouringThresholdText);

        label_ContouringThreshold = new QLabel(VolumeReconstructionToolbox);
        label_ContouringThreshold->setObjectName(QString::fromUtf8("label_ContouringThreshold"));

        horizontalLayout_5->addWidget(label_ContouringThreshold);


        gridLayout->addLayout(horizontalLayout_5, 6, 0, 1, 1);

        label_State = new QLabel(VolumeReconstructionToolbox);
        label_State->setObjectName(QString::fromUtf8("label_State"));
        label_State->setFont(font);
        label_State->setWordWrap(true);

        gridLayout->addWidget(label_State, 0, 0, 1, 1);

        line = new QFrame(VolumeReconstructionToolbox);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        gridLayout->addWidget(line, 1, 0, 1, 1);


        retranslateUi(VolumeReconstructionToolbox);

        QMetaObject::connectSlotsByName(VolumeReconstructionToolbox);
    } // setupUi

    void retranslateUi(QWidget *VolumeReconstructionToolbox)
    {
        VolumeReconstructionToolbox->setWindowTitle(QApplication::translate("VolumeReconstructionToolbox", "Volume reconstruction", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        label_VolumeReconstructionConfig->setToolTip(QApplication::translate("VolumeReconstructionToolbox", "Also overwrites probe calibration", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_VolumeReconstructionConfig->setText(QApplication::translate("VolumeReconstructionToolbox", "Import volume reconstruction settings:", 0, QApplication::UnicodeUTF8));
        pushButton_OpenVolumeReconstructionConfig->setText(QString());
        label_InputImage->setText(QApplication::translate("VolumeReconstructionToolbox", "Input image sequence file:", 0, QApplication::UnicodeUTF8));
        pushButton_OpenInputImage->setText(QString());
        pushButton_Reconstruct->setText(QApplication::translate("VolumeReconstructionToolbox", "Reconstruct", 0, QApplication::UnicodeUTF8));
        label_Instructions->setText(QApplication::translate("VolumeReconstructionToolbox", "Instructions", 0, QApplication::UnicodeUTF8));
        pushButton_Save->setText(QApplication::translate("VolumeReconstructionToolbox", "Save volume...", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        horizontalSlider_ContouringThreshold->setToolTip(QApplication::translate("VolumeReconstructionToolbox", "Voxel value based on which the displayed surface is created", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        label_ContouringThresholdText->setToolTip(QApplication::translate("VolumeReconstructionToolbox", "Voxel value based on which the displayed surface is created", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_ContouringThresholdText->setText(QApplication::translate("VolumeReconstructionToolbox", "Contouring threshold:", 0, QApplication::UnicodeUTF8));
        label_ContouringThreshold->setText(QApplication::translate("VolumeReconstructionToolbox", "64", 0, QApplication::UnicodeUTF8));
        label_State->setText(QApplication::translate("VolumeReconstructionToolbox", "ImageToProge transform is absent, spatial calibration needs to be performed.", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class VolumeReconstructionToolbox: public Ui_VolumeReconstructionToolbox {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_VOLUMERECONSTRUCTIONTOOLBOX_H
