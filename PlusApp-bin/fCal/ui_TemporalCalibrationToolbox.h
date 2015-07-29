/********************************************************************************
** Form generated from reading UI file 'TemporalCalibrationToolbox.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TEMPORALCALIBRATIONTOOLBOX_H
#define UI_TEMPORALCALIBRATIONTOOLBOX_H

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
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_TemporalCalibrationToolbox
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label_State;
    QFrame *line_2;
    QSpacerItem *verticalSpacer_6;
    QLabel *label_InstructionsTemporal;
    QSpacerItem *verticalSpacer_5;
    QGridLayout *gridLayout;
    QLabel *label_FixedSeries;
    QLabel *label_MovingSeries;
    QComboBox *comboBox_FixedSourceValue;
    QComboBox *comboBox_MovingSourceValue;
    QComboBox *comboBox_FixedChannelValue;
    QComboBox *comboBox_MovingChannelValue;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout_5;
    QPushButton *pushButton_StartCancelTemporal;
    QPushButton *pushButton_ShowPlots;
    QSpacerItem *verticalSpacer_2;

    void setupUi(QWidget *TemporalCalibrationToolbox)
    {
        if (TemporalCalibrationToolbox->objectName().isEmpty())
            TemporalCalibrationToolbox->setObjectName(QString::fromUtf8("TemporalCalibrationToolbox"));
        TemporalCalibrationToolbox->resize(230, 437);
        TemporalCalibrationToolbox->setMinimumSize(QSize(230, 150));
        TemporalCalibrationToolbox->setMaximumSize(QSize(230, 16777215));
        verticalLayout = new QVBoxLayout(TemporalCalibrationToolbox);
        verticalLayout->setSpacing(4);
        verticalLayout->setContentsMargins(4, 4, 4, 4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 4, 0, 4);
        label_State = new QLabel(TemporalCalibrationToolbox);
        label_State->setObjectName(QString::fromUtf8("label_State"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_State->setFont(font);
        label_State->setWordWrap(true);

        verticalLayout->addWidget(label_State);

        line_2 = new QFrame(TemporalCalibrationToolbox);
        line_2->setObjectName(QString::fromUtf8("line_2"));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line_2);

        verticalSpacer_6 = new QSpacerItem(158, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_6);

        label_InstructionsTemporal = new QLabel(TemporalCalibrationToolbox);
        label_InstructionsTemporal->setObjectName(QString::fromUtf8("label_InstructionsTemporal"));
        label_InstructionsTemporal->setFont(font);
        label_InstructionsTemporal->setWordWrap(true);

        verticalLayout->addWidget(label_InstructionsTemporal);

        verticalSpacer_5 = new QSpacerItem(158, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_5);

        gridLayout = new QGridLayout();
        gridLayout->setSpacing(4);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        label_FixedSeries = new QLabel(TemporalCalibrationToolbox);
        label_FixedSeries->setObjectName(QString::fromUtf8("label_FixedSeries"));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(label_FixedSeries->sizePolicy().hasHeightForWidth());
        label_FixedSeries->setSizePolicy(sizePolicy);

        gridLayout->addWidget(label_FixedSeries, 0, 0, 1, 1);

        label_MovingSeries = new QLabel(TemporalCalibrationToolbox);
        label_MovingSeries->setObjectName(QString::fromUtf8("label_MovingSeries"));
        sizePolicy.setHeightForWidth(label_MovingSeries->sizePolicy().hasHeightForWidth());
        label_MovingSeries->setSizePolicy(sizePolicy);

        gridLayout->addWidget(label_MovingSeries, 2, 0, 1, 1);

        comboBox_FixedSourceValue = new QComboBox(TemporalCalibrationToolbox);
        comboBox_FixedSourceValue->setObjectName(QString::fromUtf8("comboBox_FixedSourceValue"));
        comboBox_FixedSourceValue->setEnabled(false);

        gridLayout->addWidget(comboBox_FixedSourceValue, 1, 1, 1, 1);

        comboBox_MovingSourceValue = new QComboBox(TemporalCalibrationToolbox);
        comboBox_MovingSourceValue->setObjectName(QString::fromUtf8("comboBox_MovingSourceValue"));
        comboBox_MovingSourceValue->setEnabled(false);

        gridLayout->addWidget(comboBox_MovingSourceValue, 3, 1, 1, 1);

        comboBox_FixedChannelValue = new QComboBox(TemporalCalibrationToolbox);
        comboBox_FixedChannelValue->setObjectName(QString::fromUtf8("comboBox_FixedChannelValue"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(comboBox_FixedChannelValue->sizePolicy().hasHeightForWidth());
        comboBox_FixedChannelValue->setSizePolicy(sizePolicy1);

        gridLayout->addWidget(comboBox_FixedChannelValue, 1, 0, 1, 1);

        comboBox_MovingChannelValue = new QComboBox(TemporalCalibrationToolbox);
        comboBox_MovingChannelValue->setObjectName(QString::fromUtf8("comboBox_MovingChannelValue"));

        gridLayout->addWidget(comboBox_MovingChannelValue, 3, 0, 1, 1);


        verticalLayout->addLayout(gridLayout);

        verticalSpacer = new QSpacerItem(20, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setSpacing(4);
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        pushButton_StartCancelTemporal = new QPushButton(TemporalCalibrationToolbox);
        pushButton_StartCancelTemporal->setObjectName(QString::fromUtf8("pushButton_StartCancelTemporal"));
        QSizePolicy sizePolicy2(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(pushButton_StartCancelTemporal->sizePolicy().hasHeightForWidth());
        pushButton_StartCancelTemporal->setSizePolicy(sizePolicy2);
        pushButton_StartCancelTemporal->setMinimumSize(QSize(0, 0));
        pushButton_StartCancelTemporal->setMaximumSize(QSize(16777215, 16777215));

        horizontalLayout_5->addWidget(pushButton_StartCancelTemporal);

        pushButton_ShowPlots = new QPushButton(TemporalCalibrationToolbox);
        pushButton_ShowPlots->setObjectName(QString::fromUtf8("pushButton_ShowPlots"));
        pushButton_ShowPlots->setMinimumSize(QSize(105, 0));
        pushButton_ShowPlots->setCheckable(true);

        horizontalLayout_5->addWidget(pushButton_ShowPlots);


        verticalLayout->addLayout(horizontalLayout_5);

        verticalSpacer_2 = new QSpacerItem(158, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);


        retranslateUi(TemporalCalibrationToolbox);

        QMetaObject::connectSlotsByName(TemporalCalibrationToolbox);
    } // setupUi

    void retranslateUi(QWidget *TemporalCalibrationToolbox)
    {
        TemporalCalibrationToolbox->setWindowTitle(QApplication::translate("TemporalCalibrationToolbox", "Temporal Calibration", 0, QApplication::UnicodeUTF8));
        label_State->setText(QApplication::translate("TemporalCalibrationToolbox", "Temporal calibration is 0.0ms", 0, QApplication::UnicodeUTF8));
        label_InstructionsTemporal->setText(QApplication::translate("TemporalCalibrationToolbox", "Instructions", 0, QApplication::UnicodeUTF8));
        label_FixedSeries->setText(QApplication::translate("TemporalCalibrationToolbox", "Fixed (offset=0)", 0, QApplication::UnicodeUTF8));
        label_MovingSeries->setText(QApplication::translate("TemporalCalibrationToolbox", "Moving (offset=x)", 0, QApplication::UnicodeUTF8));
        pushButton_StartCancelTemporal->setText(QApplication::translate("TemporalCalibrationToolbox", "Start", 0, QApplication::UnicodeUTF8));
        pushButton_ShowPlots->setText(QApplication::translate("TemporalCalibrationToolbox", "Show Plots", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class TemporalCalibrationToolbox: public Ui_TemporalCalibrationToolbox {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TEMPORALCALIBRATIONTOOLBOX_H
