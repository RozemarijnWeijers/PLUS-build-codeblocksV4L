/********************************************************************************
** Form generated from reading UI file 'SegmentationParameterDialog.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SEGMENTATIONPARAMETERDIALOG_H
#define UI_SEGMENTATIONPARAMETERDIALOG_H

#include <QVTKWidget.h>
#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QDialog>
#include <QtGui/QDoubleSpinBox>
#include <QtGui/QFrame>
#include <QtGui/QGridLayout>
#include <QtGui/QGroupBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QSpinBox>
#include <QtGui/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_SegmentationParameterDialog
{
public:
    QHBoxLayout *horizontalLayout_4;
    QFrame *leftFrame;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_6;
    QSpacerItem *horizontalSpacer_3;
    QPushButton *pushButton_FreezeImage;
    QSpacerItem *horizontalSpacer_4;
    QHBoxLayout *horizontalLayout_7;
    QSpacerItem *horizontalSpacer_7;
    QPushButton *pushButton_Export;
    QSpacerItem *horizontalSpacer_8;
    QSpacerItem *verticalSpacer_4;
    QGroupBox *groupBox_ROI;
    QGridLayout *gridLayout_3;
    QGridLayout *gridLayout;
    QLabel *label_RegionX;
    QLabel *label_From;
    QSpinBox *spinBox_XMin;
    QLabel *label_To;
    QSpinBox *spinBox_XMax;
    QLabel *label_RegionY;
    QSpinBox *spinBox_YMin;
    QSpinBox *spinBox_YMax;
    QSpacerItem *verticalSpacer;
    QGroupBox *groupBox_Spacing;
    QGridLayout *gridLayout_2;
    QHBoxLayout *horizontalLayout;
    QLabel *label_Reference;
    QDoubleSpinBox *doubleSpinBox_ReferenceWidth;
    QLabel *label_By;
    QDoubleSpinBox *doubleSpinBox_ReferenceHeight;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_Spacing;
    QLabel *label_SpacingResult;
    QSpacerItem *verticalSpacer_3;
    QGroupBox *groupBox_Morphology;
    QGridLayout *gridLayout_4;
    QLabel *label_OpeningCircleRadius;
    QLabel *label_OpeningBarSize;
    QDoubleSpinBox *doubleSpinBox_OpeningBarSize;
    QDoubleSpinBox *doubleSpinBox_OpeningCircleRadius;
    QLabel *label_ImageThreshold;
    QDoubleSpinBox *doubleSpinBox_ImageThreshold;
    QCheckBox *checkBox_OriginalIntensityForDots;
    QSpacerItem *verticalSpacer_2;
    QGroupBox *groupBox_Tolerance;
    QGridLayout *gridLayout_5;
    QLabel *label_LinePairDistanceError;
    QDoubleSpinBox *doubleSpinBox_LinePairDistanceError;
    QLabel *label_AngleDifference;
    QDoubleSpinBox *doubleSpinBox_AngleDifference;
    QLabel *label_MinTheta;
    QDoubleSpinBox *doubleSpinBox_MinTheta;
    QLabel *label_MaxTheta;
    QDoubleSpinBox *doubleSpinBox_MaxTheta;
    QLabel *label_CollinearPointsMaxDistanceFromLine;
    QDoubleSpinBox *doubleSpinBox_CollinearPointsMaxDistanceFromLine;
    QLabel *label_AngleTolerance;
    QDoubleSpinBox *doubleSpinBox_AngleTolerance;
    QLabel *label_MaxLineShift;
    QDoubleSpinBox *doubleSpinBox_MaxLineShiftMm;
    QLabel *label_MaxCandidates;
    QDoubleSpinBox *doubleSpinBox_MaxCandidates;
    QFrame *line;
    QSpacerItem *verticalSpacer_5;
    QLabel *label_Feedback;
    QSpacerItem *verticalSpacer_6;
    QHBoxLayout *horizontalLayout_5;
    QSpacerItem *horizontalSpacer;
    QPushButton *pushButton_ApplyAndClose;
    QSpacerItem *horizontalSpacer_2;
    QHBoxLayout *horizontalLayout_3;
    QSpacerItem *horizontalSpacer_6;
    QPushButton *pushButton_SaveAndClose;
    QSpacerItem *horizontalSpacer_5;
    QVTKWidget *canvas;

    void setupUi(QDialog *SegmentationParameterDialog)
    {
        if (SegmentationParameterDialog->objectName().isEmpty())
            SegmentationParameterDialog->setObjectName(QString::fromUtf8("SegmentationParameterDialog"));
        SegmentationParameterDialog->resize(998, 590);
        SegmentationParameterDialog->setMinimumSize(QSize(998, 590));
        horizontalLayout_4 = new QHBoxLayout(SegmentationParameterDialog);
        horizontalLayout_4->setSpacing(0);
        horizontalLayout_4->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        leftFrame = new QFrame(SegmentationParameterDialog);
        leftFrame->setObjectName(QString::fromUtf8("leftFrame"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(leftFrame->sizePolicy().hasHeightForWidth());
        leftFrame->setSizePolicy(sizePolicy);
        leftFrame->setMinimumSize(QSize(225, 480));
        leftFrame->setMaximumSize(QSize(210, 16777215));
        leftFrame->setFrameShape(QFrame::StyledPanel);
        leftFrame->setFrameShadow(QFrame::Raised);
        verticalLayout = new QVBoxLayout(leftFrame);
        verticalLayout->setSpacing(4);
        verticalLayout->setContentsMargins(4, 4, 4, 4);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setSpacing(4);
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_3);

        pushButton_FreezeImage = new QPushButton(leftFrame);
        pushButton_FreezeImage->setObjectName(QString::fromUtf8("pushButton_FreezeImage"));
        pushButton_FreezeImage->setMinimumSize(QSize(100, 0));
        pushButton_FreezeImage->setCheckable(true);

        horizontalLayout_6->addWidget(pushButton_FreezeImage);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_4);


        verticalLayout->addLayout(horizontalLayout_6);

        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        horizontalSpacer_7 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_7->addItem(horizontalSpacer_7);

        pushButton_Export = new QPushButton(leftFrame);
        pushButton_Export->setObjectName(QString::fromUtf8("pushButton_Export"));
        pushButton_Export->setEnabled(false);
        pushButton_Export->setMinimumSize(QSize(100, 0));

        horizontalLayout_7->addWidget(pushButton_Export);

        horizontalSpacer_8 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_7->addItem(horizontalSpacer_8);


        verticalLayout->addLayout(horizontalLayout_7);

        verticalSpacer_4 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        groupBox_ROI = new QGroupBox(leftFrame);
        groupBox_ROI->setObjectName(QString::fromUtf8("groupBox_ROI"));
        groupBox_ROI->setFlat(true);
        groupBox_ROI->setCheckable(true);
        gridLayout_3 = new QGridLayout(groupBox_ROI);
        gridLayout_3->setSpacing(4);
        gridLayout_3->setContentsMargins(4, 4, 4, 4);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        gridLayout = new QGridLayout();
        gridLayout->setSpacing(4);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        label_RegionX = new QLabel(groupBox_ROI);
        label_RegionX->setObjectName(QString::fromUtf8("label_RegionX"));
        label_RegionX->setMinimumSize(QSize(35, 0));

        gridLayout->addWidget(label_RegionX, 0, 0, 1, 1);

        label_From = new QLabel(groupBox_ROI);
        label_From->setObjectName(QString::fromUtf8("label_From"));

        gridLayout->addWidget(label_From, 0, 1, 2, 1);

        spinBox_XMin = new QSpinBox(groupBox_ROI);
        spinBox_XMin->setObjectName(QString::fromUtf8("spinBox_XMin"));
        spinBox_XMin->setMinimumSize(QSize(55, 0));
        spinBox_XMin->setMinimum(1);
        spinBox_XMin->setMaximum(2000);
        spinBox_XMin->setSingleStep(10);
        spinBox_XMin->setValue(100);

        gridLayout->addWidget(spinBox_XMin, 0, 2, 1, 1);

        label_To = new QLabel(groupBox_ROI);
        label_To->setObjectName(QString::fromUtf8("label_To"));

        gridLayout->addWidget(label_To, 0, 3, 2, 1);

        spinBox_XMax = new QSpinBox(groupBox_ROI);
        spinBox_XMax->setObjectName(QString::fromUtf8("spinBox_XMax"));
        spinBox_XMax->setMinimumSize(QSize(55, 0));
        spinBox_XMax->setMinimum(1);
        spinBox_XMax->setMaximum(2000);
        spinBox_XMax->setSingleStep(10);
        spinBox_XMax->setValue(500);

        gridLayout->addWidget(spinBox_XMax, 0, 4, 1, 1);

        label_RegionY = new QLabel(groupBox_ROI);
        label_RegionY->setObjectName(QString::fromUtf8("label_RegionY"));
        label_RegionY->setMinimumSize(QSize(35, 0));

        gridLayout->addWidget(label_RegionY, 1, 0, 1, 1);

        spinBox_YMin = new QSpinBox(groupBox_ROI);
        spinBox_YMin->setObjectName(QString::fromUtf8("spinBox_YMin"));
        spinBox_YMin->setMinimumSize(QSize(55, 0));
        spinBox_YMin->setMinimum(1);
        spinBox_YMin->setMaximum(2000);
        spinBox_YMin->setSingleStep(10);
        spinBox_YMin->setValue(100);

        gridLayout->addWidget(spinBox_YMin, 1, 2, 1, 1);

        spinBox_YMax = new QSpinBox(groupBox_ROI);
        spinBox_YMax->setObjectName(QString::fromUtf8("spinBox_YMax"));
        spinBox_YMax->setMinimumSize(QSize(55, 0));
        spinBox_YMax->setMinimum(1);
        spinBox_YMax->setMaximum(2000);
        spinBox_YMax->setSingleStep(10);
        spinBox_YMax->setValue(500);

        gridLayout->addWidget(spinBox_YMax, 1, 4, 1, 1);


        gridLayout_3->addLayout(gridLayout, 0, 0, 1, 1);


        verticalLayout->addWidget(groupBox_ROI);

        verticalSpacer = new QSpacerItem(28, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        groupBox_Spacing = new QGroupBox(leftFrame);
        groupBox_Spacing->setObjectName(QString::fromUtf8("groupBox_Spacing"));
        groupBox_Spacing->setFlat(true);
        groupBox_Spacing->setCheckable(true);
        groupBox_Spacing->setChecked(false);
        gridLayout_2 = new QGridLayout(groupBox_Spacing);
        gridLayout_2->setSpacing(4);
        gridLayout_2->setContentsMargins(4, 4, 4, 4);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(4);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(-1, -1, 4, -1);
        label_Reference = new QLabel(groupBox_Spacing);
        label_Reference->setObjectName(QString::fromUtf8("label_Reference"));

        horizontalLayout->addWidget(label_Reference);

        doubleSpinBox_ReferenceWidth = new QDoubleSpinBox(groupBox_Spacing);
        doubleSpinBox_ReferenceWidth->setObjectName(QString::fromUtf8("doubleSpinBox_ReferenceWidth"));
        doubleSpinBox_ReferenceWidth->setAlignment(Qt::AlignCenter);
        doubleSpinBox_ReferenceWidth->setDecimals(1);
        doubleSpinBox_ReferenceWidth->setMinimum(1);
        doubleSpinBox_ReferenceWidth->setMaximum(200);
        doubleSpinBox_ReferenceWidth->setSingleStep(5);
        doubleSpinBox_ReferenceWidth->setValue(30);

        horizontalLayout->addWidget(doubleSpinBox_ReferenceWidth);

        label_By = new QLabel(groupBox_Spacing);
        label_By->setObjectName(QString::fromUtf8("label_By"));

        horizontalLayout->addWidget(label_By);

        doubleSpinBox_ReferenceHeight = new QDoubleSpinBox(groupBox_Spacing);
        doubleSpinBox_ReferenceHeight->setObjectName(QString::fromUtf8("doubleSpinBox_ReferenceHeight"));
        doubleSpinBox_ReferenceHeight->setAlignment(Qt::AlignCenter);
        doubleSpinBox_ReferenceHeight->setDecimals(1);
        doubleSpinBox_ReferenceHeight->setMinimum(1);
        doubleSpinBox_ReferenceHeight->setMaximum(200);
        doubleSpinBox_ReferenceHeight->setSingleStep(5);
        doubleSpinBox_ReferenceHeight->setValue(20);

        horizontalLayout->addWidget(doubleSpinBox_ReferenceHeight);


        gridLayout_2->addLayout(horizontalLayout, 0, 0, 1, 1);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(4);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_Spacing = new QLabel(groupBox_Spacing);
        label_Spacing->setObjectName(QString::fromUtf8("label_Spacing"));

        horizontalLayout_2->addWidget(label_Spacing);

        label_SpacingResult = new QLabel(groupBox_Spacing);
        label_SpacingResult->setObjectName(QString::fromUtf8("label_SpacingResult"));

        horizontalLayout_2->addWidget(label_SpacingResult);


        gridLayout_2->addLayout(horizontalLayout_2, 1, 0, 1, 1);


        verticalLayout->addWidget(groupBox_Spacing);

        verticalSpacer_3 = new QSpacerItem(28, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_3);

        groupBox_Morphology = new QGroupBox(leftFrame);
        groupBox_Morphology->setObjectName(QString::fromUtf8("groupBox_Morphology"));
        groupBox_Morphology->setFlat(true);
        gridLayout_4 = new QGridLayout(groupBox_Morphology);
        gridLayout_4->setSpacing(4);
        gridLayout_4->setContentsMargins(4, 4, 4, 4);
        gridLayout_4->setObjectName(QString::fromUtf8("gridLayout_4"));
        label_OpeningCircleRadius = new QLabel(groupBox_Morphology);
        label_OpeningCircleRadius->setObjectName(QString::fromUtf8("label_OpeningCircleRadius"));

        gridLayout_4->addWidget(label_OpeningCircleRadius, 0, 0, 1, 1);

        label_OpeningBarSize = new QLabel(groupBox_Morphology);
        label_OpeningBarSize->setObjectName(QString::fromUtf8("label_OpeningBarSize"));

        gridLayout_4->addWidget(label_OpeningBarSize, 2, 0, 1, 1);

        doubleSpinBox_OpeningBarSize = new QDoubleSpinBox(groupBox_Morphology);
        doubleSpinBox_OpeningBarSize->setObjectName(QString::fromUtf8("doubleSpinBox_OpeningBarSize"));
        doubleSpinBox_OpeningBarSize->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_OpeningBarSize->setMinimum(0.01);
        doubleSpinBox_OpeningBarSize->setMaximum(10);
        doubleSpinBox_OpeningBarSize->setSingleStep(0.1);
        doubleSpinBox_OpeningBarSize->setValue(1);

        gridLayout_4->addWidget(doubleSpinBox_OpeningBarSize, 2, 2, 1, 1);

        doubleSpinBox_OpeningCircleRadius = new QDoubleSpinBox(groupBox_Morphology);
        doubleSpinBox_OpeningCircleRadius->setObjectName(QString::fromUtf8("doubleSpinBox_OpeningCircleRadius"));
        doubleSpinBox_OpeningCircleRadius->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_OpeningCircleRadius->setMinimum(0.01);
        doubleSpinBox_OpeningCircleRadius->setMaximum(10);
        doubleSpinBox_OpeningCircleRadius->setSingleStep(0.1);
        doubleSpinBox_OpeningCircleRadius->setValue(0.5);

        gridLayout_4->addWidget(doubleSpinBox_OpeningCircleRadius, 0, 2, 1, 1);

        label_ImageThreshold = new QLabel(groupBox_Morphology);
        label_ImageThreshold->setObjectName(QString::fromUtf8("label_ImageThreshold"));

        gridLayout_4->addWidget(label_ImageThreshold, 3, 0, 1, 1);

        doubleSpinBox_ImageThreshold = new QDoubleSpinBox(groupBox_Morphology);
        doubleSpinBox_ImageThreshold->setObjectName(QString::fromUtf8("doubleSpinBox_ImageThreshold"));
        doubleSpinBox_ImageThreshold->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_ImageThreshold->setDecimals(1);
        doubleSpinBox_ImageThreshold->setMinimum(0.1);
        doubleSpinBox_ImageThreshold->setMaximum(99.9);
        doubleSpinBox_ImageThreshold->setSingleStep(1);
        doubleSpinBox_ImageThreshold->setValue(10);

        gridLayout_4->addWidget(doubleSpinBox_ImageThreshold, 3, 2, 1, 1);

        checkBox_OriginalIntensityForDots = new QCheckBox(groupBox_Morphology);
        checkBox_OriginalIntensityForDots->setObjectName(QString::fromUtf8("checkBox_OriginalIntensityForDots"));
        checkBox_OriginalIntensityForDots->setLayoutDirection(Qt::LeftToRight);

        gridLayout_4->addWidget(checkBox_OriginalIntensityForDots, 4, 0, 1, 3);


        verticalLayout->addWidget(groupBox_Morphology);

        verticalSpacer_2 = new QSpacerItem(28, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_2);

        groupBox_Tolerance = new QGroupBox(leftFrame);
        groupBox_Tolerance->setObjectName(QString::fromUtf8("groupBox_Tolerance"));
        groupBox_Tolerance->setFlat(true);
        gridLayout_5 = new QGridLayout(groupBox_Tolerance);
        gridLayout_5->setSpacing(4);
        gridLayout_5->setContentsMargins(4, 4, 4, 4);
        gridLayout_5->setObjectName(QString::fromUtf8("gridLayout_5"));
        label_LinePairDistanceError = new QLabel(groupBox_Tolerance);
        label_LinePairDistanceError->setObjectName(QString::fromUtf8("label_LinePairDistanceError"));

        gridLayout_5->addWidget(label_LinePairDistanceError, 0, 0, 1, 1);

        doubleSpinBox_LinePairDistanceError = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_LinePairDistanceError->setObjectName(QString::fromUtf8("doubleSpinBox_LinePairDistanceError"));
        doubleSpinBox_LinePairDistanceError->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_LinePairDistanceError->setMinimum(0.01);
        doubleSpinBox_LinePairDistanceError->setMaximum(99.99);
        doubleSpinBox_LinePairDistanceError->setValue(10);

        gridLayout_5->addWidget(doubleSpinBox_LinePairDistanceError, 0, 1, 1, 1);

        label_AngleDifference = new QLabel(groupBox_Tolerance);
        label_AngleDifference->setObjectName(QString::fromUtf8("label_AngleDifference"));

        gridLayout_5->addWidget(label_AngleDifference, 1, 0, 1, 1);

        doubleSpinBox_AngleDifference = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_AngleDifference->setObjectName(QString::fromUtf8("doubleSpinBox_AngleDifference"));
        doubleSpinBox_AngleDifference->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_AngleDifference->setDecimals(1);
        doubleSpinBox_AngleDifference->setMinimum(0.1);
        doubleSpinBox_AngleDifference->setMaximum(99.9);
        doubleSpinBox_AngleDifference->setSingleStep(1);
        doubleSpinBox_AngleDifference->setValue(11);

        gridLayout_5->addWidget(doubleSpinBox_AngleDifference, 1, 1, 1, 1);

        label_MinTheta = new QLabel(groupBox_Tolerance);
        label_MinTheta->setObjectName(QString::fromUtf8("label_MinTheta"));

        gridLayout_5->addWidget(label_MinTheta, 2, 0, 1, 1);

        doubleSpinBox_MinTheta = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_MinTheta->setObjectName(QString::fromUtf8("doubleSpinBox_MinTheta"));
        doubleSpinBox_MinTheta->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_MinTheta->setDecimals(1);
        doubleSpinBox_MinTheta->setMinimum(-180);
        doubleSpinBox_MinTheta->setMaximum(180);
        doubleSpinBox_MinTheta->setSingleStep(10);
        doubleSpinBox_MinTheta->setValue(-70);

        gridLayout_5->addWidget(doubleSpinBox_MinTheta, 2, 1, 1, 1);

        label_MaxTheta = new QLabel(groupBox_Tolerance);
        label_MaxTheta->setObjectName(QString::fromUtf8("label_MaxTheta"));

        gridLayout_5->addWidget(label_MaxTheta, 3, 0, 1, 1);

        doubleSpinBox_MaxTheta = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_MaxTheta->setObjectName(QString::fromUtf8("doubleSpinBox_MaxTheta"));
        doubleSpinBox_MaxTheta->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_MaxTheta->setDecimals(1);
        doubleSpinBox_MaxTheta->setMinimum(-180);
        doubleSpinBox_MaxTheta->setMaximum(180);
        doubleSpinBox_MaxTheta->setSingleStep(10);
        doubleSpinBox_MaxTheta->setValue(70);

        gridLayout_5->addWidget(doubleSpinBox_MaxTheta, 3, 1, 1, 1);

        label_CollinearPointsMaxDistanceFromLine = new QLabel(groupBox_Tolerance);
        label_CollinearPointsMaxDistanceFromLine->setObjectName(QString::fromUtf8("label_CollinearPointsMaxDistanceFromLine"));

        gridLayout_5->addWidget(label_CollinearPointsMaxDistanceFromLine, 5, 0, 1, 1);

        doubleSpinBox_CollinearPointsMaxDistanceFromLine = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_CollinearPointsMaxDistanceFromLine->setObjectName(QString::fromUtf8("doubleSpinBox_CollinearPointsMaxDistanceFromLine"));
        doubleSpinBox_CollinearPointsMaxDistanceFromLine->setMaximumSize(QSize(60, 16777215));
        doubleSpinBox_CollinearPointsMaxDistanceFromLine->setDecimals(1);
        doubleSpinBox_CollinearPointsMaxDistanceFromLine->setMinimum(0.1);
        doubleSpinBox_CollinearPointsMaxDistanceFromLine->setMaximum(99.9);
        doubleSpinBox_CollinearPointsMaxDistanceFromLine->setSingleStep(0.5);
        doubleSpinBox_CollinearPointsMaxDistanceFromLine->setValue(5.3);

        gridLayout_5->addWidget(doubleSpinBox_CollinearPointsMaxDistanceFromLine, 5, 1, 1, 1);

        label_AngleTolerance = new QLabel(groupBox_Tolerance);
        label_AngleTolerance->setObjectName(QString::fromUtf8("label_AngleTolerance"));

        gridLayout_5->addWidget(label_AngleTolerance, 4, 0, 1, 1);

        doubleSpinBox_AngleTolerance = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_AngleTolerance->setObjectName(QString::fromUtf8("doubleSpinBox_AngleTolerance"));
        doubleSpinBox_AngleTolerance->setMinimum(0.1);
        doubleSpinBox_AngleTolerance->setMaximum(99.9);
        doubleSpinBox_AngleTolerance->setValue(10);

        gridLayout_5->addWidget(doubleSpinBox_AngleTolerance, 4, 1, 1, 1);

        label_MaxLineShift = new QLabel(groupBox_Tolerance);
        label_MaxLineShift->setObjectName(QString::fromUtf8("label_MaxLineShift"));

        gridLayout_5->addWidget(label_MaxLineShift, 6, 0, 1, 1);

        doubleSpinBox_MaxLineShiftMm = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_MaxLineShiftMm->setObjectName(QString::fromUtf8("doubleSpinBox_MaxLineShiftMm"));
        doubleSpinBox_MaxLineShiftMm->setDecimals(1);
        doubleSpinBox_MaxLineShiftMm->setValue(10);

        gridLayout_5->addWidget(doubleSpinBox_MaxLineShiftMm, 6, 1, 1, 1);

        label_MaxCandidates = new QLabel(groupBox_Tolerance);
        label_MaxCandidates->setObjectName(QString::fromUtf8("label_MaxCandidates"));

        gridLayout_5->addWidget(label_MaxCandidates, 7, 0, 1, 1);

        doubleSpinBox_MaxCandidates = new QDoubleSpinBox(groupBox_Tolerance);
        doubleSpinBox_MaxCandidates->setObjectName(QString::fromUtf8("doubleSpinBox_MaxCandidates"));
        doubleSpinBox_MaxCandidates->setDecimals(0);
        doubleSpinBox_MaxCandidates->setMaximum(250);
        doubleSpinBox_MaxCandidates->setValue(20);

        gridLayout_5->addWidget(doubleSpinBox_MaxCandidates, 7, 1, 1, 1);


        verticalLayout->addWidget(groupBox_Tolerance);

        line = new QFrame(leftFrame);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        verticalSpacer_5 = new QSpacerItem(20, 6, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_5);

        label_Feedback = new QLabel(leftFrame);
        label_Feedback->setObjectName(QString::fromUtf8("label_Feedback"));
        label_Feedback->setIndent(8);

        verticalLayout->addWidget(label_Feedback);

        verticalSpacer_6 = new QSpacerItem(28, 6, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_6);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setSpacing(4);
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(horizontalSpacer);

        pushButton_ApplyAndClose = new QPushButton(leftFrame);
        pushButton_ApplyAndClose->setObjectName(QString::fromUtf8("pushButton_ApplyAndClose"));
        pushButton_ApplyAndClose->setMinimumSize(QSize(110, 0));

        horizontalLayout_5->addWidget(pushButton_ApplyAndClose);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(horizontalSpacer_2);


        verticalLayout->addLayout(horizontalLayout_5);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(4);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_6);

        pushButton_SaveAndClose = new QPushButton(leftFrame);
        pushButton_SaveAndClose->setObjectName(QString::fromUtf8("pushButton_SaveAndClose"));
        pushButton_SaveAndClose->setMinimumSize(QSize(110, 0));

        horizontalLayout_3->addWidget(pushButton_SaveAndClose);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_5);


        verticalLayout->addLayout(horizontalLayout_3);


        horizontalLayout_4->addWidget(leftFrame);

        canvas = new QVTKWidget(SegmentationParameterDialog);
        canvas->setObjectName(QString::fromUtf8("canvas"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(3);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(canvas->sizePolicy().hasHeightForWidth());
        canvas->setSizePolicy(sizePolicy1);
        canvas->setMinimumSize(QSize(773, 580));
        canvas->setMaximumSize(QSize(16777215, 16777215));
        canvas->setSizeIncrement(QSize(4, 3));

        horizontalLayout_4->addWidget(canvas);


        retranslateUi(SegmentationParameterDialog);

        QMetaObject::connectSlotsByName(SegmentationParameterDialog);
    } // setupUi

    void retranslateUi(QDialog *SegmentationParameterDialog)
    {
        SegmentationParameterDialog->setWindowTitle(QApplication::translate("SegmentationParameterDialog", "Segmentation Parameter Settings", 0, QApplication::UnicodeUTF8));
        pushButton_FreezeImage->setText(QApplication::translate("SegmentationParameterDialog", "Freeze Image", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_Export->setToolTip(QApplication::translate("SegmentationParameterDialog", "Export frozen image into a single-frame metafile", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_Export->setText(QApplication::translate("SegmentationParameterDialog", "Export Image", 0, QApplication::UnicodeUTF8));
        groupBox_ROI->setTitle(QApplication::translate("SegmentationParameterDialog", "Region of Interest", 0, QApplication::UnicodeUTF8));
        label_RegionX->setText(QApplication::translate("SegmentationParameterDialog", "X:", 0, QApplication::UnicodeUTF8));
        label_From->setText(QApplication::translate("SegmentationParameterDialog", "from", 0, QApplication::UnicodeUTF8));
        label_To->setText(QApplication::translate("SegmentationParameterDialog", "to", 0, QApplication::UnicodeUTF8));
        label_RegionY->setText(QApplication::translate("SegmentationParameterDialog", "Y:", 0, QApplication::UnicodeUTF8));
        groupBox_Spacing->setTitle(QApplication::translate("SegmentationParameterDialog", "Spacing", 0, QApplication::UnicodeUTF8));
        label_Reference->setText(QApplication::translate("SegmentationParameterDialog", "References (mm): G", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        doubleSpinBox_ReferenceWidth->setToolTip(QApplication::translate("SegmentationParameterDialog", "Length of the  that is represented by green line", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_By->setText(QApplication::translate("SegmentationParameterDialog", "B", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        doubleSpinBox_ReferenceHeight->setToolTip(QApplication::translate("SegmentationParameterDialog", "Length of the  that is represented by blue line", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_Spacing->setText(QApplication::translate("SegmentationParameterDialog", "Spacing (mm per pixel):", 0, QApplication::UnicodeUTF8));
        label_SpacingResult->setText(QApplication::translate("SegmentationParameterDialog", "?", 0, QApplication::UnicodeUTF8));
        groupBox_Morphology->setTitle(QApplication::translate("SegmentationParameterDialog", "Morphology", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        label_OpeningCircleRadius->setToolTip(QApplication::translate("SegmentationParameterDialog", "This is called OpeningCircleRadius in configuration file", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_OpeningCircleRadius->setText(QApplication::translate("SegmentationParameterDialog", "Minimum dot size (mm):", 0, QApplication::UnicodeUTF8));
        label_OpeningBarSize->setText(QApplication::translate("SegmentationParameterDialog", "Opening bar size (mm):", 0, QApplication::UnicodeUTF8));
        label_ImageThreshold->setText(QApplication::translate("SegmentationParameterDialog", "Image threshold (%):", 0, QApplication::UnicodeUTF8));
        checkBox_OriginalIntensityForDots->setText(QApplication::translate("SegmentationParameterDialog", "Use original intensity for dots", 0, QApplication::UnicodeUTF8));
        groupBox_Tolerance->setTitle(QApplication::translate("SegmentationParameterDialog", "Tolerances", 0, QApplication::UnicodeUTF8));
        label_LinePairDistanceError->setText(QApplication::translate("SegmentationParameterDialog", "Line pair distance (%):", 0, QApplication::UnicodeUTF8));
        label_AngleDifference->setText(QApplication::translate("SegmentationParameterDialog", "Angle difference (\302\260):", 0, QApplication::UnicodeUTF8));
        label_MinTheta->setText(QApplication::translate("SegmentationParameterDialog", "Minimum \316\270 (\302\260):", 0, QApplication::UnicodeUTF8));
        label_MaxTheta->setText(QApplication::translate("SegmentationParameterDialog", "Maximum \316\270 (\302\260):", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        label_CollinearPointsMaxDistanceFromLine->setToolTip(QApplication::translate("SegmentationParameterDialog", "Collinear points maximum distance from line in mm", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label_CollinearPointsMaxDistanceFromLine->setText(QApplication::translate("SegmentationParameterDialog", "Collinear max distance (mm):", 0, QApplication::UnicodeUTF8));
        label_AngleTolerance->setText(QApplication::translate("SegmentationParameterDialog", "Angle tolerance (\302\260):", 0, QApplication::UnicodeUTF8));
        label_MaxLineShift->setText(QApplication::translate("SegmentationParameterDialog", "Max line shift (mm)", 0, QApplication::UnicodeUTF8));
        label_MaxCandidates->setText(QApplication::translate("SegmentationParameterDialog", "Max Candidates", 0, QApplication::UnicodeUTF8));
        label_Feedback->setText(QString());
#ifndef QT_NO_TOOLTIP
        pushButton_ApplyAndClose->setToolTip(QApplication::translate("SegmentationParameterDialog", "Save changes into device set configuration data for the application", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_ApplyAndClose->setText(QApplication::translate("SegmentationParameterDialog", "Apply and Close", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_SaveAndClose->setToolTip(QApplication::translate("SegmentationParameterDialog", "Save changes in a new file and into device set configuration data", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_SaveAndClose->setText(QApplication::translate("SegmentationParameterDialog", "Save and Close...", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class SegmentationParameterDialog: public Ui_SegmentationParameterDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SEGMENTATIONPARAMETERDIALOG_H
