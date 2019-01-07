.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Calendar.java"


# instance fields
.field private final REQUEST_CODE_DATETIME:I

.field private final REQUEST_CODE_HALFDAY:I

.field private final REQUEST_CODE_INTERVAL:I

.field private final REQUEST_CODE_ONEDAY:I

.field private mChooseDateTimeCallbackId:Ljava/lang/String;

.field private mChooseHalfDayCallbackId:Ljava/lang/String;

.field private mChooseIntervalCallbackId:Ljava/lang/String;

.field private mChooseOneDayCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->REQUEST_CODE_DATETIME:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->REQUEST_CODE_HALFDAY:I

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->REQUEST_CODE_ONEDAY:I

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->REQUEST_CODE_INTERVAL:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public chooseDateTime(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseDateTimeCallbackId:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 216
    .local v0, "args":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 218
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x2

    const-string/jumbo v13, "invalid args"

    .line 219
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 261
    :goto_0
    return-object v10

    .line 222
    :cond_0
    const-string/jumbo v10, "corpId"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 225
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x5

    const-string/jumbo v13, "corpId is empty!"

    .line 226
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 229
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v10, "corpId"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string/jumbo v10, "calendar_widget_style"

    const/4 v11, 0x4

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string/jumbo v10, "default"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v10, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 235
    .local v8, "timeStamp":J
    const-string/jumbo v10, "default"

    invoke-virtual {v5, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 239
    :try_start_0
    const-string/jumbo v10, "bizTypes"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 241
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    .line 243
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 245
    .local v7, "len":I
    new-array v1, v7, [I

    .line 247
    .local v1, "bizTypes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 248
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v1, v4

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 251
    :cond_2
    const-string/jumbo v10, "bizTypes"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "bizTypes":[I
    .end local v4    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "len":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    sget v11, Lhdn$a;->sw_none:I

    sget v12, Lhdn$a;->hold:I

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 261
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    goto/16 :goto_0

    .line 253
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public chooseHalfDay(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseHalfDayCallbackId:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 107
    .local v0, "args":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 109
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x2

    const-string/jumbo v13, "invalid args"

    .line 110
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 151
    :goto_0
    return-object v10

    .line 113
    :cond_0
    const-string/jumbo v10, "corpId"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 116
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x5

    const-string/jumbo v13, "corpId is empty!"

    .line 117
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 120
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v10, "corpId"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v10, "calendar_widget_style"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string/jumbo v10, "default"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v10, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 126
    .local v8, "timeStamp":J
    const-string/jumbo v10, "default"

    invoke-virtual {v5, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 130
    :try_start_0
    const-string/jumbo v10, "bizTypes"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 132
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    .line 134
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 136
    .local v7, "len":I
    new-array v1, v7, [I

    .line 138
    .local v1, "bizTypes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 139
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v1, v4

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    :cond_2
    const-string/jumbo v10, "bizTypes"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "bizTypes":[I
    .end local v4    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "len":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    const/4 v11, 0x2

    invoke-virtual {v10, v5, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    sget v11, Lhdn$a;->sw_none:I

    sget v12, Lhdn$a;->hold:I

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 151
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public chooseInterval(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 18
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 157
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseIntervalCallbackId:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 159
    .local v2, "args":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 161
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v16, 0x2

    const-string/jumbo v17, "invalid args"

    .line 162
    invoke-static/range {v16 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 208
    :goto_0
    return-object v14

    .line 165
    :cond_0
    const-string/jumbo v14, "corpId"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "corpId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 168
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v16, 0x5

    const-string/jumbo v17, "corpId is empty!"

    .line 169
    invoke-static/range {v16 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 172
    :cond_1
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v14, "corpId"

    invoke-virtual {v11, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v14, "calendar_widget_style"

    const/4 v15, 0x3

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string/jumbo v14, "defaultStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 178
    .local v8, "defaultStart":J
    const-string/jumbo v14, "defaultEnd"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 179
    .local v6, "defaultEnd":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_2

    .line 180
    const-string/jumbo v14, "defaultStop"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 182
    :cond_2
    const-string/jumbo v14, "defaultStart"

    invoke-virtual {v11, v14, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    const-string/jumbo v14, "defaultEnd"

    invoke-virtual {v11, v14, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    :try_start_0
    const-string/jumbo v14, "bizTypes"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 189
    .local v12, "jsonArray":Lorg/json/JSONArray;
    if-eqz v12, :cond_4

    .line 191
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 193
    .local v13, "len":I
    new-array v3, v13, [I

    .line 195
    .local v3, "bizTypes":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_3

    .line 196
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v3, v10

    .line 195
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 199
    :cond_3
    const-string/jumbo v14, "bizTypes"

    invoke-virtual {v11, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v3    # "bizTypes":[I
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "len":I
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    const/4 v15, 0x4

    invoke-virtual {v14, v11, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    sget v15, Lhdn$a;->sw_none:I

    sget v16, Lhdn$a;->hold:I

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 208
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v14

    goto/16 :goto_0

    .line 201
    :catch_0
    move-exception v5

    .line 202
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public chooseOneDay(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x2

    .line 52
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseOneDayCallbackId:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 55
    .local v0, "args":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 57
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v12, "invalid args"

    .line 58
    invoke-static {v13, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 99
    :goto_0
    return-object v10

    .line 61
    :cond_0
    const-string/jumbo v10, "corpId"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 64
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x5

    const-string/jumbo v13, "corpId is empty!"

    .line 65
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v10, "corpId"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v10, "calendar_widget_style"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string/jumbo v10, "default"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v10, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 74
    .local v8, "timeStamp":J
    const-string/jumbo v10, "default"

    invoke-virtual {v5, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 78
    :try_start_0
    const-string/jumbo v10, "bizTypes"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 80
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    .line 82
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 84
    .local v7, "len":I
    new-array v1, v7, [I

    .line 86
    .local v1, "bizTypes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 87
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v1, v4

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    :cond_2
    const-string/jumbo v10, "bizTypes"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "bizTypes":[I
    .end local v4    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "len":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    const/4 v11, 0x3

    invoke-virtual {v10, v5, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    sget v11, Lhdn$a;->sw_none:I

    sget v12, Lhdn$a;->hold:I

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 99
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public datePicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 408
    .local v6, "args":Lorg/json/JSONObject;
    const-string/jumbo v0, "format"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, "format":Ljava/lang/String;
    const-string/jumbo v0, "value"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v7

    .line 412
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :try_start_1
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 415
    .local v9, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 416
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    .end local v8    # "date":Ljava/util/Date;
    .end local v9    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 421
    .local v3, "year":I
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 422
    .local v4, "month":I
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 423
    .local v5, "day":I
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lcom/alibaba/lightapp/runtime/ActionRequest;III)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 459
    .end local v3    # "year":I
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v7    # "calendar":Ljava/util/Calendar;
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, 0x3

    const-string/jumbo v12, "value does not match format"

    invoke-static {v2, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1

    .restart local v7    # "calendar":Ljava/util/Calendar;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseDateTimeCallbackId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 269
    const/4 v9, -0x1

    if-ne v9, p2, :cond_1

    .line 270
    if-eqz p3, :cond_0

    .line 272
    const-string/jumbo v9, "chosen"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 274
    .local v0, "chosen":J
    const-wide/16 v10, -0x1

    cmp-long v9, v10, v0

    if-eqz v9, :cond_0

    .line 277
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 278
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "chosen"

    invoke-virtual {v3, v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 280
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    const v10, 0x36ee80

    div-int v8, v9, v10

    .line 282
    .local v8, "timezone":I
    const-string/jumbo v9, "timezone"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseDateTimeCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "timezone":I
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v0    # "chosen":J
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseDateTimeCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->cancel(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseHalfDayCallbackId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 302
    const/4 v9, -0x1

    if-ne v9, p2, :cond_2

    .line 303
    if-eqz p3, :cond_0

    .line 305
    const-string/jumbo v9, "chosen"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 307
    .restart local v0    # "chosen":J
    const-wide/16 v10, -0x1

    cmp-long v9, v10, v0

    if-eqz v9, :cond_0

    .line 310
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "chosen"

    invoke-virtual {v3, v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 313
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    const v10, 0x36ee80

    div-int v8, v9, v10

    .line 315
    .restart local v8    # "timezone":I
    const-string/jumbo v9, "timezone"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 317
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseHalfDayCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 319
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "timezone":I
    :catch_1
    move-exception v2

    .line 320
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 327
    .end local v0    # "chosen":J
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseHalfDayCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->cancel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    :pswitch_2
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseOneDayCallbackId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 335
    const/4 v9, -0x1

    if-ne v9, p2, :cond_3

    .line 336
    if-eqz p3, :cond_0

    .line 338
    const-string/jumbo v9, "chosen"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 340
    .restart local v0    # "chosen":J
    const-wide/16 v10, -0x1

    cmp-long v9, v10, v0

    if-eqz v9, :cond_0

    .line 343
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 344
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "chosen"

    invoke-virtual {v3, v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 346
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    const v10, 0x36ee80

    div-int v8, v9, v10

    .line 348
    .restart local v8    # "timezone":I
    const-string/jumbo v9, "timezone"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseOneDayCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 352
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "timezone":I
    :catch_2
    move-exception v2

    .line 353
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 360
    .end local v0    # "chosen":J
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseOneDayCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->cancel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    :pswitch_3
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseIntervalCallbackId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 368
    const/4 v9, -0x1

    if-ne v9, p2, :cond_4

    .line 369
    if-eqz p3, :cond_0

    .line 371
    const-string/jumbo v9, "start"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 372
    .local v6, "start":J
    const-string/jumbo v9, "end"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 374
    .local v4, "end":J
    const-wide/16 v10, -0x1

    cmp-long v9, v10, v6

    if-eqz v9, :cond_0

    const-wide/16 v10, -0x1

    cmp-long v9, v10, v4

    if-eqz v9, :cond_0

    .line 377
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 378
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "start"

    invoke-virtual {v3, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 379
    const-string/jumbo v9, "end"

    invoke-virtual {v3, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 381
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    const v10, 0x36ee80

    div-int v8, v9, v10

    .line 383
    .restart local v8    # "timezone":I
    const-string/jumbo v9, "timezone"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseIntervalCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 387
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "timezone":I
    :catch_3
    move-exception v2

    .line 388
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 395
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "end":J
    .end local v6    # "start":J
    :cond_4
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->mChooseIntervalCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->cancel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
