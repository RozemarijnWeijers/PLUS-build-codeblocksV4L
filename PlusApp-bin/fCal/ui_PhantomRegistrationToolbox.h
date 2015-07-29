/********************************************************************************
** Form generated from reading UI file 'PhantomRegistrationToolbox.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PHANTOMREGISTRATIONTOOLBOX_H
#define UI_PHANTOMREGISTRATIONTOOLBOX_H

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
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QTabWidget>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_PhantomRegistrationToolbox
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label_State;
    QFrame *line_3;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_StylusCalibration;
    QPushButton *pushButton_OpenStylusCalibration;
    QFrame *line;
    QVTKWidget *canvasPhantom;
    QFrame *line_2;
    QSpacerItem *verticalSpacer_3;
    QLabel *label_Instructions;
    QSpacerItem *verticalSpacer_4;
    QLabel *label_StylusPositionText;
    QSpacerItem *verticalSpacer;
    QGridLayout *gridLayout;
    QTabWidget *tabWidget;
    QWidget *tab_Landmark;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *pushButton_Undo;
    QPushButton *pushButton_Landmark_Reset;
    QWidget *horizontalLayoutWidget;
    QHBoxLayout *horizontalLayout;
    QPushButton *pushButton_StartStop_LandmarkDetection;
    QPushButton *pushButton_RecordPoint;
    QWidget *tab_LinearObject;
    QWidget *layoutWidget_2;
    QHBoxLayout *horizontalLayout_4;
    QPushButton *pushButton_StartStop;
    QPushButton *pushButton_LinearObject_Reset;
    QSpacerItem *verticalSpacer_2;

    void setupUi(QWidget *PhantomRegistrationToolbox)
    {
        if (PhantomRegistrationToolbox->objectName().isEmpty())
            PhantomRegistrationToolbox->setObjectName(QString::fromUtf8("PhantomRegistrationToolbox"));
        PhantomRegistrationToolbox->resize(230, 420);
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(PhantomRegistrationToolbox->sizePolicy().hasHeightForWidth());
        PhantomRegistrationToolbox->setSizePolicy(sizePolicy);
        PhantomRegistrationToolbox->setMinimumSize(QSize(230, 420));
        PhantomRegistrationToolbox->setMaximumSize(QSize(230, 16777215));
        verticalLayout = new QVBoxLayout(PhantomRegistrationToolbox);
        verticalLayout->setSpacing(4);
        verticalLayout->setContentsMargins(4, 4, 4, 4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 4, 0, 4);
        label_State = new QLabel(PhantomRegistrationToolbox);
        label_State->setObjectName(QString::fromUtf8("label_State"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_State->setFont(font);
        label_State->setWordWrap(true);

        verticalLayout->addWidget(label_State);

        line_3 = new QFrame(PhantomRegistrationToolbox);
        line_3->setObjectName(QString::fromUtf8("line_3"));
        line_3->setFrameShape(QFrame::HLine);
        line_3->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line_3);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(2);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label_StylusCalibration = new QLabel(PhantomRegistrationToolbox);
        label_StylusCalibration->setObjectName(QString::fromUtf8("label_StylusCalibration"));

        horizontalLayout_3->addWidget(label_StylusCalibration);

        pushButton_OpenStylusCalibration = new QPushButton(PhantomRegistrationToolbox);
        pushButton_OpenStylusCalibration->setObjectName(QString::fromUtf8("pushButton_OpenStylusCalibration"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(pushButton_OpenStylusCalibration->sizePolicy().hasHeightForWidth());
        pushButton_OpenStylusCalibration->setSizePolicy(sizePolicy1);
        pushButton_OpenStylusCalibration->setMinimumSize(QSize(23, 23));
        pushButton_OpenStylusCalibration->setMaximumSize(QSize(23, 23));
        pushButton_OpenStylusCalibration->setFocusPolicy(Qt::NoFocus);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_Import.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_OpenStylusCalibration->setIcon(icon);
        pushButton_OpenStylusCalibration->setIconSize(QSize(16, 16));

        horizontalLayout_3->addWidget(pushButton_OpenStylusCalibration);


        verticalLayout->addLayout(horizontalLayout_3);

        line = new QFrame(PhantomRegistrationToolbox);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        canvasPhantom = new QVTKWidget(PhantomRegistrationToolbox);
        canvasPhantom->setObjectName(QString::fromUtf8("canvasPhantom"));
        QSizePolicy sizePolicy2(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy2.setHorizontalStretch(1);
        sizePolicy2.setVerticalStretch(1);
        sizePolicy2.setHeightForWidth(canvasPhantom->sizePolicy().hasHeightForWidth());
        canvasPhantom->setSizePolicy(sizePolicy2);
        canvasPhantom->setMinimumSize(QSize(218, 156));
        canvasPhantom->setMaximumSize(QSize(218, 16777215));
        canvasPhantom->setSizeIncrement(QSize(4, 3));

        verticalLayout->addWidget(canvasPhantom);

        line_2 = new QFrame(PhantomRegistrationToolbox);
        line_2->setObjectName(QString::fromUtf8("line_2"));
        sizePolicy1.setHeightForWidth(line_2->sizePolicy().hasHeightForWidth());
        line_2->setSizePolicy(sizePolicy1);
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line_2);

        verticalSpacer_3 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_3);

        label_Instructions = new QLabel(PhantomRegistrationToolbox);
        label_Instructions->setObjectName(QString::fromUtf8("label_Instructions"));
        label_Instructions->setFont(font);
        label_Instructions->setWordWrap(true);

        verticalLayout->addWidget(label_Instructions);

        verticalSpacer_4 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        label_StylusPositionText = new QLabel(PhantomRegistrationToolbox);
        label_StylusPositionText->setObjectName(QString::fromUtf8("label_StylusPositionText"));

        verticalLayout->addWidget(label_StylusPositionText);

        verticalSpacer = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        gridLayout = new QGridLayout();
        gridLayout->setSpacing(4);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));

        verticalLayout->addLayout(gridLayout);

        tabWidget = new QTabWidget(PhantomRegistrationToolbox);
        tabWidget->setObjectName(QString::fromUtf8("tabWidget"));
        tabWidget->setMinimumSize(QSize(0, 100));
        tab_Landmark = new QWidget();
        tab_Landmark->setObjectName(QString::fromUtf8("tab_Landmark"));
        layoutWidget = new QWidget(tab_Landmark);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(35, 40, 156, 25));
        horizontalLayout_2 = new QHBoxLayout(layoutWidget);
        horizontalLayout_2->setSpacing(4);
        horizontalLayout_2->setContentsMargins(4, 4, 4, 4);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);
        pushButton_Undo = new QPushButton(layoutWidget);
        pushButton_Undo->setObjectName(QString::fromUtf8("pushButton_Undo"));

        horizontalLayout_2->addWidget(pushButton_Undo);

        pushButton_Landmark_Reset = new QPushButton(layoutWidget);
        pushButton_Landmark_Reset->setObjectName(QString::fromUtf8("pushButton_Landmark_Reset"));

        horizontalLayout_2->addWidget(pushButton_Landmark_Reset);

        horizontalLayoutWidget = new QWidget(tab_Landmark);
        horizontalLayoutWidget->setObjectName(QString::fromUtf8("horizontalLayoutWidget"));
        horizontalLayoutWidget->setGeometry(QRect(0, 10, 218, 25));
        horizontalLayout = new QHBoxLayout(horizontalLayoutWidget);
        horizontalLayout->setSpacing(4);
        horizontalLayout->setContentsMargins(4, 4, 4, 4);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        pushButton_StartStop_LandmarkDetection = new QPushButton(horizontalLayoutWidget);
        pushButton_StartStop_LandmarkDetection->setObjectName(QString::fromUtf8("pushButton_StartStop_LandmarkDetection"));
        pushButton_StartStop_LandmarkDetection->setMinimumSize(QSize(120, 0));

        horizontalLayout->addWidget(pushButton_StartStop_LandmarkDetection);

        pushButton_RecordPoint = new QPushButton(horizontalLayoutWidget);
        pushButton_RecordPoint->setObjectName(QString::fromUtf8("pushButton_RecordPoint"));
        pushButton_RecordPoint->setEnabled(false);
        sizePolicy1.setHeightForWidth(pushButton_RecordPoint->sizePolicy().hasHeightForWidth());
        pushButton_RecordPoint->setSizePolicy(sizePolicy1);
        pushButton_RecordPoint->setMinimumSize(QSize(80, 0));
        pushButton_RecordPoint->setMaximumSize(QSize(120, 16777215));

        horizontalLayout->addWidget(pushButton_RecordPoint);

        tabWidget->addTab(tab_Landmark, QString());
        tab_LinearObject = new QWidget();
        tab_LinearObject->setObjectName(QString::fromUtf8("tab_LinearObject"));
        layoutWidget_2 = new QWidget(tab_LinearObject);
        layoutWidget_2->setObjectName(QString::fromUtf8("layoutWidget_2"));
        layoutWidget_2->setGeometry(QRect(35, 40, 156, 25));
        horizontalLayout_4 = new QHBoxLayout(layoutWidget_2);
        horizontalLayout_4->setSpacing(4);
        horizontalLayout_4->setContentsMargins(4, 4, 4, 4);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        horizontalLayout_4->setContentsMargins(0, 0, 0, 0);
        pushButton_StartStop = new QPushButton(layoutWidget_2);
        pushButton_StartStop->setObjectName(QString::fromUtf8("pushButton_StartStop"));

        horizontalLayout_4->addWidget(pushButton_StartStop);

        pushButton_LinearObject_Reset = new QPushButton(layoutWidget_2);
        pushButton_LinearObject_Reset->setObjectName(QString::fromUtf8("pushButton_LinearObject_Reset"));

        horizontalLayout_4->addWidget(pushButton_LinearObject_Reset);

        tabWidget->addTab(tab_LinearObject, QString());

        verticalLayout->addWidget(tabWidget);

        verticalSpacer_2 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);


        retranslateUi(PhantomRegistrationToolbox);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(PhantomRegistrationToolbox);
    } // setupUi

    void retranslateUi(QWidget *PhantomRegistrationToolbox)
    {
        PhantomRegistrationToolbox->setWindowTitle(QApplication::translate("PhantomRegistrationToolbox", "Phantom registration", 0, QApplication::UnicodeUTF8));
        label_State->setText(QApplication::translate("PhantomRegistrationToolbox", "PhantomToReference transform is absent, registration needs to be performed.", 0, QApplication::UnicodeUTF8));
        label_StylusCalibration->setText(QApplication::translate("PhantomRegistrationToolbox", "Import stylus calibration result:", 0, QApplication::UnicodeUTF8));
        pushButton_OpenStylusCalibration->setText(QString());
        label_Instructions->setText(QApplication::translate("PhantomRegistrationToolbox", "Instructions", 0, QApplication::UnicodeUTF8));
        label_StylusPositionText->setText(QApplication::translate("PhantomRegistrationToolbox", "Stylus tip position:", 0, QApplication::UnicodeUTF8));
        pushButton_Undo->setText(QApplication::translate("PhantomRegistrationToolbox", "Undo", 0, QApplication::UnicodeUTF8));
        pushButton_Landmark_Reset->setText(QApplication::translate("PhantomRegistrationToolbox", "Reset", 0, QApplication::UnicodeUTF8));
        pushButton_StartStop_LandmarkDetection->setText(QApplication::translate("PhantomRegistrationToolbox", "Start Landmark Detection", 0, QApplication::UnicodeUTF8));
        pushButton_RecordPoint->setText(QApplication::translate("PhantomRegistrationToolbox", "Record point", 0, QApplication::UnicodeUTF8));
        tabWidget->setTabText(tabWidget->indexOf(tab_Landmark), QApplication::translate("PhantomRegistrationToolbox", "Landmark", 0, QApplication::UnicodeUTF8));
        pushButton_StartStop->setText(QApplication::translate("PhantomRegistrationToolbox", "Start", 0, QApplication::UnicodeUTF8));
        pushButton_LinearObject_Reset->setText(QApplication::translate("PhantomRegistrationToolbox", "Reset", 0, QApplication::UnicodeUTF8));
        tabWidget->setTabText(tabWidget->indexOf(tab_LinearObject), QApplication::translate("PhantomRegistrationToolbox", "Linear Object", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class PhantomRegistrationToolbox: public Ui_PhantomRegistrationToolbox {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PHANTOMREGISTRATIONTOOLBOX_H
