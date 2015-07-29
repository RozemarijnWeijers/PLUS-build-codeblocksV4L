/********************************************************************************
** Form generated from reading UI file 'DeviceSetSelectorWidget.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DEVICESETSELECTORWIDGET_H
#define UI_DEVICESETSELECTORWIDGET_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QComboBox>
#include <QtGui/QGridLayout>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QTextEdit>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_DeviceSetSelectorWidget
{
public:
    QGridLayout *gridLayout;
    QLabel *label_ConfigurationDirectory;
    QHBoxLayout *horizontalLayout;
    QLineEdit *lineEdit_ConfigurationDirectory;
    QPushButton *pushButton_OpenConfigurationDirectory;
    QPushButton *pushButton_RefreshFolder;
    QLabel *label_DeviceSet;
    QSpacerItem *verticalSpacer_2;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *pushButton_Connect;
    QSpacerItem *horizontalSpacer;
    QPushButton *pushButton_ResetTracker;
    QTextEdit *textEdit_Description;
    QHBoxLayout *horizontalLayout_3;
    QPushButton *pushButton_EditConfiguration;
    QComboBox *comboBox_DeviceSet;

    void setupUi(QWidget *DeviceSetSelectorWidget)
    {
        if (DeviceSetSelectorWidget->objectName().isEmpty())
            DeviceSetSelectorWidget->setObjectName(QString::fromUtf8("DeviceSetSelectorWidget"));
        DeviceSetSelectorWidget->resize(258, 209);
        gridLayout = new QGridLayout(DeviceSetSelectorWidget);
        gridLayout->setSpacing(4);
        gridLayout->setContentsMargins(0, 0, 0, 0);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        label_ConfigurationDirectory = new QLabel(DeviceSetSelectorWidget);
        label_ConfigurationDirectory->setObjectName(QString::fromUtf8("label_ConfigurationDirectory"));

        gridLayout->addWidget(label_ConfigurationDirectory, 0, 0, 1, 1);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(0);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        lineEdit_ConfigurationDirectory = new QLineEdit(DeviceSetSelectorWidget);
        lineEdit_ConfigurationDirectory->setObjectName(QString::fromUtf8("lineEdit_ConfigurationDirectory"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(lineEdit_ConfigurationDirectory->sizePolicy().hasHeightForWidth());
        lineEdit_ConfigurationDirectory->setSizePolicy(sizePolicy);
        lineEdit_ConfigurationDirectory->setReadOnly(true);

        horizontalLayout->addWidget(lineEdit_ConfigurationDirectory);

        pushButton_OpenConfigurationDirectory = new QPushButton(DeviceSetSelectorWidget);
        pushButton_OpenConfigurationDirectory->setObjectName(QString::fromUtf8("pushButton_OpenConfigurationDirectory"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(pushButton_OpenConfigurationDirectory->sizePolicy().hasHeightForWidth());
        pushButton_OpenConfigurationDirectory->setSizePolicy(sizePolicy1);
        pushButton_OpenConfigurationDirectory->setMinimumSize(QSize(23, 23));
        pushButton_OpenConfigurationDirectory->setMaximumSize(QSize(23, 23));
        pushButton_OpenConfigurationDirectory->setFocusPolicy(Qt::NoFocus);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_OpenFile.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_OpenConfigurationDirectory->setIcon(icon);
        pushButton_OpenConfigurationDirectory->setIconSize(QSize(16, 16));

        horizontalLayout->addWidget(pushButton_OpenConfigurationDirectory);

        pushButton_RefreshFolder = new QPushButton(DeviceSetSelectorWidget);
        pushButton_RefreshFolder->setObjectName(QString::fromUtf8("pushButton_RefreshFolder"));
        sizePolicy1.setHeightForWidth(pushButton_RefreshFolder->sizePolicy().hasHeightForWidth());
        pushButton_RefreshFolder->setSizePolicy(sizePolicy1);
        pushButton_RefreshFolder->setMinimumSize(QSize(23, 23));
        pushButton_RefreshFolder->setMaximumSize(QSize(23, 23));
        pushButton_RefreshFolder->setFocusPolicy(Qt::NoFocus);
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/icons/Resources/icon_Refresh.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_RefreshFolder->setIcon(icon1);

        horizontalLayout->addWidget(pushButton_RefreshFolder);


        gridLayout->addLayout(horizontalLayout, 1, 0, 1, 1);

        label_DeviceSet = new QLabel(DeviceSetSelectorWidget);
        label_DeviceSet->setObjectName(QString::fromUtf8("label_DeviceSet"));

        gridLayout->addWidget(label_DeviceSet, 2, 0, 1, 1);

        verticalSpacer_2 = new QSpacerItem(258, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout->addItem(verticalSpacer_2, 6, 0, 1, 1);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);

        pushButton_Connect = new QPushButton(DeviceSetSelectorWidget);
        pushButton_Connect->setObjectName(QString::fromUtf8("pushButton_Connect"));
        pushButton_Connect->setMinimumSize(QSize(90, 0));
        pushButton_Connect->setMaximumSize(QSize(16777215, 16777215));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/icons/Resources/icon_Connect.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_Connect->setIcon(icon2);

        horizontalLayout_2->addWidget(pushButton_Connect);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        pushButton_ResetTracker = new QPushButton(DeviceSetSelectorWidget);
        pushButton_ResetTracker->setObjectName(QString::fromUtf8("pushButton_ResetTracker"));
        pushButton_ResetTracker->setMinimumSize(QSize(90, 0));
        pushButton_ResetTracker->setMaximumSize(QSize(90, 16777215));

        horizontalLayout_2->addWidget(pushButton_ResetTracker);


        gridLayout->addLayout(horizontalLayout_2, 7, 0, 1, 1);

        textEdit_Description = new QTextEdit(DeviceSetSelectorWidget);
        textEdit_Description->setObjectName(QString::fromUtf8("textEdit_Description"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::MinimumExpanding);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(textEdit_Description->sizePolicy().hasHeightForWidth());
        textEdit_Description->setSizePolicy(sizePolicy2);
        textEdit_Description->setMinimumSize(QSize(0, 64));
        textEdit_Description->setMaximumSize(QSize(16777215, 16777215));
        textEdit_Description->setFrameShadow(QFrame::Plain);
        textEdit_Description->setReadOnly(true);

        gridLayout->addWidget(textEdit_Description, 5, 0, 1, 1);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(1);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        pushButton_EditConfiguration = new QPushButton(DeviceSetSelectorWidget);
        pushButton_EditConfiguration->setObjectName(QString::fromUtf8("pushButton_EditConfiguration"));
        sizePolicy1.setHeightForWidth(pushButton_EditConfiguration->sizePolicy().hasHeightForWidth());
        pushButton_EditConfiguration->setSizePolicy(sizePolicy1);
        pushButton_EditConfiguration->setMinimumSize(QSize(23, 23));
        pushButton_EditConfiguration->setMaximumSize(QSize(23, 23));
        pushButton_EditConfiguration->setFocusPolicy(Qt::NoFocus);
        QIcon icon3;
        icon3.addFile(QString::fromUtf8(":/icons/Resources/icon_Edit.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_EditConfiguration->setIcon(icon3);

        horizontalLayout_3->addWidget(pushButton_EditConfiguration);

        comboBox_DeviceSet = new QComboBox(DeviceSetSelectorWidget);
        comboBox_DeviceSet->setObjectName(QString::fromUtf8("comboBox_DeviceSet"));
        QSizePolicy sizePolicy3(QSizePolicy::Expanding, QSizePolicy::Fixed);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(comboBox_DeviceSet->sizePolicy().hasHeightForWidth());
        comboBox_DeviceSet->setSizePolicy(sizePolicy3);
        comboBox_DeviceSet->setMinimumSize(QSize(0, 21));
        comboBox_DeviceSet->setMaxVisibleItems(35);

        horizontalLayout_3->addWidget(comboBox_DeviceSet);


        gridLayout->addLayout(horizontalLayout_3, 3, 0, 1, 1);


        retranslateUi(DeviceSetSelectorWidget);

        QMetaObject::connectSlotsByName(DeviceSetSelectorWidget);
    } // setupUi

    void retranslateUi(QWidget *DeviceSetSelectorWidget)
    {
        DeviceSetSelectorWidget->setWindowTitle(QApplication::translate("DeviceSetSelectorWidget", "DeviceSetSelector", 0, QApplication::UnicodeUTF8));
        label_ConfigurationDirectory->setText(QApplication::translate("DeviceSetSelectorWidget", "Device set configuration directory:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_OpenConfigurationDirectory->setToolTip(QApplication::translate("DeviceSetSelectorWidget", "Select other device set configuration directory", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_OpenConfigurationDirectory->setText(QString());
#ifndef QT_NO_TOOLTIP
        pushButton_RefreshFolder->setToolTip(QApplication::translate("DeviceSetSelectorWidget", "Refresh device set list from currently selected configuration directory", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_RefreshFolder->setText(QString());
        label_DeviceSet->setText(QApplication::translate("DeviceSetSelectorWidget", "Device set:", 0, QApplication::UnicodeUTF8));
        pushButton_Connect->setText(QApplication::translate("DeviceSetSelectorWidget", "Connect", 0, QApplication::UnicodeUTF8));
        pushButton_ResetTracker->setText(QApplication::translate("DeviceSetSelectorWidget", "Reset Tracker", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_EditConfiguration->setToolTip(QApplication::translate("DeviceSetSelectorWidget", "Edit configuration file", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_EditConfiguration->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class DeviceSetSelectorWidget: public Ui_DeviceSetSelectorWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DEVICESETSELECTORWIDGET_H
