.class public final Lhro;
.super Ljava/lang/Object;
.source "PikerMagician.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhro$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xb

    .line 180
    invoke-static {}, Lhro;->a()V

    .line 182
    if-eqz p0, :cond_1

    .line 183
    const-string/jumbo v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "valueArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 186
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    .end local v1    # "valueArray":[Ljava/lang/String;
    .local v0, "hour":I
    :goto_0
    return v0

    .end local v0    # "hour":I
    .restart local v1    # "valueArray":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 191
    :cond_0
    sget-object v2, Lhro;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 193
    .restart local v0    # "hour":I
    goto :goto_0

    .line 194
    .end local v0    # "hour":I
    .end local v1    # "valueArray":[Ljava/lang/String;
    :cond_1
    sget-object v2, Lhro;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .restart local v0    # "hour":I
    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lhro;->a:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lhro;->a:Ljava/util/Calendar;

    .line 37
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILhro$a;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "minDate"    # Ljava/lang/String;
    .param p3, "maxDate"    # Ljava/lang/String;
    .param p4, "year"    # I
    .param p5, "month"    # I
    .param p6, "day"    # I
    .param p7, "pickCallback"    # Lhro$a;

    .prologue
    .line 40
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 41
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "PikerMagician"

    const-string/jumbo v5, "popPickDate cancel, context is not activity"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;

    new-instance v4, Lhro$1;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-direct {v4, v0, v1}, Lhro$1;-><init>(Ljava/lang/String;Lhro$a;)V

    move-object/from16 v3, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 71
    .local v2, "datePickerDialog":Landroid/app/DatePickerDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 74
    new-instance v8, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v8, "dateFormat":Ljava/text/DateFormat;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 78
    .local v15, "tmpMinDate":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 79
    .local v12, "minTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-lez v3, :cond_1

    .line 80
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/widget/DatePicker;->setMinDate(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v12    # "minTime":J
    .end local v15    # "tmpMinDate":Ljava/util/Date;
    :cond_1
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    .line 89
    .local v14, "tmpMaxDate":Ljava/util/Date;
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 90
    .local v10, "maxTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-lez v3, :cond_2

    .line 91
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .end local v8    # "dateFormat":Ljava/text/DateFormat;
    .end local v10    # "maxTime":J
    .end local v14    # "tmpMaxDate":Ljava/util/Date;
    :cond_2
    :goto_2
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 82
    .restart local v8    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v9

    .line 83
    .local v9, "e":Ljava/text/ParseException;
    invoke-virtual {v9}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v9    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v9

    .line 94
    .restart local v9    # "e":Ljava/text/ParseException;
    invoke-virtual {v9}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)I
    .locals 5
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc

    .line 202
    invoke-static {}, Lhro;->a()V

    .line 204
    if-eqz p0, :cond_1

    .line 205
    const-string/jumbo v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "valueArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 208
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    .end local v1    # "valueArray":[Ljava/lang/String;
    .local v0, "minute":I
    :goto_0
    return v0

    .end local v0    # "minute":I
    .restart local v1    # "valueArray":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 213
    :cond_0
    sget-object v2, Lhro;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 215
    .restart local v0    # "minute":I
    goto :goto_0

    .line 216
    .end local v0    # "minute":I
    .end local v1    # "valueArray":[Ljava/lang/String;
    :cond_1
    sget-object v2, Lhro;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .restart local v0    # "minute":I
    goto :goto_0
.end method
