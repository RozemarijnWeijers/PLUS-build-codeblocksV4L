/********************************************************************************
** Form generated from reading UI file 'CapturingToolbox.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CAPTURINGTOOLBOX_H
#define UI_CAPTURINGTOOLBOX_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QFrame>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPlainTextEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSlider>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_CapturingToolbox
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label_State;
    QFrame *line;
    QHBoxLayout *horizontalLayout_4;
    QPushButton *pushButton_Record;
    QPushButton *pushButton_Snapshot;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout;
    QLabel *label_NumberOfRecordedFramesText;
    QLabel *label_NumberOfRecordedFrames;
    QHBoxLayout *horizontalLayout_7;
    QLabel *label;
    QSlider *horizontalSlider_SamplingRate;
    QHBoxLayout *horizontalLayout_9;
    QLabel *label_RequestedRecordingFrameRateText;
    QLabel *label_RequestedRecordingFrameRate;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_ActualRecordingFrameRateText;
    QLabel *label_ActualRecordingFrameRate;
    QHBoxLayout *horizontalLayout_8;
    QLabel *label_MaximumRecordingFrameRateText;
    QLabel *label_MaximumRecordingFrameRate;
    QSpacerItem *verticalSpacer_4;
    QHBoxLayout *horizontalLayout_5;
    QPushButton *pushButton_Save;
    QPushButton *pushButton_ClearRecordedFrames;
    QPushButton *pushButton_SaveAs;
    QPlainTextEdit *plainTextEdit_saveResult;
    QHBoxLayout *horizontalLayout_3;
    QPushButton *pushButton_StartStopAll;
    QPushButton *pushButton_SaveAll;
    QPushButton *pushButton_ClearAll;
    QSpacerItem *collapsingVerticalSpacer;

    void setupUi(QWidget *CapturingToolbox)
    {
        if (CapturingToolbox->objectName().isEmpty())
            CapturingToolbox->setObjectName(QString::fromUtf8("CapturingToolbox"));
        CapturingToolbox->resize(230, 720);
        CapturingToolbox->setMinimumSize(QSize(230, 720));
        CapturingToolbox->setMaximumSize(QSize(230, 720));
        CapturingToolbox->setLayoutDirection(Qt::LeftToRight);
        verticalLayout = new QVBoxLayout(CapturingToolbox);
        verticalLayout->setSpacing(4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 4, 0, 4);
        label_State = new QLabel(CapturingToolbox);
        label_State->setObjectName(QString::fromUtf8("label_State"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_State->setFont(font);
        label_State->setWordWrap(true);

        verticalLayout->addWidget(label_State);

        line = new QFrame(CapturingToolbox);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        pushButton_Record = new QPushButton(CapturingToolbox);
        pushButton_Record->setObjectName(QString::fromUtf8("pushButton_Record"));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(pushButton_Record->sizePolicy().hasHeightForWidth());
        pushButton_Record->setSizePolicy(sizePolicy);
        pushButton_Record->setMinimumSize(QSize(80, 23));
        pushButton_Record->setMaximumSize(QSize(80, 23));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_Record.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_Record->setIcon(icon);

        horizontalLayout_4->addWidget(pushButton_Record);

        pushButton_Snapshot = new QPushButton(CapturingToolbox);
        pushButton_Snapshot->setObjectName(QString::fromUtf8("pushButton_Snapshot"));
        sizePolicy.setHeightForWidth(pushButton_Snapshot->sizePolicy().hasHeightForWidth());
        pushButton_Snapshot->setSizePolicy(sizePolicy);
        pushButton_Snapshot->setMinimumSize(QSize(90, 23));
        pushButton_Snapshot->setMaximumSize(QSize(90, 23));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/icons/Resources/icon_Snapshot.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_Snapshot->setIcon(icon1);

        horizontalLayout_4->addWidget(pushButton_Snapshot);


        verticalLayout->addLayout(horizontalLayout_4);

        verticalSpacer = new QSpacerItem(20, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(4);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label_NumberOfRecordedFramesText = new QLabel(CapturingToolbox);
        label_NumberOfRecordedFramesText->setObjectName(QString::fromUtf8("label_NumberOfRecordedFramesText"));
        label_NumberOfRecordedFramesText->setMinimumSize(QSize(0, 20));

        horizontalLayout->addWidget(label_NumberOfRecordedFramesText);

        label_NumberOfRecordedFrames = new QLabel(CapturingToolbox);
        label_NumberOfRecordedFrames->setObjectName(QString::fromUtf8("label_NumberOfRecordedFrames"));
        label_NumberOfRecordedFrames->setFont(font);
        label_NumberOfRecordedFrames->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout->addWidget(label_NumberOfRecordedFrames);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        label = new QLabel(CapturingToolbox);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout_7->addWidget(label);

        horizontalSlider_SamplingRate = new QSlider(CapturingToolbox);
        horizontalSlider_SamplingRate->setObjectName(QString::fromUtf8("horizontalSlider_SamplingRate"));
        horizontalSlider_SamplingRate->setMaximum(10);
        horizontalSlider_SamplingRate->setSingleStep(1);
        horizontalSlider_SamplingRate->setValue(10);
        horizontalSlider_SamplingRate->setSliderPosition(10);
        horizontalSlider_SamplingRate->setOrientation(Qt::Horizontal);
        horizontalSlider_SamplingRate->setInvertedAppearance(false);
        horizontalSlider_SamplingRate->setInvertedControls(false);
        horizontalSlider_SamplingRate->setTickPosition(QSlider::TicksBelow);
        horizontalSlider_SamplingRate->setTickInterval(1);

        horizontalLayout_7->addWidget(horizontalSlider_SamplingRate);


        verticalLayout->addLayout(horizontalLayout_7);

        horizontalLayout_9 = new QHBoxLayout();
        horizontalLayout_9->setObjectName(QString::fromUtf8("horizontalLayout_9"));
        label_RequestedRecordingFrameRateText = new QLabel(CapturingToolbox);
        label_RequestedRecordingFrameRateText->setObjectName(QString::fromUtf8("label_RequestedRecordingFrameRateText"));
        label_RequestedRecordingFrameRateText->setMinimumSize(QSize(0, 20));

        horizontalLayout_9->addWidget(label_RequestedRecordingFrameRateText);

        label_RequestedRecordingFrameRate = new QLabel(CapturingToolbox);
        label_RequestedRecordingFrameRate->setObjectName(QString::fromUtf8("label_RequestedRecordingFrameRate"));
        label_RequestedRecordingFrameRate->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_9->addWidget(label_RequestedRecordingFrameRate);


        verticalLayout->addLayout(horizontalLayout_9);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(4);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_ActualRecordingFrameRateText = new QLabel(CapturingToolbox);
        label_ActualRecordingFrameRateText->setObjectName(QString::fromUtf8("label_ActualRecordingFrameRateText"));
        label_ActualRecordingFrameRateText->setMinimumSize(QSize(0, 20));

        horizontalLayout_2->addWidget(label_ActualRecordingFrameRateText);

        label_ActualRecordingFrameRate = new QLabel(CapturingToolbox);
        label_ActualRecordingFrameRate->setObjectName(QString::fromUtf8("label_ActualRecordingFrameRate"));
        label_ActualRecordingFrameRate->setFont(font);
        label_ActualRecordingFrameRate->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_2->addWidget(label_ActualRecordingFrameRate);


        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout_8 = new QHBoxLayout();
        horizontalLayout_8->setObjectName(QString::fromUtf8("horizontalLayout_8"));
        label_MaximumRecordingFrameRateText = new QLabel(CapturingToolbox);
        label_MaximumRecordingFrameRateText->setObjectName(QString::fromUtf8("label_MaximumRecordingFrameRateText"));
        label_MaximumRecordingFrameRateText->setMinimumSize(QSize(0, 20));

        horizontalLayout_8->addWidget(label_MaximumRecordingFrameRateText);

        label_MaximumRecordingFrameRate = new QLabel(CapturingToolbox);
        label_MaximumRecordingFrameRate->setObjectName(QString::fromUtf8("label_MaximumRecordingFrameRate"));
        label_MaximumRecordingFrameRate->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_8->addWidget(label_MaximumRecordingFrameRate);


        verticalLayout->addLayout(horizontalLayout_8);

        verticalSpacer_4 = new QSpacerItem(20, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        pushButton_Save = new QPushButton(CapturingToolbox);
        pushButton_Save->setObjectName(QString::fromUtf8("pushButton_Save"));
        pushButton_Save->setMinimumSize(QSize(60, 0));
        pushButton_Save->setMaximumSize(QSize(60, 16777215));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/icons/Resources/icon_Save.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_Save->setIcon(icon2);

        horizontalLayout_5->addWidget(pushButton_Save);

        pushButton_ClearRecordedFrames = new QPushButton(CapturingToolbox);
        pushButton_ClearRecordedFrames->setObjectName(QString::fromUtf8("pushButton_ClearRecordedFrames"));
        sizePolicy.setHeightForWidth(pushButton_ClearRecordedFrames->sizePolicy().hasHeightForWidth());
        pushButton_ClearRecordedFrames->setSizePolicy(sizePolicy);
        pushButton_ClearRecordedFrames->setMinimumSize(QSize(55, 0));
        pushButton_ClearRecordedFrames->setMaximumSize(QSize(55, 16777215));

        horizontalLayout_5->addWidget(pushButton_ClearRecordedFrames);

        pushButton_SaveAs = new QPushButton(CapturingToolbox);
        pushButton_SaveAs->setObjectName(QString::fromUtf8("pushButton_SaveAs"));
        sizePolicy.setHeightForWidth(pushButton_SaveAs->sizePolicy().hasHeightForWidth());
        pushButton_SaveAs->setSizePolicy(sizePolicy);
        pushButton_SaveAs->setMinimumSize(QSize(90, 23));
        pushButton_SaveAs->setMaximumSize(QSize(90, 23));
        pushButton_SaveAs->setIcon(icon2);

        horizontalLayout_5->addWidget(pushButton_SaveAs);


        verticalLayout->addLayout(horizontalLayout_5);

        plainTextEdit_saveResult = new QPlainTextEdit(CapturingToolbox);
        plainTextEdit_saveResult->setObjectName(QString::fromUtf8("plainTextEdit_saveResult"));
        plainTextEdit_saveResult->setMinimumSize(QSize(0, 70));
        plainTextEdit_saveResult->setMaximumSize(QSize(16777215, 70));
        plainTextEdit_saveResult->setFrameShape(QFrame::NoFrame);
        plainTextEdit_saveResult->setFrameShadow(QFrame::Plain);
        plainTextEdit_saveResult->setLineWidth(0);
        plainTextEdit_saveResult->setReadOnly(true);

        verticalLayout->addWidget(plainTextEdit_saveResult);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        pushButton_StartStopAll = new QPushButton(CapturingToolbox);
        pushButton_StartStopAll->setObjectName(QString::fromUtf8("pushButton_StartStopAll"));
        pushButton_StartStopAll->setMinimumSize(QSize(80, 0));
        pushButton_StartStopAll->setMaximumSize(QSize(80, 16777215));
        pushButton_StartStopAll->setIcon(icon);

        horizontalLayout_3->addWidget(pushButton_StartStopAll);

        pushButton_SaveAll = new QPushButton(CapturingToolbox);
        pushButton_SaveAll->setObjectName(QString::fromUtf8("pushButton_SaveAll"));
        pushButton_SaveAll->setMinimumSize(QSize(75, 0));
        pushButton_SaveAll->setMaximumSize(QSize(75, 16777215));
        QIcon icon3;
        icon3.addFile(QString::fromUtf8(":/icons/Resources/icon_SaveAll.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_SaveAll->setIcon(icon3);

        horizontalLayout_3->addWidget(pushButton_SaveAll);

        pushButton_ClearAll = new QPushButton(CapturingToolbox);
        pushButton_ClearAll->setObjectName(QString::fromUtf8("pushButton_ClearAll"));
        pushButton_ClearAll->setMaximumSize(QSize(60, 16777215));

        horizontalLayout_3->addWidget(pushButton_ClearAll);


        verticalLayout->addLayout(horizontalLayout_3);

        collapsingVerticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(collapsingVerticalSpacer);


        retranslateUi(CapturingToolbox);

        QMetaObject::connectSlotsByName(CapturingToolbox);
    } // setupUi

    void retranslateUi(QWidget *CapturingToolbox)
    {
        CapturingToolbox->setWindowTitle(QApplication::translate("CapturingToolbox", "Capturing", 0, QApplication::UnicodeUTF8));
        label_State->setText(QApplication::translate("CapturingToolbox", "ImageToProge transform is absent, spatial calibration needs to be performed.", 0, QApplication::UnicodeUTF8));
        pushButton_Record->setText(QApplication::translate("CapturingToolbox", "Record", 0, QApplication::UnicodeUTF8));
        pushButton_Snapshot->setText(QApplication::translate("CapturingToolbox", "Snapshot", 0, QApplication::UnicodeUTF8));
        label_NumberOfRecordedFramesText->setText(QApplication::translate("CapturingToolbox", "Number of recorded frames:", 0, QApplication::UnicodeUTF8));
        label_NumberOfRecordedFrames->setText(QApplication::translate("CapturingToolbox", "0", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("CapturingToolbox", "Sampling rate:", 0, QApplication::UnicodeUTF8));
        label_RequestedRecordingFrameRateText->setText(QApplication::translate("CapturingToolbox", "Requested recording frame rate (FPS):", 0, QApplication::UnicodeUTF8));
        label_RequestedRecordingFrameRate->setText(QApplication::translate("CapturingToolbox", "0.0", 0, QApplication::UnicodeUTF8));
        label_ActualRecordingFrameRateText->setText(QApplication::translate("CapturingToolbox", "Actual recording frame rate (FPS): ", 0, QApplication::UnicodeUTF8));
        label_ActualRecordingFrameRate->setText(QApplication::translate("CapturingToolbox", "0.0", 0, QApplication::UnicodeUTF8));
        label_MaximumRecordingFrameRateText->setText(QApplication::translate("CapturingToolbox", "Maximum recording frame rate (FPS):", 0, QApplication::UnicodeUTF8));
        label_MaximumRecordingFrameRate->setText(QApplication::translate("CapturingToolbox", "0.0", 0, QApplication::UnicodeUTF8));
        pushButton_Save->setText(QApplication::translate("CapturingToolbox", "Save", 0, QApplication::UnicodeUTF8));
        pushButton_ClearRecordedFrames->setText(QApplication::translate("CapturingToolbox", "Clear", 0, QApplication::UnicodeUTF8));
        pushButton_SaveAs->setText(QApplication::translate("CapturingToolbox", "Save As...", 0, QApplication::UnicodeUTF8));
        pushButton_StartStopAll->setText(QApplication::translate("CapturingToolbox", "Record All", 0, QApplication::UnicodeUTF8));
        pushButton_SaveAll->setText(QApplication::translate("CapturingToolbox", "Save All", 0, QApplication::UnicodeUTF8));
        pushButton_ClearAll->setText(QApplication::translate("CapturingToolbox", "Clear All", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class CapturingToolbox: public Ui_CapturingToolbox {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CAPTURINGTOOLBOX_H
