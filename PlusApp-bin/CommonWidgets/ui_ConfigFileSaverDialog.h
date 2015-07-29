/********************************************************************************
** Form generated from reading UI file 'ConfigFileSaverDialog.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CONFIGFILESAVERDIALOG_H
#define UI_CONFIGFILESAVERDIALOG_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QDialog>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QTextEdit>
#include <QtGui/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_ConfigFileSaverDialog
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label_DestinationDirectory;
    QHBoxLayout *horizontalLayout;
    QLineEdit *lineEdit_DestinationDirectory;
    QPushButton *pushButton_OpenDestinationDirectory;
    QLabel *label_DeviceSetName;
    QLineEdit *lineEdit_DeviceSetName;
    QLabel *label_Description;
    QTextEdit *textEdit_Description;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *pushButton_Save;

    void setupUi(QDialog *ConfigFileSaverDialog)
    {
        if (ConfigFileSaverDialog->objectName().isEmpty())
            ConfigFileSaverDialog->setObjectName(QString::fromUtf8("ConfigFileSaverDialog"));
        ConfigFileSaverDialog->resize(440, 240);
        ConfigFileSaverDialog->setMinimumSize(QSize(300, 240));
        ConfigFileSaverDialog->setMaximumSize(QSize(600, 560));
        verticalLayout = new QVBoxLayout(ConfigFileSaverDialog);
        verticalLayout->setSpacing(4);
        verticalLayout->setContentsMargins(4, 4, 4, 4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label_DestinationDirectory = new QLabel(ConfigFileSaverDialog);
        label_DestinationDirectory->setObjectName(QString::fromUtf8("label_DestinationDirectory"));

        verticalLayout->addWidget(label_DestinationDirectory);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(2);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        lineEdit_DestinationDirectory = new QLineEdit(ConfigFileSaverDialog);
        lineEdit_DestinationDirectory->setObjectName(QString::fromUtf8("lineEdit_DestinationDirectory"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(lineEdit_DestinationDirectory->sizePolicy().hasHeightForWidth());
        lineEdit_DestinationDirectory->setSizePolicy(sizePolicy);
        lineEdit_DestinationDirectory->setReadOnly(true);

        horizontalLayout->addWidget(lineEdit_DestinationDirectory);

        pushButton_OpenDestinationDirectory = new QPushButton(ConfigFileSaverDialog);
        pushButton_OpenDestinationDirectory->setObjectName(QString::fromUtf8("pushButton_OpenDestinationDirectory"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(pushButton_OpenDestinationDirectory->sizePolicy().hasHeightForWidth());
        pushButton_OpenDestinationDirectory->setSizePolicy(sizePolicy1);
        pushButton_OpenDestinationDirectory->setMinimumSize(QSize(23, 23));
        pushButton_OpenDestinationDirectory->setMaximumSize(QSize(23, 23));
        pushButton_OpenDestinationDirectory->setFocusPolicy(Qt::NoFocus);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_OpenFile.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_OpenDestinationDirectory->setIcon(icon);
        pushButton_OpenDestinationDirectory->setIconSize(QSize(16, 16));

        horizontalLayout->addWidget(pushButton_OpenDestinationDirectory);


        verticalLayout->addLayout(horizontalLayout);

        label_DeviceSetName = new QLabel(ConfigFileSaverDialog);
        label_DeviceSetName->setObjectName(QString::fromUtf8("label_DeviceSetName"));

        verticalLayout->addWidget(label_DeviceSetName);

        lineEdit_DeviceSetName = new QLineEdit(ConfigFileSaverDialog);
        lineEdit_DeviceSetName->setObjectName(QString::fromUtf8("lineEdit_DeviceSetName"));

        verticalLayout->addWidget(lineEdit_DeviceSetName);

        label_Description = new QLabel(ConfigFileSaverDialog);
        label_Description->setObjectName(QString::fromUtf8("label_Description"));

        verticalLayout->addWidget(label_Description);

        textEdit_Description = new QTextEdit(ConfigFileSaverDialog);
        textEdit_Description->setObjectName(QString::fromUtf8("textEdit_Description"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(textEdit_Description->sizePolicy().hasHeightForWidth());
        textEdit_Description->setSizePolicy(sizePolicy2);
        textEdit_Description->setMinimumSize(QSize(0, 64));
        textEdit_Description->setMaximumSize(QSize(16777215, 16777215));

        verticalLayout->addWidget(textEdit_Description);

        verticalSpacer = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        pushButton_Save = new QPushButton(ConfigFileSaverDialog);
        pushButton_Save->setObjectName(QString::fromUtf8("pushButton_Save"));
        pushButton_Save->setMinimumSize(QSize(80, 0));
        pushButton_Save->setMaximumSize(QSize(80, 16777215));

        horizontalLayout_2->addWidget(pushButton_Save);


        verticalLayout->addLayout(horizontalLayout_2);


        retranslateUi(ConfigFileSaverDialog);

        QMetaObject::connectSlotsByName(ConfigFileSaverDialog);
    } // setupUi

    void retranslateUi(QDialog *ConfigFileSaverDialog)
    {
        ConfigFileSaverDialog->setWindowTitle(QApplication::translate("ConfigFileSaverDialog", "Save device set configuration to file", 0, QApplication::UnicodeUTF8));
        label_DestinationDirectory->setText(QApplication::translate("ConfigFileSaverDialog", "Destination directory:", 0, QApplication::UnicodeUTF8));
        pushButton_OpenDestinationDirectory->setText(QString());
        label_DeviceSetName->setText(QApplication::translate("ConfigFileSaverDialog", "Device set name:", 0, QApplication::UnicodeUTF8));
        label_Description->setText(QApplication::translate("ConfigFileSaverDialog", "Description:", 0, QApplication::UnicodeUTF8));
        pushButton_Save->setText(QApplication::translate("ConfigFileSaverDialog", "Save...", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class ConfigFileSaverDialog: public Ui_ConfigFileSaverDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CONFIGFILESAVERDIALOG_H
