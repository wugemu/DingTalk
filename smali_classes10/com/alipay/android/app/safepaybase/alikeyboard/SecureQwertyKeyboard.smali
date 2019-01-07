.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;,
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;
    }
.end annotation


# static fields
.field private static final signMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.field private fake_view:Landroid/view/View;

.field private ib_shift:Landroid/widget/FrameLayout;

.field private inputTips:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

.field private screen_density:D

.field sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

.field private shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

.field stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

.field private textSize:F

.field private tv_row1:[Landroid/widget/TextView;

.field private tv_row2:[Landroid/widget/TextView;

.field private tv_row3:[Landroid/widget/TextView;

.field private tv_type:Landroid/widget/TextView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 566
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$4;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$4;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->signMap:Ljava/util/Map;

    return-void
.end method

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

    .line 98
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 51
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    .line 52
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    .line 54
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    .line 55
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    .line 56
    new-array v1, v5, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    .line 60
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 62
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 64
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .line 67
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 69
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 71
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .line 74
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 76
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 78
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .line 81
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 83
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 85
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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .line 131
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    .line 132
    iput v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    .line 421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 423
    iput-boolean v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    .line 474
    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    .line 486
    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    .line 99
    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 101
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Liid$c;->keyboard_secure_qwerty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 102
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    .line 104
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->initTtsIfTalkBack()V

    .line 107
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->initialize(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->initializeTips(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->fake_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
    .param p1, "x1"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->getAnnounceString(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->announceTextOut(Ljava/lang/String;)V

    return-void
.end method

.method private announceSwitchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V
    .locals 4
    .param p1, "qwertType"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;
    .param p2, "shiftType"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 399
    iget-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz v1, :cond_0

    .line 401
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne p1, v1, :cond_2

    .line 402
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v2, Liid$d;->msp_secure_keyboard_type_lowercase_letter:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "announceString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 418
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v2, Liid$d;->msp_secure_keyboard_type_uppercase_letter:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announceString":Ljava/lang/String;
    goto :goto_0

    .line 408
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v1, :cond_3

    .line 409
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v2, Liid$d;->msp_secure_keyboard_type_digital_sign:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announceString":Ljava/lang/String;
    goto :goto_0

    .line 411
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v2, Liid$d;->msp_secure_keyboard_type_special_sign:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announceString":Ljava/lang/String;
    goto :goto_0
.end method

.method private announceTextOut(Ljava/lang/String;)V
    .locals 3
    .param p1, "announceString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 525
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 528
    :cond_0
    return-void
.end method

.method private convertIfSpecial(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 558
    move-object v0, p1

    .line 559
    .local v0, "announceString":Ljava/lang/String;
    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->signMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 560
    .local v1, "tempStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 561
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_0
    return-object v0
.end method

.method private getAnnounceString(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;
    .locals 6
    .param p1, "view"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .param p2, "eventType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 532
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v1

    .line 533
    .local v1, "id":I
    sget v3, Liid$b;->key_del1:I

    if-ne v1, v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v4, Liid$d;->msp_secure_keyboard_del:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "announceString":Ljava/lang/String;
    if-ne p2, v5, :cond_0

    .line 536
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v4, Liid$d;->msp_secure_keyboard_already_del:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    :cond_0
    :goto_0
    return-object v0

    .line 538
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_1
    sget v3, Liid$b;->key_space:I

    if-ne v1, v3, :cond_2

    .line 539
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v4, Liid$d;->msp_secure_keyboard_space:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announceString":Ljava/lang/String;
    goto :goto_0

    .line 540
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_2
    sget v3, Liid$b;->key_ABC:I

    if-ne v1, v3, :cond_4

    .line 541
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 542
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v4, Liid$d;->msp_secure_keyboard_shift:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announceString":Ljava/lang/String;
    goto :goto_0

    .line 544
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 545
    .local v2, "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .restart local v0    # "announceString":Ljava/lang/String;
    goto :goto_0

    .line 547
    .end local v0    # "announceString":Ljava/lang/String;
    .end local v2    # "keyOnclick":Landroid/widget/TextView;
    :cond_4
    sget v3, Liid$b;->key_enter:I

    if-ne v1, v3, :cond_5

    .line 548
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    sget v4, Liid$d;->msp_secure_keyboard_compelete:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announceString":Ljava/lang/String;
    goto :goto_0

    .line 550
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 551
    .restart local v2    # "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0    # "announceString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->convertIfSpecial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initTtsIfTalkBack()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 428
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 447
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 30
    .param p1, "act"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    .line 142
    .local v16, "row":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    .line 144
    .local v18, "screen_height":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    .line 145
    .local v19, "screen_width":I
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 147
    move/from16 v19, v18

    .line 150
    :cond_0
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4012000000000000L    # 4.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide v26, 0x3ff7333333333333L    # 1.45

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x401c000000000000L    # 7.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v8, v0

    .line 153
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x7

    sub-int v24, v19, v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4012000000000000L    # 4.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v20, v24, 0x2

    .line 154
    .local v20, "shiftWidth":I
    move/from16 v7, v20

    .line 156
    .local v7, "delWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    mul-int/lit8 v21, v24, 0x4

    .line 157
    .local v21, "spaceWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    add-int v15, v24, v20

    .line 158
    .local v15, "okWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fe4cccccccccccdL    # 0.65

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    .line 160
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_c

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 162
    .local v17, "rowLayout":Landroid/widget/LinearLayout;
    if-eqz v17, :cond_b

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .local v14, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 168
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 170
    .local v4, "column":I
    if-nez v9, :cond_1

    .line 171
    new-array v0, v4, [Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    .line 172
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v4, :cond_b

    .line 173
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 174
    .local v5, "container":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 175
    .local v11, "key":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    move-object/from16 v24, v0

    aput-object v11, v24, v10

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 172
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "container":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .end local v10    # "j":I
    .end local v11    # "key":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    :cond_1
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v9, v0, :cond_2

    .line 182
    new-array v0, v4, [Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    .line 183
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_2
    if-ge v10, v4, :cond_b

    .line 184
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 185
    .restart local v5    # "container":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 186
    .restart local v11    # "key":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    invoke-virtual {v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .local v6, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 191
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    move-object/from16 v24, v0

    aput-object v11, v24, v10

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 183
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 196
    .end local v5    # "container":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .end local v6    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "j":I
    .end local v11    # "key":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    :cond_2
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v9, v0, :cond_5

    .line 197
    add-int/lit8 v24, v4, -0x2

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    .line 198
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_3
    if-ge v10, v4, :cond_b

    .line 199
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 201
    .restart local v5    # "container":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    invoke-virtual {v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    .restart local v6    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v10, :cond_3

    .line 204
    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 205
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    .line 219
    :goto_4
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 198
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 206
    :cond_3
    add-int/lit8 v24, v4, -0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_4

    .line 207
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 208
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->fake_view:Landroid/view/View;

    goto :goto_4

    .line 210
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 211
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 212
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .line 213
    .restart local v11    # "key":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    .line 214
    new-instance v24, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct/range {v24 .. v24}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int/lit8 v25, v10, -0x1

    aput-object v11, v24, v25

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    goto :goto_4

    .line 224
    .end local v5    # "container":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .end local v6    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "j":I
    .end local v11    # "key":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_5
    if-ge v10, v4, :cond_b

    .line 225
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 227
    .local v11, "key":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    .local v13, "keyParams":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v10, :cond_7

    .line 230
    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v23, v11

    .line 231
    check-cast v23, Landroid/widget/FrameLayout;

    .line 232
    .local v23, "typeLayout":Landroid/widget/FrameLayout;
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_type:Landroid/widget/TextView;

    .line 243
    .end local v23    # "typeLayout":Landroid/widget/FrameLayout;
    :goto_6
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    instance-of v0, v11, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object v12, v11

    .line 247
    check-cast v12, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 248
    .local v12, "keyFrameLayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->sflAccessListenr:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 250
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 251
    .local v22, "subView":Landroid/widget/TextView;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 253
    check-cast v22, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    .end local v22    # "subView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->stvAccessListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 224
    .end local v12    # "keyFrameLayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 233
    :cond_7
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_8

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_6

    .line 235
    :cond_8
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v10, v0, :cond_9

    .line 236
    move/from16 v0, v21

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_6

    .line 237
    :cond_9
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v10, v0, :cond_a

    .line 238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_6

    .line 240
    :cond_a
    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_6

    .line 160
    .end local v4    # "column":I
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/view/View;
    .end local v13    # "keyParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 260
    .end local v17    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_c
    return-void
.end method

.method private initializeTips(Landroid/content/Context;)V
    .locals 6
    .param p1, "act"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    .line 113
    .local v2, "screen_density":D
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    .line 114
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const-wide v4, 0x4050400000000000L    # 65.0

    mul-double/2addr v4, v2

    double-to-int v1, v4

    const-wide v4, 0x4053800000000000L    # 78.0

    mul-double/2addr v4, v2

    double-to-int v4, v4

    invoke-direct {v0, v1, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 116
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 117
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->width:I

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v4, v2

    double-to-int v4, v4

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 119
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    sget v4, Liid$a;->keyborad_show:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    :cond_0
    return-void
.end method

.method private isZhLanguage()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 467
    .local v0, "l":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    const/4 v2, 0x1

    .line 471
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 298
    .local v1, "id":I
    sget v4, Liid$b;->key_del1:I

    if-ne v1, v4, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onDel()V

    .line 318
    :cond_0
    :goto_0
    return v6

    .line 300
    :cond_1
    sget v4, Liid$b;->key_enter:I

    if-eq v1, v4, :cond_0

    .line 302
    sget v4, Liid$b;->key_space:I

    if-ne v1, v4, :cond_2

    .line 303
    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    sget v4, Liid$b;->key_ABC:I

    if-ne v1, v4, :cond_4

    .line 305
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    sget-object v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->down:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    :goto_1
    iput-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    .line 306
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    goto :goto_0

    .line 305
    :cond_3
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    goto :goto_1

    .line 307
    :cond_4
    sget v4, Liid$b;->key_123:I

    if-ne v1, v4, :cond_6

    .line 308
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    sget-object v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    :goto_2
    iput-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    .line 309
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iput-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    .line 310
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    goto :goto_0

    .line 308
    :cond_5
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    goto :goto_2

    :cond_6
    move-object v0, p1

    .line 312
    check-cast v0, Landroid/widget/FrameLayout;

    .line 313
    .local v0, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 314
    .local v3, "keyOnclick":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 284
    .local v0, "id":I
    sget v1, Liid$b;->key_enter:I

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onOK()V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
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

    .line 322
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_0

    .line 336
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    .line 327
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 328
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->getRelatePoint(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 329
    .local v2, "relatePoint":Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 330
    .local v1, "left":I
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    add-int/2addr v4, v5

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->screen_density:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    sub-int v3, v4, v5

    .line 331
    .local v3, "top":I
    invoke-virtual {v0, v1, v3, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V
    .locals 8
    .param p1, "qwertType"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;
    .param p2, "shiftType"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 343
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne p1, v4, :cond_1

    .line 344
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_type:Landroid/widget/TextView;

    const-string/jumbo v5, "123"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Liid$a;->keyboard_key_shift_up:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 352
    .local v1, "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 353
    .local v2, "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .line 382
    .local v3, "row3":[Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 383
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    .end local v0    # "i":I
    .end local v1    # "row1":[Ljava/lang/String;
    .end local v2    # "row2":[Ljava/lang/String;
    .end local v3    # "row3":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Liid$a;->keyboard_key_shift_down:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 358
    .restart local v1    # "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 359
    .restart local v2    # "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .restart local v3    # "row3":[Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v1    # "row1":[Ljava/lang/String;
    .end local v2    # "row2":[Ljava/lang/String;
    .end local v3    # "row3":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 365
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->textSize:F

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 367
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_type:Landroid/widget/TextView;

    const-string/jumbo v5, "abc"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v4, :cond_3

    .line 370
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v5, "123"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 372
    .restart local v1    # "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 373
    .restart local v2    # "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    .restart local v3    # "row3":[Ljava/lang/String;
    goto :goto_0

    .line 375
    .end local v1    # "row1":[Ljava/lang/String;
    .end local v2    # "row2":[Ljava/lang/String;
    .end local v3    # "row3":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v5, "#+="

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 377
    .restart local v1    # "row1":[Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 378
    .restart local v2    # "row2":[Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    .restart local v3    # "row3":[Ljava/lang/String;
    goto/16 :goto_0

    .line 386
    .restart local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 387
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 390
    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 391
    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 394
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->announceSwitchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    .line 395
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 607
    const-string/jumbo v0, "Secure|abc"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onStatisticEvent(Ljava/lang/String;)V

    .line 608
    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 451
    if-nez p1, :cond_2

    .line 452
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->isZhLanguage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 453
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 454
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 461
    .end local v0    # "result":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTextToSpeechInitialized:Z

    .line 463
    :cond_2
    return-void

    .line 459
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0
.end method

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
    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result v0

    .line 274
    :goto_0
    return v0

    .line 270
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 271
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
