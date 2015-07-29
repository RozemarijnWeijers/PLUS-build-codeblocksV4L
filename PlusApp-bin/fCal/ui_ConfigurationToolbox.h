/********************************************************************************
** Form generated from reading UI file 'ConfigurationToolbox.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CONFIGURATIONTOOLBOX_H
#define UI_CONFIGURATIONTOOLBOX_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QComboBox>
#include <QtGui/QFrame>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_ConfigurationToolbox
{
public:
    QVBoxLayout *verticalLayout;
    QWidget *deviceSetSelectionWidget;
    QSpacerItem *verticalSpacer_9;
    QFrame *line;
    QHBoxLayout *horizontalLayout;
    QSpacerItem *horizontalSpacer;
    QPushButton *pushButton_PopOut;
    QWidget *toolStateDisplayWidget;
    QFrame *line_2;
    QSpacerItem *verticalSpacer_2;
    QHBoxLayout *horizontalLayout_2;
    QLabel *labelLogLevel;
    QComboBox *comboBox_LogLevel;
    QLabel *label_EditorApplicationExecutable;
    QHBoxLayout *horizontalLayout_3;
    QLineEdit *lineEdit_EditorApplicationExecutable;
    QPushButton *pushButton_SelectEditorApplicationExecutable;
    QLabel *label_ImageDirectory;
    QHBoxLayout *horizontalLayout_4;
    QLineEdit *lineEdit_ImageDirectory;
    QPushButton *pushButton_SelectImageDirectory;

    void setupUi(QWidget *ConfigurationToolbox)
    {
        if (ConfigurationToolbox->objectName().isEmpty())
            ConfigurationToolbox->setObjectName(QString::fromUtf8("ConfigurationToolbox"));
        ConfigurationToolbox->resize(230, 345);
        ConfigurationToolbox->setMinimumSize(QSize(230, 320));
        ConfigurationToolbox->setMaximumSize(QSize(230, 16777215));
        verticalLayout = new QVBoxLayout(ConfigurationToolbox);
        verticalLayout->setSpacing(4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 4, 0, 4);
        deviceSetSelectionWidget = new QWidget(ConfigurationToolbox);
        deviceSetSelectionWidget->setObjectName(QString::fromUtf8("deviceSetSelectionWidget"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(deviceSetSelectionWidget->sizePolicy().hasHeightForWidth());
        deviceSetSelectionWidget->setSizePolicy(sizePolicy);
        deviceSetSelectionWidget->setMinimumSize(QSize(0, 48));
        deviceSetSelectionWidget->setMaximumSize(QSize(16777215, 208));

        verticalLayout->addWidget(deviceSetSelectionWidget);

        verticalSpacer_9 = new QSpacerItem(158, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_9);

        line = new QFrame(ConfigurationToolbox);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(4);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        pushButton_PopOut = new QPushButton(ConfigurationToolbox);
        pushButton_PopOut->setObjectName(QString::fromUtf8("pushButton_PopOut"));
        pushButton_PopOut->setMinimumSize(QSize(23, 23));
        pushButton_PopOut->setMaximumSize(QSize(23, 23));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/icons/Resources/icon_PopOut.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_PopOut->setIcon(icon);
        pushButton_PopOut->setCheckable(true);

        horizontalLayout->addWidget(pushButton_PopOut);


        verticalLayout->addLayout(horizontalLayout);

        toolStateDisplayWidget = new QWidget(ConfigurationToolbox);
        toolStateDisplayWidget->setObjectName(QString::fromUtf8("toolStateDisplayWidget"));
        toolStateDisplayWidget->setMinimumSize(QSize(0, 48));

        verticalLayout->addWidget(toolStateDisplayWidget);

        line_2 = new QFrame(ConfigurationToolbox);
        line_2->setObjectName(QString::fromUtf8("line_2"));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line_2);

        verticalSpacer_2 = new QSpacerItem(20, 12, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        labelLogLevel = new QLabel(ConfigurationToolbox);
        labelLogLevel->setObjectName(QString::fromUtf8("labelLogLevel"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(labelLogLevel->sizePolicy().hasHeightForWidth());
        labelLogLevel->setSizePolicy(sizePolicy1);

        horizontalLayout_2->addWidget(labelLogLevel);

        comboBox_LogLevel = new QComboBox(ConfigurationToolbox);
        comboBox_LogLevel->setObjectName(QString::fromUtf8("comboBox_LogLevel"));
        QSizePolicy sizePolicy2(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(comboBox_LogLevel->sizePolicy().hasHeightForWidth());
        comboBox_LogLevel->setSizePolicy(sizePolicy2);

        horizontalLayout_2->addWidget(comboBox_LogLevel);


        verticalLayout->addLayout(horizontalLayout_2);

        label_EditorApplicationExecutable = new QLabel(ConfigurationToolbox);
        label_EditorApplicationExecutable->setObjectName(QString::fromUtf8("label_EditorApplicationExecutable"));

        verticalLayout->addWidget(label_EditorApplicationExecutable);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(0);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        lineEdit_EditorApplicationExecutable = new QLineEdit(ConfigurationToolbox);
        lineEdit_EditorApplicationExecutable->setObjectName(QString::fromUtf8("lineEdit_EditorApplicationExecutable"));
        QSizePolicy sizePolicy3(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(lineEdit_EditorApplicationExecutable->sizePolicy().hasHeightForWidth());
        lineEdit_EditorApplicationExecutable->setSizePolicy(sizePolicy3);
        lineEdit_EditorApplicationExecutable->setReadOnly(true);

        horizontalLayout_3->addWidget(lineEdit_EditorApplicationExecutable);

        pushButton_SelectEditorApplicationExecutable = new QPushButton(ConfigurationToolbox);
        pushButton_SelectEditorApplicationExecutable->setObjectName(QString::fromUtf8("pushButton_SelectEditorApplicationExecutable"));
        QSizePolicy sizePolicy4(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy4.setHorizontalStretch(0);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(pushButton_SelectEditorApplicationExecutable->sizePolicy().hasHeightForWidth());
        pushButton_SelectEditorApplicationExecutable->setSizePolicy(sizePolicy4);
        pushButton_SelectEditorApplicationExecutable->setMinimumSize(QSize(23, 23));
        pushButton_SelectEditorApplicationExecutable->setMaximumSize(QSize(23, 23));
        pushButton_SelectEditorApplicationExecutable->setFocusPolicy(Qt::NoFocus);
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/icons/Resources/icon_OpenFile.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_SelectEditorApplicationExecutable->setIcon(icon1);
        pushButton_SelectEditorApplicationExecutable->setIconSize(QSize(16, 16));

        horizontalLayout_3->addWidget(pushButton_SelectEditorApplicationExecutable);


        verticalLayout->addLayout(horizontalLayout_3);

        label_ImageDirectory = new QLabel(ConfigurationToolbox);
        label_ImageDirectory->setObjectName(QString::fromUtf8("label_ImageDirectory"));

        verticalLayout->addWidget(label_ImageDirectory);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setSpacing(0);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        lineEdit_ImageDirectory = new QLineEdit(ConfigurationToolbox);
        lineEdit_ImageDirectory->setObjectName(QString::fromUtf8("lineEdit_ImageDirectory"));
        sizePolicy3.setHeightForWidth(lineEdit_ImageDirectory->sizePolicy().hasHeightForWidth());
        lineEdit_ImageDirectory->setSizePolicy(sizePolicy3);
        lineEdit_ImageDirectory->setReadOnly(true);

        horizontalLayout_4->addWidget(lineEdit_ImageDirectory);

        pushButton_SelectImageDirectory = new QPushButton(ConfigurationToolbox);
        pushButton_SelectImageDirectory->setObjectName(QString::fromUtf8("pushButton_SelectImageDirectory"));
        sizePolicy4.setHeightForWidth(pushButton_SelectImageDirectory->sizePolicy().hasHeightForWidth());
        pushButton_SelectImageDirectory->setSizePolicy(sizePolicy4);
        pushButton_SelectImageDirectory->setMinimumSize(QSize(23, 23));
        pushButton_SelectImageDirectory->setMaximumSize(QSize(23, 23));
        pushButton_SelectImageDirectory->setFocusPolicy(Qt::NoFocus);
        pushButton_SelectImageDirectory->setIcon(icon1);
        pushButton_SelectImageDirectory->setIconSize(QSize(16, 16));

        horizontalLayout_4->addWidget(pushButton_SelectImageDirectory);


        verticalLayout->addLayout(horizontalLayout_4);


        retranslateUi(ConfigurationToolbox);

        comboBox_LogLevel->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(ConfigurationToolbox);
    } // setupUi

    void retranslateUi(QWidget *ConfigurationToolbox)
    {
        ConfigurationToolbox->setWindowTitle(QApplication::translate("ConfigurationToolbox", "Configuration", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_PopOut->setToolTip(QApplication::translate("ConfigurationToolbox", "Pop out (or back) tool state window", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_PopOut->setText(QString());
        labelLogLevel->setText(QApplication::translate("ConfigurationToolbox", "Log level:", 0, QApplication::UnicodeUTF8));
        comboBox_LogLevel->clear();
        comboBox_LogLevel->insertItems(0, QStringList()
         << QApplication::translate("ConfigurationToolbox", "Error", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("ConfigurationToolbox", "Warning", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("ConfigurationToolbox", "Info", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("ConfigurationToolbox", "Debug", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("ConfigurationToolbox", "Trace", 0, QApplication::UnicodeUTF8)
        );
#ifndef QT_NO_TOOLTIP
        comboBox_LogLevel->setToolTip(QApplication::translate("ConfigurationToolbox", "Level of log entries that are displayed", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        label_EditorApplicationExecutable->setToolTip(QApplication::translate("ConfigurationToolbox", "Path of the editor application executable that is used to open configuration files", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_EditorApplicationExecutable->setText(QApplication::translate("ConfigurationToolbox", "Editor application:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        lineEdit_EditorApplicationExecutable->setToolTip(QApplication::translate("ConfigurationToolbox", "Path of the editor application executable that is used to open configuration files", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        pushButton_SelectEditorApplicationExecutable->setToolTip(QApplication::translate("ConfigurationToolbox", "Select other device set configuration directory", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_SelectEditorApplicationExecutable->setText(QString());
#ifndef QT_NO_TOOLTIP
        label_ImageDirectory->setToolTip(QApplication::translate("ConfigurationToolbox", "Directory that contains the usually used input images (to act as home for relative paths in device set configuration files)", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_ImageDirectory->setText(QApplication::translate("ConfigurationToolbox", "Image directory:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        lineEdit_ImageDirectory->setToolTip(QApplication::translate("ConfigurationToolbox", "Directory that contains the usually used input images (to act as home for relative paths in device set configuration files)", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        pushButton_SelectImageDirectory->setToolTip(QApplication::translate("ConfigurationToolbox", "Select other device set configuration directory", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_SelectImageDirectory->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class ConfigurationToolbox: public Ui_ConfigurationToolbox {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CONFIGURATIONTOOLBOX_H
