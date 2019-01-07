.class public Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;
.super Ljava/lang/Object;
.source "DateTimePickDialogUtil.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;
    }
.end annotation


# instance fields
.field private final INTERVAL_ONE:I

.field private final INTERVAL_TEN:I

.field private final MINUTES_INTERVAL_ONE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final MINUTES_INTERVAL_TEN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDatePicker:Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

.field private mDateTime:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private mInitDateTime:Ljava/lang/String;

.field private mInterval:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

.field private mIsOnlyChooseMonth:Z

.field private mOnDateAndTimeChooseListener:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;

.field private mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "initDateTime"    # Ljava/lang/String;
    .param p4, "interval"    # Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;
    .param p5, "onlyChooseMonth"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v4

    const-string/jumbo v1, "10"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20"

    aput-object v1, v0, v5

    const-string/jumbo v1, "30"

    aput-object v1, v0, v6

    const-string/jumbo v1, "40"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->MINUTES_INTERVAL_TEN:Ljava/util/List;

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->INTERVAL_TEN:I

    .line 65
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v4

    const-string/jumbo v1, "01"

    aput-object v1, v0, v3

    const-string/jumbo v1, "02"

    aput-object v1, v0, v5

    const-string/jumbo v1, "03"

    aput-object v1, v0, v6

    const-string/jumbo v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "42"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "59"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->MINUTES_INTERVAL_ONE:Ljava/util/List;

    .line 73
    iput v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->INTERVAL_ONE:I

    .line 107
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mFormat:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInterval:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    .line 111
    iput-boolean p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mIsOnlyChooseMonth:Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;)Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mOnDateAndTimeChooseListener:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDateTime:Ljava/lang/String;

    return-object v0
.end method

.method private findNumberPicker(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/NumberPicker;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v2, "npList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/NumberPicker;>;"
    if-eqz p1, :cond_2

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/NumberPicker;

    if-eqz v4, :cond_1

    .line 281
    check-cast v0, Landroid/widget/NumberPicker;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 283
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->findNumberPicker(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v3

    .line 284
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/NumberPicker;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 291
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/NumberPicker;>;"
    :goto_1
    return-object v3

    :cond_2
    move-object v3, v2

    goto :goto_1
.end method

.method private getIntervalMinuteStrs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInterval:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->MINUTES_INTERVAL_ONE:Ljava/util/List;

    .line 298
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->MINUTES_INTERVAL_TEN:Ljava/util/List;

    goto :goto_0
.end method

.method private parseDate()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mFormat:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->stringToDate()Ljava/util/Date;

    move-result-object v1

    .line 224
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 228
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method private setNumberPickerTextSize(Landroid/view/ViewGroup;[Ljava/lang/String;)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "minutes"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->findNumberPicker(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "npList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/NumberPicker;>;"
    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 261
    .local v0, "minuteSpinner":Landroid/widget/NumberPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "id/minute"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 263
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 264
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 265
    invoke-virtual {v0, p2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v0    # "minuteSpinner":Landroid/widget/NumberPicker;
    :cond_1
    return-void
.end method

.method private stringToDate()Ljava/util/Date;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mFormat:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 247
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 247
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dateTimePicKDialog()Landroid/support/v7/app/AlertDialog;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 143
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mContext:Landroid/content/Context;

    sget v8, Lhdn$i;->common_date_time_layout:I

    invoke-static {v7, v8, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 144
    .local v3, "dateTimeLayout":Landroid/widget/LinearLayout;
    sget v7, Lhdn$h;->datepicker:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDatePicker:Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

    .line 145
    sget v7, Lhdn$h;->timepicker:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    .line 147
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDatePicker:Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->init(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V

    .line 148
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 149
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    invoke-virtual {v7, p0}, Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 151
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->getIntervalMinuteStrs()Ljava/util/List;

    move-result-object v6

    .line 152
    .local v6, "timeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 153
    .local v5, "minutes":[Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 154
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    invoke-direct {p0, v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->setNumberPickerTextSize(Landroid/view/ViewGroup;[Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 158
    invoke-virtual {v7, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lhdn$k;->sure:I

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$2;

    invoke-direct {v9, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;)V

    .line 159
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lhdn$k;->login_cancel:I

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$1;

    invoke-direct {v9, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;)V

    .line 166
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 177
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mIsOnlyChooseMonth:Z

    if-eqz v7, :cond_0

    .line 178
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    invoke-virtual {v7, v11}, Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;->setVisibility(I)V

    .line 179
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDatePicker:Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

    invoke-virtual {v7, v10}, Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 180
    .local v4, "firstChild":Landroid/view/View;
    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 181
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "firstChild":Landroid/view/View;
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, "chooseViewGroup":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v7, v2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 183
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "chooseViewGroup":Landroid/view/View;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "chooseDayView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .end local v1    # "chooseDayView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v12, v10, v10, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 193
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v7
.end method

.method public init(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V
    .locals 8
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "timePicker"    # Landroid/widget/TimePicker;

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->parseDate()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 130
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 131
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 129
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 132
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 134
    return-void

    .line 119
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    .line 122
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mIsOnlyChooseMonth:Z

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInitDateTime:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 212
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDatePicker:Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDatePicker:Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDatePicker:Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;

    .line 213
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/ScrollDatePicker;->getDayOfMonth()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mTimePicker:Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;

    .line 214
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/view/ScrollTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mInterval:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->getValue()I

    move-result v7

    mul-int/2addr v5, v7

    .line 212
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 215
    new-instance v6, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mFormat:Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDateTime:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 205
    return-void
.end method

.method public setOnDateAndTimeChooseListener(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;)V
    .locals 0
    .param p1, "onDateAndTimeChooseListener"    # Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->mOnDateAndTimeChooseListener:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;

    .line 198
    return-void
.end method
