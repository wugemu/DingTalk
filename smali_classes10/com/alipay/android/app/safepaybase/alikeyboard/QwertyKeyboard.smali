.class public Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "QwertyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;,
        Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;
    }
.end annotation


# instance fields
.field private final QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

.field private cashierContainer:Landroid/widget/FrameLayout;

.field private ib_shift:Landroid/widget/FrameLayout;

.field private inputTips:Landroid/widget/TextView;

.field private qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

.field private screen_density:D

.field private shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

.field private textSize:F

.field private tv_row1:[Landroid/widget/TextView;

.field private tv_row2:[Landroid/widget/TextView;

.field private tv_row3:[Landroid/widget/TextView;

.field private tv_type:Landroid/widget/TextView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 9
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "cashierContainer"    # Landroid/widget/FrameLayout;
    .param p3, "l"    # Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 38
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    .line 39
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    .line 41
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    .line 42
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    .line 43
    new-array v1, v5, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    .line 47
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "q"

    aput-object v2, v1, v4

    const-string/jumbo v2, "w"

    aput-object v2, v1, v6

    const-string/jumbo v2, "e"

    aput-object v2, v1, v7

    const-string/jumbo v2, "r"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "t"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "y"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "u"

    aput-object v3, v1, v2

    const-string/jumbo v2, "i"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "o"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "p"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 49
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "a"

    aput-object v2, v1, v4

    const-string/jumbo v2, "s"

    aput-object v2, v1, v6

    const-string/jumbo v2, "d"

    aput-object v2, v1, v7

    const-string/jumbo v2, "f"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "g"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "h"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "j"

    aput-object v3, v1, v2

    const-string/jumbo v2, "k"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "l"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 51
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "z"

    aput-object v2, v1, v4

    const-string/jumbo v2, "x"

    aput-object v2, v1, v6

    const-string/jumbo v2, "c"

    aput-object v2, v1, v7

    const-string/jumbo v2, "v"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "n"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "m"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .line 54
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Q"

    aput-object v2, v1, v4

    const-string/jumbo v2, "W"

    aput-object v2, v1, v6

    const-string/jumbo v2, "E"

    aput-object v2, v1, v7

    const-string/jumbo v2, "R"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "T"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "Y"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "U"

    aput-object v3, v1, v2

    const-string/jumbo v2, "I"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "P"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 56
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "A"

    aput-object v2, v1, v4

    const-string/jumbo v2, "S"

    aput-object v2, v1, v6

    const-string/jumbo v2, "D"

    aput-object v2, v1, v7

    const-string/jumbo v2, "F"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "G"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "H"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "J"

    aput-object v3, v1, v2

    const-string/jumbo v2, "K"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "L"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 58
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Z"

    aput-object v2, v1, v4

    const-string/jumbo v2, "X"

    aput-object v2, v1, v6

    const-string/jumbo v2, "C"

    aput-object v2, v1, v7

    const-string/jumbo v2, "V"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "B"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "N"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "M"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .line 61
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "2"

    aput-object v2, v1, v6

    const-string/jumbo v2, "3"

    aput-object v2, v1, v7

    const-string/jumbo v2, "4"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "7"

    aput-object v3, v1, v2

    const-string/jumbo v2, "8"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "0"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 63
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "~"

    aput-object v2, v1, v4

    const-string/jumbo v2, "!"

    aput-object v2, v1, v6

    const-string/jumbo v2, "@"

    aput-object v2, v1, v7

    const-string/jumbo v2, "#"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "%"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "\'"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "&"

    aput-object v3, v1, v2

    const-string/jumbo v2, "*"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "?"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 65
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "("

    aput-object v2, v1, v4

    const-string/jumbo v2, ")"

    aput-object v2, v1, v6

    const-string/jumbo v2, "-"

    aput-object v2, v1, v7

    const-string/jumbo v2, "_"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ";"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "/"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .line 68
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "2"

    aput-object v2, v1, v6

    const-string/jumbo v2, "3"

    aput-object v2, v1, v7

    const-string/jumbo v2, "4"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "7"

    aput-object v3, v1, v2

    const-string/jumbo v2, "8"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "0"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 70
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "<"

    aput-object v2, v1, v4

    const-string/jumbo v2, ">"

    aput-object v2, v1, v6

    const-string/jumbo v2, "+"

    aput-object v2, v1, v7

    const-string/jumbo v2, "="

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "\u00f7"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "^"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "`"

    aput-object v3, v1, v2

    const-string/jumbo v2, "["

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string/jumbo v3, "]"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 72
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\\"

    aput-object v2, v1, v4

    const-string/jumbo v2, "|"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\""

    aput-object v2, v1, v7

    const-string/jumbo v2, "$"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "\uffe5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "{"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "}"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .line 114
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    .line 115
    iput v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    .line 86
    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 88
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Liid$c;->keyboard_qwerty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 89
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    .line 90
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->initialize(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->initializeTips(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 125
    .local v15, "row":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    .line 127
    .local v17, "screen_height":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 128
    .local v18, "screen_width":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 131
    move/from16 v21, v17

    .local v21, "tmp":I
    move/from16 v18, v17

    .line 134
    .end local v21    # "tmp":I
    :cond_0
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4012000000000000L    # 4.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide v26, 0x3ff7333333333333L    # 1.45

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x401c000000000000L    # 7.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v8, v0

    .line 137
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x7

    sub-int v23, v18, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4012000000000000L    # 4.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v19, v23, 0x2

    .line 138
    .local v19, "shiftWidth":I
    move/from16 v7, v19

    .line 140
    .local v7, "delWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    mul-int/lit8 v20, v23, 0x4

    .line 141
    .local v20, "spaceWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    add-int v14, v23, v19

    .line 142
    .local v14, "okWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fe4cccccccccccdL    # 0.65

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    .line 144
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v15, :cond_b

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 146
    .local v16, "rowLayout":Landroid/widget/LinearLayout;
    if-eqz v16, :cond_a

    .line 150
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 151
    .local v13, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 152
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 154
    .local v4, "column":I
    if-nez v9, :cond_1

    .line 155
    new-array v0, v4, [Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    .line 156
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v4, :cond_a

    .line 157
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 158
    .local v5, "container":Landroid/widget/FrameLayout;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 159
    .local v11, "key":Landroid/widget/TextView;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    new-instance v23, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct/range {v23 .. v23}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aput-object v11, v23, v10

    .line 156
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 164
    .end local v5    # "container":Landroid/widget/FrameLayout;
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/widget/TextView;
    :cond_1
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_2

    .line 165
    new-array v0, v4, [Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    .line 166
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_2
    if-ge v10, v4, :cond_a

    .line 167
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 169
    .restart local v5    # "container":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 170
    .local v6, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 171
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 173
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 174
    .restart local v11    # "key":Landroid/widget/TextView;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    new-instance v23, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct/range {v23 .. v23}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aput-object v11, v23, v10

    .line 166
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 179
    .end local v5    # "container":Landroid/widget/FrameLayout;
    .end local v6    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/widget/TextView;
    :cond_2
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_5

    .line 180
    add-int/lit8 v23, v4, -0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    .line 181
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_3
    if-ge v10, v4, :cond_a

    .line 182
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 184
    .restart local v5    # "container":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 186
    .restart local v6    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v10, :cond_3

    .line 187
    move/from16 v0, v19

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 188
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    .line 201
    :goto_4
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 189
    :cond_3
    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_4

    .line 190
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_4

    .line 192
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 193
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 194
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 195
    .restart local v11    # "key":Landroid/widget/TextView;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    new-instance v23, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct/range {v23 .. v23}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int/lit8 v24, v10, -0x1

    aput-object v11, v23, v24

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_4

    .line 205
    .end local v5    # "container":Landroid/widget/FrameLayout;
    .end local v6    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/widget/TextView;
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_5
    if-ge v10, v4, :cond_a

    .line 206
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 207
    .local v11, "key":Landroid/view/View;
    new-instance v23, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct/range {v23 .. v23}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 209
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .local v12, "keyParams":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v10, :cond_6

    .line 212
    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v23, v11

    .line 213
    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_type:Landroid/widget/TextView;

    move-object/from16 v23, v11

    .line 214
    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    :goto_6
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 215
    :cond_6
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_7

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v23, v11

    .line 217
    check-cast v23, Landroid/widget/FrameLayout;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 218
    .local v22, "tv":Landroid/widget/TextView;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    .line 219
    .end local v22    # "tv":Landroid/widget/TextView;
    :cond_7
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v10, v0, :cond_8

    .line 220
    move/from16 v0, v20

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v23, v11

    .line 221
    check-cast v23, Landroid/widget/FrameLayout;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 222
    .restart local v22    # "tv":Landroid/widget/TextView;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    .line 223
    .end local v22    # "tv":Landroid/widget/TextView;
    :cond_8
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v10, v0, :cond_9

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v23, v11

    .line 225
    check-cast v23, Landroid/widget/FrameLayout;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 226
    .restart local v22    # "tv":Landroid/widget/TextView;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    .line 228
    .end local v22    # "tv":Landroid/widget/TextView;
    :cond_9
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v23, v11

    .line 229
    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    .line 144
    .end local v4    # "column":I
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/view/View;
    .end local v12    # "keyParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 238
    .end local v16    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_b
    return-void
.end method

.method private initializeTips(Landroid/content/Context;)V
    .locals 6
    .param p1, "act"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    .line 96
    .local v2, "screen_density":D
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    .line 97
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const-wide v4, 0x4050400000000000L    # 65.0

    mul-double/2addr v4, v2

    double-to-int v1, v4

    const-wide v4, 0x4053800000000000L    # 78.0

    mul-double/2addr v4, v2

    double-to-int v4, v4

    invoke-direct {v0, v1, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 99
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 101
    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v4, v2

    double-to-int v4, v4

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 102
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    sget v4, Liid$a;->keyborad_show:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 106
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    return-void
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 276
    .local v1, "id":I
    sget v4, Liid$b;->key_del1:I

    if-ne v1, v4, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onDel()V

    .line 297
    :cond_0
    :goto_0
    return v6

    .line 278
    :cond_1
    sget v4, Liid$b;->key_enter:I

    if-eq v1, v4, :cond_0

    .line 280
    sget v4, Liid$b;->key_space:I

    if-ne v1, v4, :cond_2

    .line 281
    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    sget v4, Liid$b;->key_ABC:I

    if-ne v1, v4, :cond_4

    .line 283
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    sget-object v5, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->down:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    :goto_1
    iput-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    .line 284
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_0

    .line 283
    :cond_3
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    goto :goto_1

    .line 285
    :cond_4
    sget v4, Liid$b;->key_123:I

    if-ne v1, v4, :cond_6

    .line 286
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v5, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    :goto_2
    iput-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    .line 287
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iput-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    .line 288
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_0

    .line 286
    :cond_5
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    goto :goto_2

    :cond_6
    move-object v0, p1

    .line 290
    check-cast v0, Landroid/widget/FrameLayout;

    .line 291
    .local v0, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 292
    .local v3, "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->showInputTips(Landroid/view/View;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 262
    .local v0, "id":I
    sget v1, Liid$b;->key_enter:I

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onOK()V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    const/4 v1, 0x0

    return v1
.end method

.method private showInputTips(Landroid/view/View;Ljava/lang/String;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 301
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_0

    .line 315
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    .line 306
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->getRelatePoint(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 308
    .local v2, "relatePoint":Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 309
    .local v1, "left":I
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    add-int/2addr v4, v5

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    sub-int v3, v4, v5

    .line 310
    .local v3, "top":I
    invoke-virtual {v0, v1, v3, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V
    .locals 8
    .param p1, "qwertType"    # Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;
    .param p2, "shiftType"    # Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 322
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    if-ne p1, v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_type:Landroid/widget/TextView;

    const-string/jumbo v5, "123"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, v4, :cond_0

    .line 328
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Liid$a;->keyboard_key_shift_up:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 331
    .local v1, "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 332
    .local v2, "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .line 362
    .local v3, "row3":[Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 363
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "i":I
    .end local v1    # "row1":[Ljava/lang/String;
    .end local v2    # "row2":[Ljava/lang/String;
    .end local v3    # "row3":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Liid$a;->keyboard_key_shift_down:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 337
    .restart local v1    # "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 338
    .restart local v2    # "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .restart local v3    # "row3":[Ljava/lang/String;
    goto :goto_0

    .line 341
    .end local v1    # "row1":[Ljava/lang/String;
    .end local v2    # "row2":[Ljava/lang/String;
    .end local v3    # "row3":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 344
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 347
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_type:Landroid/widget/TextView;

    const-string/jumbo v5, "abc"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, v4, :cond_3

    .line 350
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v5, "123"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 352
    .restart local v1    # "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 353
    .restart local v2    # "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .restart local v3    # "row3":[Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v1    # "row1":[Ljava/lang/String;
    .end local v2    # "row2":[Ljava/lang/String;
    .end local v3    # "row3":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v5, "#+="

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 357
    .restart local v1    # "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 358
    .restart local v2    # "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .restart local v3    # "row3":[Ljava/lang/String;
    goto/16 :goto_0

    .line 366
    .restart local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 367
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 370
    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 371
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 373
    :cond_6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 249
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
