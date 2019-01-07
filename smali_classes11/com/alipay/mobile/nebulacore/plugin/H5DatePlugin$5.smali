.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;
.super Ljava/lang/Object;
.source "H5DatePlugin.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->showTimeDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Liny;ZLcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$h5BridgeContext:Liny;

.field final synthetic val$maxDate:Ljava/util/Calendar;

.field final synthetic val$minDate:Ljava/util/Calendar;

.field final synthetic val$result:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Liny;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$result:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$h5BridgeContext:Liny;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$minDate:Ljava/util/Calendar;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$maxDate:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 18
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v15, "date"

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "date":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 227
    const-string/jumbo v3, ""

    .line 230
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "dateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    .line 234
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "HH:mm:ss"

    :goto_0
    invoke-static {v15, v5, v14}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v12

    .line 236
    .local v12, "selectedDate":Ljava/util/Calendar;
    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$h5BridgeContext:Liny;

    if-eqz v14, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$h5BridgeContext:Liny;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v16, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface/range {v14 .. v16}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 278
    :goto_1
    return-void

    .line 234
    .end local v12    # "selectedDate":Ljava/util/Calendar;
    :cond_1
    const-string/jumbo v14, "yyyy/MM/dd HH:mm:ss"

    goto :goto_0

    .line 241
    .restart local v12    # "selectedDate":Ljava/util/Calendar;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$minDate:Ljava/util/Calendar;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$minDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 242
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 243
    const-string/jumbo v14, "H5DatePlugin"

    const-string/jumbo v15, "set selected date as min date"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$minDate:Ljava/util/Calendar;

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$maxDate:Ljava/util/Calendar;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$maxDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 248
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    .line 249
    const-string/jumbo v14, "H5DatePlugin"

    const-string/jumbo v15, "set selected date as max date"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$maxDate:Ljava/util/Calendar;

    .line 252
    :cond_4
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$h5BridgeContext:Liny;

    if-eqz v14, :cond_5

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$h5BridgeContext:Liny;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v16, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface/range {v14 .. v16}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_1

    .line 257
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v4, "dateResult":Ljava/lang/StringBuilder;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 259
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 260
    .local v13, "year":I
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 261
    .local v10, "month":I
    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 262
    .local v6, "day":I
    add-int/lit8 v14, v10, 0x1

    const/16 v15, 0xa

    if-ge v14, v15, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, "monthStr":Ljava/lang/String;
    :goto_2
    const/16 v14, 0xa

    if-ge v6, v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "dayStr":Ljava/lang/String;
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .end local v6    # "day":I
    .end local v7    # "dayStr":Ljava/lang/String;
    .end local v10    # "month":I
    .end local v11    # "monthStr":Ljava/lang/String;
    .end local v13    # "year":I
    :cond_6
    const/16 v14, 0xb

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 269
    const/16 v14, 0xc

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 271
    const/16 v14, 0xa

    move/from16 v0, p2

    if-ge v0, v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, "hourStr":Ljava/lang/String;
    :goto_4
    const/16 v14, 0xa

    move/from16 v0, p3

    if-ge v0, v14, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "minuteStr":Ljava/lang/String;
    :goto_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v15, "date"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v14, "H5DatePlugin"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$h5BridgeContext:Liny;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v14, v15}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 262
    .end local v8    # "hourStr":Ljava/lang/String;
    .end local v9    # "minuteStr":Ljava/lang/String;
    .restart local v6    # "day":I
    .restart local v10    # "month":I
    .restart local v13    # "year":I
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 264
    .restart local v11    # "monthStr":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 271
    .end local v6    # "day":I
    .end local v10    # "month":I
    .end local v11    # "monthStr":Ljava/lang/String;
    .end local v13    # "year":I
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 272
    .restart local v8    # "hourStr":Ljava/lang/String;
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5
.end method
