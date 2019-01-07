.class final Lbbu$9$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "DingPopWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbu$9;


# direct methods
.method constructor <init>(Lbbu$9;)V
    .locals 0
    .param p1, "this$1"    # Lbbu$9;

    .prologue
    .line 248
    iput-object p1, p0, Lbbu$9$1;->a:Lbbu$9;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 267
    move-object/from16 v0, p2

    instance-of v2, v0, Lcrn;

    if-nez v2, :cond_0

    .line 268
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object/from16 v2, p2

    .line 271
    check-cast v2, Lcrn;

    .line 1028
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcri;->b:Z

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v2, v2, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    const/4 v2, 0x0

    invoke-static {v2}, Lbjz;->d(Z)V

    move-object/from16 v2, p2

    .line 274
    check-cast v2, Lcrn;

    const/4 v3, 0x3

    .line 1108
    iput v3, v2, Lcrn;->c:I

    :cond_1
    :goto_0
    move-object/from16 v2, p2

    .line 283
    check-cast v2, Lcrn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v5, v3, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v3, v3, Lbbu$9;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 3184
    if-nez v5, :cond_4

    .line 3185
    const/4 v3, 0x0

    .line 283
    :goto_1
    invoke-virtual {v2, v3}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 284
    return-object p2

    .line 275
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v2, v2, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    const/4 v2, 0x0

    invoke-static {v2}, Lbjz;->h(Z)V

    move-object/from16 v2, p2

    .line 277
    check-cast v2, Lcrn;

    const/4 v3, 0x1

    .line 2108
    iput v3, v2, Lcrn;->c:I

    goto :goto_0

    .line 278
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v2, v2, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    const/4 v2, 0x0

    invoke-static {v2}, Lbjz;->f(Z)V

    move-object/from16 v2, p2

    .line 280
    check-cast v2, Lcrn;

    const/4 v3, 0x1

    .line 3108
    iput v3, v2, Lcrn;->c:I

    goto :goto_0

    .line 3187
    :cond_4
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 3189
    invoke-static {v4, v5}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 3191
    invoke-static {v5}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v5}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3303
    if-eqz p1, :cond_5

    if-nez v5, :cond_9

    .line 7348
    :cond_5
    :goto_2
    if-eqz v5, :cond_8

    .line 7351
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 7352
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 7353
    invoke-static {v7}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 8040
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 7355
    invoke-static {v5}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 7356
    invoke-static {v5}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7357
    new-instance v3, Lcrm;

    invoke-direct {v3}, Lcrm;-><init>()V

    .line 8128
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 7359
    new-instance v8, Lbky$18;

    invoke-direct {v8, v5, v6}, Lbky$18;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/content/res/Resources;)V

    .line 9040
    iput-object v8, v3, Lcrm;->c:Lcrl;

    .line 7495
    :cond_6
    :goto_3
    new-instance v3, Landroid/text/SpannableString;

    invoke-static {v5}, Lbky;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11136
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 7498
    invoke-static {v5}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7500
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_7

    .line 7501
    new-instance v3, Landroid/text/SpannableString;

    sget v8, Laxp$i;->dt_ding_item_deadline_at:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v12

    const/4 v11, 0x0

    invoke-static {v12, v13, v11}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11144
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 7516
    :cond_7
    :goto_4
    new-instance v3, Lbky$2;

    move-object/from16 v0, p1

    invoke-direct {v3, v5, v0}, Lbky$2;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/app/Activity;)V

    .line 12160
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    :cond_8
    move-object v3, v4

    .line 3198
    goto/16 :goto_1

    .line 3306
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3307
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 3308
    invoke-static {v7}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v8

    .line 4048
    iput-object v8, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 3309
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4173
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 3312
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 3313
    new-instance v9, Landroid/text/SpannableString;

    sget v10, Laxp$i;->dt_ding_meeting_accept:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4196
    iput-object v9, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 3314
    sget-object v9, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 4212
    iput-object v9, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 3315
    new-instance v9, Lbky$16;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5}, Lbky$16;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 5204
    iput-object v9, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 3323
    new-instance v9, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 3324
    new-instance v10, Landroid/text/SpannableString;

    sget v11, Laxp$i;->dt_ding_meeting_accept:I

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6196
    iput-object v10, v9, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 3325
    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 6212
    iput-object v6, v9, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 6220
    const/4 v6, 0x0

    iput-boolean v6, v9, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->d:Z

    .line 3327
    new-instance v6, Lbky$17;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v5, v3}, Lbky$17;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;)V

    .line 7204
    iput-object v6, v9, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 3343
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3344
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3194
    :cond_a
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7404
    :cond_b
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v8

    const-wide/16 v10, 0x5a0

    div-long/2addr v8, v10

    .line 7405
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    .line 7406
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v12

    .line 7407
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v3

    .line 7408
    if-lez v3, :cond_f

    .line 7409
    const-wide/16 v14, 0x1

    cmp-long v14, v8, v14

    if-ltz v14, :cond_c

    .line 7410
    sget v10, Laxp$i;->dt_ding_task_remind_at_at_sender_day:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v8

    invoke-virtual {v6, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7429
    :goto_5
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 9128
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    goto/16 :goto_3

    .line 7411
    :cond_c
    const-wide/16 v8, 0x1

    cmp-long v8, v10, v8

    if-ltz v8, :cond_d

    .line 7412
    sget v8, Laxp$i;->dt_ding_task_remind_at_at_sender_hour:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 7413
    :cond_d
    const-wide/16 v8, 0x1

    cmp-long v8, v12, v8

    if-ltz v8, :cond_e

    .line 7414
    sget v8, Laxp$i;->dt_ding_task_remind_at_at_sender_min:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 7416
    :cond_e
    sget v8, Laxp$i;->dt_ding_task_remind_sender_right_now_at:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 7419
    :cond_f
    const-wide/16 v14, 0x1

    cmp-long v3, v8, v14

    if-ltz v3, :cond_10

    .line 7420
    sget v3, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_day:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-virtual {v6, v3, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 7421
    :cond_10
    const-wide/16 v8, 0x1

    cmp-long v3, v10, v8

    if-ltz v3, :cond_11

    .line 7422
    sget v3, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_hour:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 7423
    :cond_11
    const-wide/16 v8, 0x1

    cmp-long v3, v12, v8

    if-ltz v3, :cond_12

    .line 7424
    sget v3, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_min:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 7426
    :cond_12
    sget v3, Laxp$i;->dt_ding_task_remind_sender_all_completed_right_now_at:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 7431
    :cond_13
    invoke-static {v5}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7432
    invoke-static {v5}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7433
    new-instance v3, Lcrm;

    invoke-direct {v3}, Lcrm;-><init>()V

    .line 10128
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 7435
    new-instance v8, Lbky$19;

    invoke-direct {v8, v5, v6}, Lbky$19;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/content/res/Resources;)V

    .line 11040
    iput-object v8, v3, Lcrm;->c:Lcrl;

    goto/16 :goto_3

    .line 7479
    :cond_14
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v8

    const-wide/16 v10, 0x5a0

    div-long/2addr v8, v10

    .line 7480
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    .line 7481
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v12

    .line 7482
    const-wide/16 v14, 0x1

    cmp-long v3, v8, v14

    if-ltz v3, :cond_15

    .line 7483
    sget v3, Laxp$i;->dt_ding_conference_remind_at_at_sender_day:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-virtual {v6, v3, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7491
    :goto_6
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 11128
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    goto/16 :goto_3

    .line 7484
    :cond_15
    const-wide/16 v8, 0x1

    cmp-long v3, v10, v8

    if-ltz v3, :cond_16

    .line 7485
    sget v3, Laxp$i;->dt_ding_conference_remind_at_at_sender_hour:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 7486
    :cond_16
    const-wide/16 v8, 0x1

    cmp-long v3, v12, v8

    if-ltz v3, :cond_17

    .line 7487
    sget v3, Laxp$i;->dt_ding_conference_remind_at_at_sender_min:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 7489
    :cond_17
    sget v3, Laxp$i;->dt_ding_conference_remind_sender_right_now_at:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 7503
    :cond_18
    invoke-static {v5}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7505
    new-instance v3, Landroid/text/SpannableString;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget v10, Laxp$i;->dt_ding_meeting_time_prefix:I

    .line 7506
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 7507
    invoke-static {v5}, Lbkh;->I(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v10

    invoke-static {v5}, Lbkh;->J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 7505
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12144
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 7509
    invoke-static {v5}, Lbkh;->K(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v3

    .line 7510
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 7511
    new-instance v8, Landroid/text/SpannableString;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    sget v11, Laxp$i;->dt_ding_meeting_location_prefix:I

    .line 7512
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v3, v9, v6

    .line 7511
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12152
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    goto/16 :goto_4
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 292
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 257
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v2

    iget-object v3, p0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v3, v3, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v4, p0, Lbbu$9$1;->a:Lbbu$9;

    iget-wide v4, v4, Lbbu$9;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lbbr;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "DingPopWindowCenter after cache match. dingId="

    aput-object v3, v2, v0

    iget-object v3, p0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v3, v3, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbbu$9$1;->a:Lbbu$9;

    iget-object v3, v3, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "popWindow"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method
