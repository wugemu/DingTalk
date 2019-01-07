.class public final Ligh$j;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ligh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# static fields
.field public static final ProgressWheel:[I

.field public static final ProgressWheel_matProg_barColor:I = 0x1

.field public static final ProgressWheel_matProg_barSpinCycleTime:I = 0x5

.field public static final ProgressWheel_matProg_barWidth:I = 0x8

.field public static final ProgressWheel_matProg_circleRadius:I = 0x6

.field public static final ProgressWheel_matProg_fillRadius:I = 0x7

.field public static final ProgressWheel_matProg_linearProgress:I = 0x9

.field public static final ProgressWheel_matProg_progressIndeterminate:I = 0x0

.field public static final ProgressWheel_matProg_rimColor:I = 0x2

.field public static final ProgressWheel_matProg_rimWidth:I = 0x3

.field public static final ProgressWheel_matProg_spinSpeed:I = 0x4

.field public static final viGenericInputBox:[I

.field public static final viGenericInputBox_viBgGroup:I = 0x0

.field public static final viGenericInputBox_vi_bgType:I = 0x15

.field public static final viGenericInputBox_vi_extraImgButtonBg:I = 0x12

.field public static final viGenericInputBox_vi_funcBtnBg:I = 0x8

.field public static final viGenericInputBox_vi_funcBtnVisiable:I = 0x9

.field public static final viGenericInputBox_vi_inputHint:I = 0xb

.field public static final viGenericInputBox_vi_inputHintTextColor:I = 0xc

.field public static final viGenericInputBox_vi_inputId:I = 0x7

.field public static final viGenericInputBox_vi_inputLineColor:I = 0x16

.field public static final viGenericInputBox_vi_inputName:I = 0x2

.field public static final viGenericInputBox_vi_inputNameImage:I = 0x1

.field public static final viGenericInputBox_vi_inputNameTextColor:I = 0x4

.field public static final viGenericInputBox_vi_inputNameTextSize:I = 0x3

.field public static final viGenericInputBox_vi_inputTextColor:I = 0x6

.field public static final viGenericInputBox_vi_inputTextSize:I = 0x5

.field public static final viGenericInputBox_vi_inputType:I = 0x10

.field public static final viGenericInputBox_vi_inputUnit:I = 0x11

.field public static final viGenericInputBox_vi_isAlipayMoney:I = 0xe

.field public static final viGenericInputBox_vi_isAlwayHide:I = 0xa

.field public static final viGenericInputBox_vi_isBold:I = 0x14

.field public static final viGenericInputBox_vi_maxLength:I = 0xd

.field public static final viGenericInputBox_vi_separateList:I = 0x13

.field public static final viGenericInputBox_vi_specialFuncImg:I = 0xf

.field public static final viTitleBar:[I

.field public static final viTitleBar_vi_backButtonIcon:I = 0xc

.field public static final viTitleBar_vi_genericButtonIcon:I = 0x3

.field public static final viTitleBar_vi_genericButtonText:I = 0x2

.field public static final viTitleBar_vi_leftButtonIcon:I = 0x5

.field public static final viTitleBar_vi_leftText:I = 0x4

.field public static final viTitleBar_vi_rightButtonIcon:I = 0x7

.field public static final viTitleBar_vi_rightText:I = 0x6

.field public static final viTitleBar_vi_showBackButton:I = 0xa

.field public static final viTitleBar_vi_showGenericButton:I = 0x9

.field public static final viTitleBar_vi_showSwitch:I = 0x8

.field public static final viTitleBar_vi_titleText:I = 0x0

.field public static final viTitleBar_vi_titleTextColor:I = 0x1

.field public static final viTitleBar_vi_titleType:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ligh$j;->ProgressWheel:[I

    .line 400
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ligh$j;->viGenericInputBox:[I

    .line 424
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Ligh$j;->viTitleBar:[I

    return-void

    .line 389
    .line 400
    .line 424
    :array_0
    .array-data 4
        0x7f0102f0
        0x7f0102f1
        0x7f0102f2
        0x7f0102f3
        0x7f0102f4
        0x7f0102f5
        0x7f0102f6
        0x7f0102f7
        0x7f0102f8
        0x7f0102f9
    .end array-data

    :array_1
    .array-data 4
        0x7f01009c
        0x7f010422
        0x7f010423
        0x7f010424
        0x7f010425
        0x7f010426
        0x7f010427
        0x7f010428
        0x7f010429
        0x7f01042a
        0x7f01042b
        0x7f01042c
        0x7f01042d
        0x7f01042e
        0x7f01042f
        0x7f010430
        0x7f010431
        0x7f010432
        0x7f010433
        0x7f010434
        0x7f010435
        0x7f010436
        0x7f010437
    .end array-data

    :array_2
    .array-data 4
        0x7f010438
        0x7f010439
        0x7f01043a
        0x7f01043b
        0x7f01043c
        0x7f01043d
        0x7f01043e
        0x7f01043f
        0x7f010440
        0x7f010441
        0x7f010442
        0x7f010443
        0x7f010444
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
