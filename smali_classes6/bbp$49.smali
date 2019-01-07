.class final Lbbp$49;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 392
    iput-object p1, p0, Lbbp$49;->b:Lbbp;

    iput-object p2, p0, Lbbp$49;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v14, 0x2

    const-wide/16 v12, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 395
    iget-object v1, p0, Lbbp$49;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1654
    if-eqz v1, :cond_0

    .line 1657
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->fromValue(J)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v0

    .line 1658
    sget-object v2, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->DO_NOT_REMIND:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    if-eq v0, v2, :cond_0

    .line 1663
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    invoke-static {}, Lbbv;->a()Lbbv;

    sget-object v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_TASK_REMIND:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lbbv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;I)V

    .line 1668
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 2203
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 3109
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2203
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2206
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2209
    invoke-static {v1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2213
    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2215
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    new-instance v3, Lbjw$5;

    invoke-direct {v3, v0, v1}, Lbjw$5;-><init>(Lbjw;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v2, v4, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 2255
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v2

    const-wide/16 v6, 0x5a0

    div-long/2addr v2, v6

    .line 2256
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    .line 2257
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v8

    .line 2258
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v10

    .line 2260
    if-lez v10, :cond_6

    .line 2261
    cmp-long v11, v2, v12

    if-ltz v11, :cond_3

    .line 2262
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Laxp$i;->dt_ding_task_remind_at_at_sender_day:I

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2281
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2283
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 2284
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v6, Laxp$i;->app_name:I

    invoke-virtual {v2, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2282
    invoke-virtual/range {v0 .. v5}, Lbjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2263
    :cond_3
    cmp-long v2, v6, v12

    if-ltz v2, :cond_4

    .line 2264
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_task_remind_at_at_sender_hour:I

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-virtual {v2, v3, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2265
    :cond_4
    cmp-long v2, v8, v12

    if-ltz v2, :cond_5

    .line 2266
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_task_remind_at_at_sender_min:I

    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2268
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_task_remind_sender_right_now_at:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v3, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2271
    :cond_6
    cmp-long v10, v2, v12

    if-ltz v10, :cond_7

    .line 2272
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_day:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2273
    :cond_7
    cmp-long v2, v6, v12

    if-ltz v2, :cond_8

    .line 2274
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_hour:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-virtual {v2, v3, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2275
    :cond_8
    cmp-long v2, v8, v12

    if-ltz v2, :cond_9

    .line 2276
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_task_remind_at_at_sender_all_completed_min:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v3, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2278
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_task_remind_sender_all_completed_right_now_at:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method
