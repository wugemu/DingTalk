.class final Lbbt$7;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;JI)V
    .locals 1
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 207
    iput-object p1, p0, Lbbt$7;->d:Lbbt;

    iput-object p2, p0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-wide p3, p0, Lbbt$7;->b:J

    iput p5, p0, Lbbt$7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 211
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lbbt$7;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lbbr;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "DingFloatWindowCenter middle cache match. dingId="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v3, "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    .line 225
    :cond_1
    :goto_1
    new-instance v2, Lcjs$a;

    move-object/from16 v0, p0

    iget v4, v0, Lbbt$7;->c:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 226
    .local v2, "builder":Lcjs$a;
    new-instance v4, Lbbt$7$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lbbt$7$1;-><init>(Lbbt$7;)V

    .line 1081
    iput-object v4, v2, Lcjs$a;->a:Lcjs$b;

    .line 253
    move-object/from16 v0, p0

    iget-object v6, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object/from16 v0, p0

    iget v4, v0, Lbbt$7;->c:I

    .line 1194
    if-nez v6, :cond_4

    .line 1195
    const/4 v4, 0x0

    .line 11086
    :goto_2
    iput-object v4, v2, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 255
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v4

    invoke-virtual {v2}, Lcjs$a;->a()Lcjs;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcjq;->a(Lcjs;)V

    goto :goto_0

    .line 219
    .end local v2    # "builder":Lcjs$a;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 220
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    goto :goto_1

    .line 221
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lbbt$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    goto :goto_1

    .line 1197
    .restart local v2    # "builder":Lcjs$a;
    :cond_4
    new-instance v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 1199
    invoke-static {v5, v6}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1201
    invoke-static {v6}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v6}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1312
    if-eqz v6, :cond_5

    .line 1315
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1316
    new-instance v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 1317
    invoke-static {v8}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v9

    .line 2051
    iput-object v9, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 1318
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    iput-object v9, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 1321
    new-instance v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 1322
    new-instance v10, Landroid/text/SpannableString;

    sget v11, Laxp$i;->dt_ding_meeting_accept:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2191
    iput-object v10, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 1323
    sget-object v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 2207
    iput-object v10, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 1324
    new-instance v10, Lbkv$20;

    invoke-direct {v10, v6}, Lbkv$20;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 3199
    iput-object v10, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 1336
    new-instance v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 1337
    new-instance v11, Landroid/text/SpannableString;

    sget v12, Laxp$i;->dt_ding_meeting_accept:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4191
    iput-object v11, v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 1338
    sget-object v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 4207
    iput-object v7, v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 1339
    new-instance v7, Lbkv$21;

    invoke-direct {v7, v6, v4}, Lbkv$21;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    .line 5199
    iput-object v7, v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 1347
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5352
    :cond_5
    :goto_3
    if-eqz v6, :cond_8

    .line 5355
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 5356
    new-instance v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 5357
    invoke-static {v8}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 6043
    iput-object v4, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 5359
    invoke-static {v6}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5360
    invoke-static {v6}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5361
    new-instance v4, Lcrm;

    invoke-direct {v4}, Lcrm;-><init>()V

    .line 6123
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 5363
    new-instance v9, Lbkv$22;

    invoke-direct {v9, v6, v7}, Lbkv$22;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/content/res/Resources;)V

    .line 7040
    iput-object v9, v4, Lcrm;->c:Lcrl;

    .line 5499
    :cond_6
    :goto_4
    new-instance v4, Landroid/text/SpannableString;

    invoke-static {v6}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9131
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 5502
    invoke-static {v6}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5504
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-lez v4, :cond_7

    .line 5505
    new-instance v4, Landroid/text/SpannableString;

    sget v9, Laxp$i;->dt_ding_item_deadline_at:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9139
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 5520
    :cond_7
    :goto_5
    new-instance v4, Lbkv$2;

    invoke-direct {v4, v6}, Lbkv$2;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 10155
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    :cond_8
    move-object v4, v5

    .line 1208
    goto/16 :goto_2

    .line 1204
    :cond_9
    const/4 v4, 0x0

    invoke-static {v5, v6, v4}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    goto :goto_3

    .line 5408
    :cond_a
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v10

    const-wide/16 v12, 0x5a0

    div-long/2addr v10, v12

    .line 5409
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    .line 5410
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v14

    .line 5411
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v4

    .line 5412
    if-lez v4, :cond_e

    .line 5413
    const-wide/16 v16, 0x1

    cmp-long v9, v10, v16

    if-ltz v9, :cond_b

    .line 5414
    sget v9, Laxp$i;->dt_ding_task_remind_at_at_sender_day:I

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v13

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v10

    invoke-virtual {v7, v9, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5433
    :goto_6
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v9}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 7123
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    goto/16 :goto_4

    .line 5415
    :cond_b
    const-wide/16 v10, 0x1

    cmp-long v9, v12, v10

    if-ltz v9, :cond_c

    .line 5416
    sget v9, Laxp$i;->dt_ding_task_remind_at_at_sender_hour:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 5417
    :cond_c
    const-wide/16 v10, 0x1

    cmp-long v9, v14, v10

    if-ltz v9, :cond_d

    .line 5418
    sget v9, Laxp$i;->dt_ding_task_remind_at_at_sender_min:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 5420
    :cond_d
    sget v9, Laxp$i;->dt_ding_task_remind_sender_right_now_at:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 5423
    :cond_e
    const-wide/16 v16, 0x1

    cmp-long v4, v10, v16

    if-ltz v4, :cond_f

    .line 5424
    sget v4, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_day:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 5425
    :cond_f
    const-wide/16 v10, 0x1

    cmp-long v4, v12, v10

    if-ltz v4, :cond_10

    .line 5426
    sget v4, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_hour:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 5427
    :cond_10
    const-wide/16 v10, 0x1

    cmp-long v4, v14, v10

    if-ltz v4, :cond_11

    .line 5428
    sget v4, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_min:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 5430
    :cond_11
    sget v4, Laxp$i;->dt_ding_task_remind_sender_all_completed_right_now_at:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 5435
    :cond_12
    invoke-static {v6}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5436
    invoke-static {v6}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5437
    new-instance v4, Lcrm;

    invoke-direct {v4}, Lcrm;-><init>()V

    .line 8123
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 5439
    new-instance v9, Lbkv$23;

    invoke-direct {v9, v6, v7}, Lbkv$23;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/content/res/Resources;)V

    .line 9040
    iput-object v9, v4, Lcrm;->c:Lcrl;

    goto/16 :goto_4

    .line 5483
    :cond_13
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v10

    const-wide/16 v12, 0x5a0

    div-long/2addr v10, v12

    .line 5484
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    .line 5485
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v14

    .line 5486
    const-wide/16 v16, 0x1

    cmp-long v4, v10, v16

    if-ltz v4, :cond_14

    .line 5487
    sget v4, Laxp$i;->dt_ding_conference_remind_at_at_sender_day:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5495
    :goto_7
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v9}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 9123
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    goto/16 :goto_4

    .line 5488
    :cond_14
    const-wide/16 v10, 0x1

    cmp-long v4, v12, v10

    if-ltz v4, :cond_15

    .line 5489
    sget v4, Laxp$i;->dt_ding_conference_remind_at_at_sender_hour:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 5490
    :cond_15
    const-wide/16 v10, 0x1

    cmp-long v4, v14, v10

    if-ltz v4, :cond_16

    .line 5491
    sget v4, Laxp$i;->dt_ding_conference_remind_at_at_sender_min:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 5493
    :cond_16
    sget v4, Laxp$i;->dt_ding_conference_remind_sender_right_now_at:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 5507
    :cond_17
    invoke-static {v6}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5509
    new-instance v4, Landroid/text/SpannableString;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    sget v11, Laxp$i;->dt_ding_meeting_time_prefix:I

    .line 5510
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 5511
    invoke-static {v6}, Lbkh;->I(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v12

    invoke-static {v6}, Lbkh;->J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 5509
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10139
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 5513
    invoke-static {v6}, Lbkh;->K(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v4

    .line 5514
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 5515
    new-instance v9, Landroid/text/SpannableString;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    sget v12, Laxp$i;->dt_ding_meeting_location_prefix:I

    .line 5516
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v4, v10, v7

    .line 5515
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10147
    iput-object v9, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    goto/16 :goto_5
.end method
