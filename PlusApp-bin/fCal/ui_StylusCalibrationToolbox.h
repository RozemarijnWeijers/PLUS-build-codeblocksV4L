/********************************************************************************
** Form generated from reading UI file 'StylusCalibrationToolbox.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_STYLUSCALIBRATIONTOOLBOX_H
#define UI_STYLUSCALIBRATIONTOOLBOX_H

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
#include <QtGui/QSpinBox>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_StylusCalibrationToolbox
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label_State;
    QFrame *line_2;
    QHBoxLayout *horizontalLayout_7;
    QLabel *labelNumberOfStylusCalibrationPoints;
    QSpinBox *spinBox_NumberOfStylusCalibrationPoints;
    QSpacerItem *verticalSpacer_9;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_1;
    QLabel *label_NumberOfPoints;
    QSpacerItem *verticalSpacer_4;
    QHBoxLayout *horizontalLayout_6;
    QLabel *label_CurrentPositionText;
    QLabel *label_CurrentPosition;
    QSpacerItem *verticalSpacer_7;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label_StylusTipTransformText;
    QLabel *label_StylusTipTransform;
    QSpacerItem *verticalSpacer_6;
    QHBoxLayout *horizontalLayout_4;
    QLabel *label_CalibrationErrorText;
    QLabel *label_CalibrationError;
    QSpacerItem *verticalSpacer_3;
    QLabel *label_Instructions;
    QSpacerItem *verticalSpacer_8;
    QFrame *line;
    QSpacerItem *verticalSpacer_2;
    QHBoxLayout *horizontalLayout;
    QPushButton *pushButton_StartStop;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *StylusCalibrationToolbox)
    {
        if (StylusCalibrationToolbox->objectName().isEmpty())
            StylusCalibrationToolbox->setObjectName(QString::fromUtf8("StylusCalibrationToolbox"));
        StylusCalibrationToolbox->resize(230, 350);
        StylusCalibrationToolbox->setMinimumSize(QSize(230, 350));
        StylusCalibrationToolbox->setMaximumSize(QSize(230, 16777215));
        verticalLayout = new QVBoxLayout(StylusCalibrationToolbox);
        verticalLayout->setSpacing(4);
        verticalLayout->setContentsMargins(4, 4, 4, 4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 4, 0, 4);
        label_State = new QLabel(StylusCalibrationToolbox);
        label_State->setObjectName(QString::fromUtf8("label_State"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_State->setFont(font);
        label_State->setWordWrap(true);

        verticalLayout->addWidget(label_State);

        line_2 = new QFrame(StylusCalibrationToolbox);
        line_2->setObjectName(QString::fromUtf8("line_2"));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line_2);

        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setSpacing(4);
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        labelNumberOfStylusCalibrationPoints = new QLabel(StylusCalibrationToolbox);
        labelNumberOfStylusCalibrationPoints->setObjectName(QString::fromUtf8("labelNumberOfStylusCalibrationPoints"));
        labelNumberOfStylusCalibrationPoints->setWordWrap(true);

        horizontalLayout_7->addWidget(labelNumberOfStylusCalibrationPoints);

        spinBox_NumberOfStylusCalibrationPoints = new QSpinBox(StylusCalibrationToolbox);
        spinBox_NumberOfStylusCalibrationPoints->setObjectName(QString::fromUtf8("spinBox_NumberOfStylusCalibrationPoints"));
        spinBox_NumberOfStylusCalibrationPoints->setMaximumSize(QSize(64, 16777215));
        spinBox_NumberOfStylusCalibrationPoints->setMaximum(2000);
        spinBox_NumberOfStylusCalibrationPoints->setSingleStep(50);
        spinBox_NumberOfStylusCalibrationPoints->setValue(0);

        horizontalLayout_7->addWidget(spinBox_NumberOfStylusCalibrationPoints);


        verticalLayout->addLayout(horizontalLayout_7);

        verticalSpacer_9 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_9);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(4);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_1 = new QLabel(StylusCalibrationToolbox);
        label_1->setObjectName(QString::fromUtf8("label_1"));
        label_1->setWordWrap(true);

        horizontalLayout_2->addWidget(label_1);

        label_NumberOfPoints = new QLabel(StylusCalibrationToolbox);
        label_NumberOfPoints->setObjectName(QString::fromUtf8("label_NumberOfPoints"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(label_NumberOfPoints->sizePolicy().hasHeightForWidth());
        label_NumberOfPoints->setSizePolicy(sizePolicy);
        label_NumberOfPoints->setFrameShape(QFrame::NoFrame);
        label_NumberOfPoints->setFrameShadow(QFrame::Plain);
        label_NumberOfPoints->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_2->addWidget(label_NumberOfPoints);


        verticalLayout->addLayout(horizontalLayout_2);

        verticalSpacer_4 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setSpacing(4);
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        label_CurrentPositionText = new QLabel(StylusCalibrationToolbox);
        label_CurrentPositionText->setObjectName(QString::fromUtf8("label_CurrentPositionText"));
        label_CurrentPositionText->setWordWrap(true);

        horizontalLayout_6->addWidget(label_CurrentPositionText);

        label_CurrentPosition = new QLabel(StylusCalibrationToolbox);
        label_CurrentPosition->setObjectName(QString::fromUtf8("label_CurrentPosition"));
        sizePolicy.setHeightForWidth(label_CurrentPosition->sizePolicy().hasHeightForWidth());
        label_CurrentPosition->setSizePolicy(sizePolicy);
        label_CurrentPosition->setMinimumSize(QSize(0, 0));
        label_CurrentPosition->setFrameShape(QFrame::NoFrame);
        label_CurrentPosition->setFrameShadow(QFrame::Plain);
        label_CurrentPosition->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_6->addWidget(label_CurrentPosition);


        verticalLayout->addLayout(horizontalLayout_6);

        verticalSpacer_7 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_7);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setSpacing(4);
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        label_StylusTipTransformText = new QLabel(StylusCalibrationToolbox);
        label_StylusTipTransformText->setObjectName(QString::fromUtf8("label_StylusTipTransformText"));
        label_StylusTipTransformText->setWordWrap(true);

        horizontalLayout_5->addWidget(label_StylusTipTransformText);

        label_StylusTipTransform = new QLabel(StylusCalibrationToolbox);
        label_StylusTipTransform->setObjectName(QString::fromUtf8("label_StylusTipTransform"));
        sizePolicy.setHeightForWidth(label_StylusTipTransform->sizePolicy().hasHeightForWidth());
        label_StylusTipTransform->setSizePolicy(sizePolicy);
        label_StylusTipTransform->setMinimumSize(QSize(0, 0));
        label_StylusTipTransform->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_5->addWidget(label_StylusTipTransform);


        verticalLayout->addLayout(horizontalLayout_5);

        verticalSpacer_6 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_6);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setSpacing(4);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        label_CalibrationErrorText = new QLabel(StylusCalibrationToolbox);
        label_CalibrationErrorText->setObjectName(QString::fromUtf8("label_CalibrationErrorText"));
        label_CalibrationErrorText->setWordWrap(true);

        horizontalLayout_4->addWidget(label_CalibrationErrorText);

        label_CalibrationError = new QLabel(StylusCalibrationToolbox);
        label_CalibrationError->setObjectName(QString::fromUtf8("label_CalibrationError"));
        sizePolicy.setHeightForWidth(label_CalibrationError->sizePolicy().hasHeightForWidth());
        label_CalibrationError->setSizePolicy(sizePolicy);
        label_CalibrationError->setMinimumSize(QSize(0, 26));
        label_CalibrationError->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_4->addWidget(label_CalibrationError);


        verticalLayout->addLayout(horizontalLayout_4);

        verticalSpacer_3 = new QSpacerItem(20, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_3);

        label_Instructions = new QLabel(StylusCalibrationToolbox);
        label_Instructions->setObjectName(QString::fromUtf8("label_Instructions"));
        label_Instructions->setFont(font);
        label_Instructions->setWordWrap(true);

        verticalLayout->addWidget(label_Instructions);

        verticalSpacer_8 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_8);

        line = new QFrame(StylusCalibrationToolbox);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        verticalSpacer_2 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(4);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        pushButton_StartStop = new QPushButton(StylusCalibrationToolbox);
        pushButton_StartStop->setObjectName(QString::fromUtf8("pushButton_StartStop"));
        pushButton_StartStop->setEnabled(false);
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(pushButton_StartStop->sizePolicy().hasHeightForWidth());
        pushButton_StartStop->setSizePolicy(sizePolicy1);
        pushButton_StartStop->setMinimumSize(QSize(80, 23));
        pushButton_StartStop->setMaximumSize(QSize(80, 23));

        horizontalLayout->addWidget(pushButton_StartStop);


        verticalLayout->addLayout(horizontalLayout);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);


        retranslateUi(StylusCalibrationToolbox);

        QMetaObject::connectSlotsByName(StylusCalibrationToolbox);
    } // setupUi

    void retranslateUi(QWidget *StylusCalibrationToolbox)
    {
        StylusCalibrationToolbox->setWindowTitle(QApplication::translate("StylusCalibrationToolbox", "Stylus calibration", 0, QApplication::UnicodeUTF8));
        label_State->setText(QApplication::translate("StylusCalibrationToolbox", "StylusTipToStylus transform is absent, calibration needs to be performed.", 0, QApplication::UnicodeUTF8));
        labelNumberOfStylusCalibrationPoints->setText(QApplication::translate("StylusCalibrationToolbox", "Number of points for stylus calibration:", 0, QApplication::UnicodeUTF8));
        label_1->setText(QApplication::translate("StylusCalibrationToolbox", "Number of aquired points:", 0, QApplication::UnicodeUTF8));
        label_NumberOfPoints->setText(QApplication::translate("StylusCalibrationToolbox", "N/A", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        label_CurrentPositionText->setToolTip(QApplication::translate("StylusCalibrationToolbox", "In reference tool coordinate system", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_CurrentPositionText->setText(QApplication::translate("StylusCalibrationToolbox", "Current stylus position (mm):", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        label_CurrentPosition->setToolTip(QApplication::translate("StylusCalibrationToolbox", "In reference tool coordinate system", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_CurrentPosition->setText(QApplication::translate("StylusCalibrationToolbox", "N/A", 0, QApplication::UnicodeUTF8));
        label_StylusTipTransformText->setText(QApplication::translate("StylusCalibrationToolbox", "Stylus tip translation (mm):", 0, QApplication::UnicodeUTF8));
        label_StylusTipTransform->setText(QApplication::translate("StylusCalibrationToolbox", "N/A", 0, QApplication::UnicodeUTF8));
        label_CalibrationErrorText->setText(QApplication::translate("StylusCalibrationToolbox", "Calibration error:", 0, QApplication::UnicodeUTF8));
        label_CalibrationError->setText(QApplication::translate("StylusCalibrationToolbox", "N/A", 0, QApplication::UnicodeUTF8));
        label_Instructions->setText(QApplication::translate("StylusCalibrationToolbox", "Instructions", 0, QApplication::UnicodeUTF8));
        pushButton_StartStop->setText(QApplication::translate("StylusCalibrationToolbox", "Start", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class StylusCalibrationToolbox: public Ui_StylusCalibrationToolbox {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_STYLUSCALIBRATIONTOOLBOX_H
