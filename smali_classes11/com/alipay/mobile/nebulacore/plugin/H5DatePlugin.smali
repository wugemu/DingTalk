.class public Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
.super Lipd;
.source "H5DatePlugin.java"


# static fields
.field private static final HOUR_MINUTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "H5DatePlugin"

.field private static final YEAR:I = 0x4

.field private static final YEAR_MONTH:I = 0x3

.field private static final YEAR_MONTH_DAY:I = 0x1

.field private static final YEAR_MONTH_DAY_HOUR_MINUTE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Liny;ZLcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Ljava/util/Calendar;
    .param p3, "x3"    # Ljava/util/Calendar;
    .param p4, "x4"    # Ljava/util/Calendar;
    .param p5, "x5"    # Liny;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->showTimeDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Liny;ZLcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private datePicker(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 26
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    .prologue
    .line 53
    .line 1121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v25, v0

    .line 54
    .local v25, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "mode"

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v20

    .line 55
    .local v20, "mode":I
    const-string/jumbo v3, "minDate"

    const-string/jumbo v4, ""

    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 56
    .local v24, "minDateStr":Ljava/lang/String;
    const-string/jumbo v3, "maxDate"

    const-string/jumbo v4, ""

    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 57
    .local v23, "maxDateStr":Ljava/lang/String;
    const-string/jumbo v3, "beginDate"

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 58
    .local v21, "beginDateStr":Ljava/lang/String;
    const-string/jumbo v3, "isIDCard"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    .line 60
    .local v9, "isIDCard":Z
    const/16 v22, 0x0

    .line 61
    .local v22, "format":Ljava/lang/String;
    if-nez v20, :cond_2

    .line 62
    const-string/jumbo v22, "HH:mm:ss"

    .line 73
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    .line 74
    .local v6, "minDate":Ljava/util/Calendar;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    .line 82
    .local v7, "maxDate":Ljava/util/Calendar;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    .line 83
    .local v5, "beginDate":Ljava/util/Calendar;
    if-nez v5, :cond_1

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 99
    :cond_1
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 100
    .local v10, "result":Lcom/alibaba/fastjson/JSONObject;
    if-nez v20, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    .line 101
    invoke-direct/range {v3 .. v10}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->showTimeDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Liny;ZLcom/alibaba/fastjson/JSONObject;)V

    .line 106
    :goto_1
    return-void

    .line 63
    .end local v5    # "beginDate":Ljava/util/Calendar;
    .end local v6    # "minDate":Ljava/util/Calendar;
    .end local v7    # "maxDate":Ljava/util/Calendar;
    .end local v10    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 64
    const-string/jumbo v22, "yyyy-MM-dd"

    goto :goto_0

    .line 65
    :cond_3
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    .line 66
    const-string/jumbo v22, "yyyy-MM-dd HH:mm:ss"

    goto :goto_0

    .line 67
    :cond_4
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_5

    .line 68
    const-string/jumbo v22, "yyyy-MM"

    goto :goto_0

    .line 69
    :cond_5
    const/4 v3, 0x4

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    .line 70
    const-string/jumbo v22, "yyyy"

    goto :goto_0

    .line 103
    .restart local v5    # "beginDate":Ljava/util/Calendar;
    .restart local v6    # "minDate":Ljava/util/Calendar;
    .restart local v7    # "maxDate":Ljava/util/Calendar;
    .restart local v10    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move/from16 v16, v9

    move-object/from16 v18, p2

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v20}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->showDateDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLiny;Lcom/alibaba/fastjson/JSONObject;I)V

    goto :goto_1

    :cond_7
    const/16 v17, 0x0

    goto :goto_2
.end method

.method private parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 6
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 330
    :goto_0
    return-object v0

    .line 322
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 325
    .local v0, "calendar":Ljava/util/Calendar;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/text/ParseException;
    const-string/jumbo v4, "H5DatePlugin"

    const-string/jumbo v5, "exception detail"

    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 328
    goto :goto_0
.end method

