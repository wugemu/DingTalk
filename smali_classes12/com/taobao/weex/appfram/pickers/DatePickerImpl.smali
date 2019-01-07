.class public Lcom/taobao/weex/appfram/pickers/DatePickerImpl;
.super Ljava/lang/Object;
.source "DatePickerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static dateFormatter:Ljava/text/SimpleDateFormat;

.field private static timeFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v1, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->dateFormatter:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 157
    :cond_0
    :try_start_0
    sget-object v1, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[DatePickerImpl] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method private static parseTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    sget-object v1, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->timeFormatter:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->timeFormatter:Ljava/text/SimpleDateFormat;

    .line 171
    :cond_0
    :try_start_0
    sget-object v1, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->timeFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[DatePickerImpl] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static pickDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p5, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 57
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-static/range {p1 .. p1}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 58
    new-instance v2, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$1;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$1;-><init>(Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;)V

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v3, 0x2

    .line 71
    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x5

    .line 72
    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 75
    .local v2, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v9

    .line 77
    .local v9, "datePicker":Landroid/widget/DatePicker;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    .line 78
    .local v11, "defaultMinDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    .line 80
    .local v10, "defaultMaxDate":Ljava/util/Calendar;
    const/16 v3, 0x76c

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v11, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 81
    const/16 v3, 0x834

    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-virtual {v10, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 83
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-static/range {p3 .. p3}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 85
    .local v14, "minDate":J
    invoke-virtual {v9}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v4

    cmp-long v3, v4, v14

    if-ltz v3, :cond_2

    .line 86
    invoke-static/range {p3 .. p3}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 92
    .end local v14    # "minDate":J
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    invoke-static/range {p2 .. p2}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 94
    .local v12, "maxDate":J
    invoke-virtual {v9}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gtz v3, :cond_3

    .line 95
    invoke-static/range {p2 .. p2}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 102
    .end local v12    # "maxDate":J
    :cond_1
    :goto_1
    new-instance v3, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$2;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$2;-><init>(Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;)V

    invoke-virtual {v2, v3}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 109
    const/4 v4, -0x2

    if-eqz p5, :cond_4

    const-string/jumbo v3, "cancelTitle"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 110
    const/4 v4, -0x1

    if-eqz p5, :cond_5

    const-string/jumbo v3, "confirmTitle"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    .line 113
    return-void

    .line 88
    .restart local v14    # "minDate":J
    :cond_2
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 89
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_0

    .line 97
    .end local v14    # "minDate":J
    .restart local v12    # "maxDate":J
    :cond_3
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 98
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_1

    .line 109
    .end local v12    # "maxDate":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 110
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static pickTime(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 117
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->parseTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$3;

    invoke-direct {v2, p2}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$3;-><init>(Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;)V

    const/16 v1, 0xb

    .line 129
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    .line 130
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 134
    .local v0, "dialog":Landroid/app/TimePickerDialog;
    new-instance v1, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$4;

    invoke-direct {v1, p2}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$4;-><init>(Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 141
    const/4 v2, -0x2

    if-eqz p3, :cond_1

    const-string/jumbo v1, "cancelTitle"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 142
    const/4 v1, -0x1

    if-eqz p3, :cond_0

    const-string/jumbo v2, "confirmTitle"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :cond_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 145
    return-void

    :cond_1
    move-object v1, v7

    .line 141
    goto :goto_0
.end method

.method private static setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "which"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;-><init>(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
