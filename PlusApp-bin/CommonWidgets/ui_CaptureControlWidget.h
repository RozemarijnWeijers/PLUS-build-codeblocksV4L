/********************************************************************************
** Form generated from reading UI file 'CaptureControlWidget.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CAPTURECONTROLWIDGET_H
#define UI_CAPTURECONTROLWIDGET_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QFrame>
#include <QtGui/QGridLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSlider>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_CaptureControlWidget
{
public:
    QGridLayout *gridLayout_2;
    QFrame *frame;
    QGridLayout *gridLayout;
    QLabel *channelIdentifierLabel;
    QLabel *requestedFrameRateLabel;
    QLabel *numberOfRecordedFramesValueLabel;
    QLabel *actualFrameRateValueLabel;
    QLabel *numberOfRecordedFramesLabel;
    QLabel *actualFrameRateLabel;
    QLabel *requestedSamplingRate;
    QSlider *samplingRateSlider;
    QPushButton *startStopButton;
    QPushButton *clearRecordedFramesButton;
    QPushButton *saveAsButton;
    QPushButton *saveButton;
    QPushButton *snapshotButton;
    QLabel *requestedFrameRateValueLabel;

    void setupUi(QWidget *CaptureControlWidget)
    {
        if (CaptureControlWidget->objectName().isEmpty())
            CaptureControlWidget->setObjectName(QString::fromUtf8("CaptureControlWidget"));
        CaptureControlWidget->resize(230, 90);
        CaptureControlWidget->setMinimumSize(QSize(215, 90));
        CaptureControlWidget->setMaximumSize(QSize(230, 90));
        gridLayout_2 = new QGridLayout(CaptureControlWidget);
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        gridLayout_2->setHorizontalSpacing(0);
        frame = new QFrame(CaptureControlWidget);
        frame->setObjectName(QString::fromUtf8("frame"));
        frame->setMinimumSize(QSize(215, 90));
        frame->setMaximumSize(QSize(230, 90));
        frame->setFrameShape(QFrame::StyledPanel);
        frame->setFrameShadow(QFrame::Sunken);
        gridLayout = new QGridLayout(frame);
        gridLayout->setSpacing(1);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        channelIdentifierLabel = new QLabel(frame);
        channelIdentifierLabel->setObjectName(QString::fromUtf8("channelIdentifierLabel"));
        channelIdentifierLabel->setMinimumSize(QSize(110, 0));
        QFont font;
        font.setBold(false);
        font.setItalic(true);
        font.setWeight(50);
        channelIdentifierLabel->setFont(font);

        gridLayout->addWidget(channelIdentifierLabel, 0, 0, 1, 1);

        requestedFrameRateLabel = new QLabel(frame);
        requestedFrameRateLabel->setObjectName(QString::fromUtf8("requestedFrameRateLabel"));
        requestedFrameRateLabel->setMinimumSize(QSize(75, 0));

        gridLayout->addWidget(requestedFrameRateLabel, 1, 0, 1, 1);

        numberOfRecordedFramesValueLabel = new QLabel(frame);
        numberOfRecordedFramesValueLabel->setObjectName(QString::fromUtf8("numberOfRecordedFramesValueLabel"));
        QFont font1;
        font1.setBold(true);
        font1.setWeight(75);
        numberOfRecordedFramesValueLabel->setFont(font1);
        numberOfRecordedFramesValueLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        gridLayout->addWidget(numberOfRecordedFramesValueLabel, 1, 5, 1, 1);

        actualFrameRateValueLabel = new QLabel(frame);
        actualFrameRateValueLabel->setObjectName(QString::fromUtf8("actualFrameRateValueLabel"));
        actualFrameRateValueLabel->setFont(font1);
        actualFrameRateValueLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        gridLayout->addWidget(actualFrameRateValueLabel, 0, 5, 1, 1);

        numberOfRecordedFramesLabel = new QLabel(frame);
        numberOfRecordedFramesLabel->setObjectName(QString::fromUtf8("numberOfRecordedFramesLabel"));
        numberOfRecordedFramesLabel->setMinimumSize(QSize(0, 0));

        gridLayout->addWidget(numberOfRecordedFramesLabel, 1, 4, 1, 1);

        actualFrameRateLabel = new QLabel(frame);
        actualFrameRateLabel->setObjectName(QString::fromUtf8("actualFrameRateLabel"));
        actualFrameRateLabel->setMinimumSize(QSize(55, 0));

        gridLayout->addWidget(actualFrameRateLabel, 0, 4, 1, 1);

        requestedSamplingRate = new QLabel(frame);
        requestedSamplingRate->setObjectName(QString::fromUtf8("requestedSamplingRate"));
        requestedSamplingRate->setMinimumSize(QSize(75, 0));

        gridLayout->addWidget(requestedSamplingRate, 2, 0, 1, 1);

        samplingRateSlider = new QSlider(frame);
        samplingRateSlider->setObjectName(QString::fromUtf8("samplingRateSlider"));
        samplingRateSlider->setMaximum(10);
        samplingRateSlider->setSingleStep(1);
        samplingRateSlider->setValue(10);
        samplingRateSlider->setSliderPosition(10);
        samplingRateSlider->setOrientation(Qt::Horizontal);
        samplingRateSlider->setInvertedAppearance(false);
        samplingRateSlider->setInvertedControls(false);
        samplingRateSlider->setTickPosition(QSlider::TicksBelow);
        samplingRateSlider->setTickInterval(1);

        gridLayout->addWidget(samplingRateSlider, 2, 3, 1, 3);

        startStopButton = new QPushButton(frame);
        startStopButton->setObjectName(QString::fromUtf8("startStopButton"));
        startStopButton->setMinimumSize(QSize(40, 21));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_Record.png"), QSize(), QIcon::Normal, QIcon::Off);
        startStopButton->setIcon(icon);

        gridLayout->addWidget(startStopButton, 3, 0, 1, 1);

        clearRecordedFramesButton = new QPushButton(frame);
        clearRecordedFramesButton->setObjectName(QString::fromUtf8("clearRecordedFramesButton"));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(clearRecordedFramesButton->sizePolicy().hasHeightForWidth());
        clearRecordedFramesButton->setSizePolicy(sizePolicy);
        clearRecordedFramesButton->setMinimumSize(QSize(0, 21));
        clearRecordedFramesButton->setMaximumSize(QSize(40, 16777215));

        gridLayout->addWidget(clearRecordedFramesButton, 3, 5, 1, 1);

        saveAsButton = new QPushButton(frame);
        saveAsButton->setObjectName(QString::fromUtf8("saveAsButton"));
        saveAsButton->setMinimumSize(QSize(0, 21));
        saveAsButton->setMaximumSize(QSize(40, 16777215));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/icons/Resources/icon_Save.png"), QSize(), QIcon::Normal, QIcon::Off);
        saveAsButton->setIcon(icon1);

        gridLayout->addWidget(saveAsButton, 3, 4, 1, 1);

        saveButton = new QPushButton(frame);
        saveButton->setObjectName(QString::fromUtf8("saveButton"));
        saveButton->setMinimumSize(QSize(0, 21));
        saveButton->setIcon(icon1);

        gridLayout->addWidget(saveButton, 3, 3, 1, 1);

        snapshotButton = new QPushButton(frame);
        snapshotButton->setObjectName(QString::fromUtf8("snapshotButton"));
        snapshotButton->setMinimumSize(QSize(0, 21));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/icons/Resources/icon_Snapshot.png"), QSize(), QIcon::Normal, QIcon::Off);
        snapshotButton->setIcon(icon2);

        gridLayout->addWidget(snapshotButton, 3, 2, 1, 1);

        requestedFrameRateValueLabel = new QLabel(frame);
        requestedFrameRateValueLabel->setObjectName(QString::fromUtf8("requestedFrameRateValueLabel"));
        requestedFrameRateValueLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        gridLayout->addWidget(requestedFrameRateValueLabel, 1, 3, 1, 1);


        gridLayout_2->addWidget(frame, 0, 0, 1, 1);


        retranslateUi(CaptureControlWidget);

        QMetaObject::connectSlotsByName(CaptureControlWidget);
    } // setupUi

    void retranslateUi(QWidget *CaptureControlWidget)
    {
        CaptureControlWidget->setWindowTitle(QApplication::translate("CaptureControlWidget", "Form", 0, QApplication::UnicodeUTF8));
        channelIdentifierLabel->setText(QApplication::translate("CaptureControlWidget", "TextLabel", 0, QApplication::UnicodeUTF8));
        requestedFrameRateLabel->setText(QApplication::translate("CaptureControlWidget", "Requested FPS:", 0, QApplication::UnicodeUTF8));
        numberOfRecordedFramesValueLabel->setText(QApplication::translate("CaptureControlWidget", "0", 0, QApplication::UnicodeUTF8));
        actualFrameRateValueLabel->setText(QApplication::translate("CaptureControlWidget", "0.0", 0, QApplication::UnicodeUTF8));
        numberOfRecordedFramesLabel->setText(QApplication::translate("CaptureControlWidget", "Frames:", 0, QApplication::UnicodeUTF8));
        actualFrameRateLabel->setText(QApplication::translate("CaptureControlWidget", "Actual FPS:", 0, QApplication::UnicodeUTF8));
        requestedSamplingRate->setText(QApplication::translate("CaptureControlWidget", "Sampling Rate:", 0, QApplication::UnicodeUTF8));
        startStopButton->setText(QApplication::translate("CaptureControlWidget", "Record", 0, QApplication::UnicodeUTF8));
        clearRecordedFramesButton->setText(QApplication::translate("CaptureControlWidget", "Clear", 0, QApplication::UnicodeUTF8));
        saveAsButton->setText(QApplication::translate("CaptureControlWidget", "...", 0, QApplication::UnicodeUTF8));
        saveButton->setText(QString());
        snapshotButton->setText(QString());
        requestedFrameRateValueLabel->setText(QApplication::translate("CaptureControlWidget", "0.0", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class CaptureControlWidget: public Ui_CaptureControlWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CAPTURECONTROLWIDGET_H