.method private showDateDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLiny;Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 20
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "beginDate"    # Ljava/util/Calendar;
    .param p3, "minDate"    # Ljava/util/Calendar;
    .param p4, "maxDate"    # Ljava/util/Calendar;
    .param p5, "isCard"    # Z
    .param p6, "isShowTimeDialog"    # Z
    .param p7, "h5BridgeContext"    # Liny;
    .param p8, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p9, "mode"    # I

    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v15

    .line 113
    .local v15, "activity":Landroid/app/Activity;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v16, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    move/from16 v13, p5

    move/from16 v14, p9

    invoke-direct/range {v4 .. v14}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/util/Calendar;Ljava/util/Calendar;ZLcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Liny;ZI)V

    const/4 v5, 0x1

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v5, 0x5

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v5, v16

    move-object/from16 v6, p0

    move-object v7, v15

    move-object v8, v4

    invoke-direct/range {v5 .. v11}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 154
    .local v16, "dateDialog":Landroid/app/DatePickerDialog;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_choosedate:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 156
    const/4 v4, -0x2

    .line 158
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/nebula/R$string;->h5_datecancel:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v6, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Liny;)V

    .line 157
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    if-eqz p5, :cond_2

    .line 168
    const/4 v4, -0x3

    .line 169
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/nebula/R$string;->h5_datevalid:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    invoke-direct {v6, v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$4;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 168
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    :cond_2
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v17

    .line 181
    .local v17, "datePicker":Landroid/widget/DatePicker;
    if-eqz p3, :cond_3

    .line 182
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 184
    :cond_3
    if-eqz p4, :cond_4

    .line 185
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .end local v17    # "datePicker":Landroid/widget/DatePicker;
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v17

    .line 194
    .restart local v17    # "datePicker":Landroid/widget/DatePicker;
    const/4 v4, 0x3

    move/from16 v0, p9

    if-ne v0, v4, :cond_6

    .line 196
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "day"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 207
    .end local v17    # "datePicker":Landroid/widget/DatePicker;
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/app/DatePickerDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v18

    .line 209
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5DatePlugin"

    const-string/jumbo v5, "show date dialog exception."

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 187
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v19

    .line 188
    .local v19, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5DatePlugin"

    const-string/jumbo v5, "set min or max date exception."

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 197
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v17    # "datePicker":Landroid/widget/DatePicker;
    :cond_6
    const/4 v4, 0x4

    move/from16 v0, p9

    if-ne v0, v4, :cond_5

    .line 199
    :try_start_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "day"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "month"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 202
    .end local v17    # "datePicker":Landroid/widget/DatePicker;
    :catch_2
    move-exception v18

    .line 203
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5DatePlugin"

    const-string/jumbo v5, "set date mode exception"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private showTimeDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Liny;ZLcom/alibaba/fastjson/JSONObject;)V
    .locals 13
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "beginDate"    # Ljava/util/Calendar;
    .param p3, "minDate"    # Ljava/util/Calendar;
    .param p4, "maxDate"    # Ljava/util/Calendar;
    .param p5, "h5BridgeContext"    # Liny;
    .param p6, "idCard"    # Z
    .param p7, "result"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v10

    .line 218
    .local v10, "activity":Landroid/app/Activity;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    new-instance v12, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p5

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Liny;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;)V

    const/16 v3, 0xb

    .line 280
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v3, 0xc

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    move-object v3, v12

    move-object v4, p0

    move-object v5, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 286
    .local v12, "timeDialog":Landroid/app/TimePickerDialog;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_choosetime:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/TimePickerDialog;->setCancelable(Z)V

    .line 288
    const/4 v2, -0x2

    .line 290
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_datecancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$7;

    move-object/from16 v0, p5

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$7;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Liny;)V

    .line 289
    invoke-virtual {v12, v2, v3, v4}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 299
    if-eqz p6, :cond_2

    .line 300
    const/4 v2, -0x3

    .line 301
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_datevalid:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;

    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-direct {v4, p0, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 300
    invoke-virtual {v12, v2, v3, v4}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    :cond_2
    :try_start_0
    invoke-virtual {v12}, Landroid/app/TimePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v11

    .line 314
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5DatePlugin"

    const-string/jumbo v3, "show time dialog exception."

    invoke-static {v2, v3, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "datePicker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->datePicker(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 49
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 40
    const-string/jumbo v0, "datePicker"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method
