.class final Lbbp$53;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
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
    .line 431
    iput-object p1, p0, Lbbp$53;->b:Lbbp;

    iput-object p2, p0, Lbbp$53;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v12, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 434
    iget-object v2, p0, Lbbp$53;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1731
    if-eqz v2, :cond_0

    .line 1734
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v0

    .line 1735
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    if-eq v0, v1, :cond_0

    .line 1739
    invoke-static {}, Lbbv;->a()Lbbv;

    sget-object v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_MEETING_REMIND:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    const/4 v1, 0x4

    invoke-static {v2, v0, v1}, Lbbv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;I)V

    .line 1740
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 2296
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 3109
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2296
    invoke-static {v6, v7}, Lbkh;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2315
    :cond_0
    :goto_0
    return-void

    .line 2299
    :cond_1
    invoke-static {v2}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3824
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v1}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2303
    instance-of v3, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v3, :cond_2

    .line 2304
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "ding is meeting but biz extension error"

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2307
    :cond_2
    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    invoke-static {v1}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v1

    .line 2308
    if-nez v1, :cond_3

    .line 2309
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "ding is meeting but biz extension error"

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2313
    :cond_3
    invoke-static {v2}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2315
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    new-instance v3, Lbjw$6;

    invoke-direct {v3, v0, v2}, Lbjw$6;-><init>(Lbjw;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v1, v4, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 2355
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v6

    const-wide/16 v8, 0x5a0

    div-long/2addr v6, v8

    .line 2356
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    .line 2357
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v10

    .line 2359
    cmp-long v1, v6, v12

    if-ltz v1, :cond_5

    .line 2360
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxp$i;->dt_ding_conference_remind_at_at_sender_day:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-virtual {v1, v3, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2368
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2370
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 2371
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v6, Laxp$i;->app_name:I

    invoke-virtual {v2, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2369
    invoke-virtual/range {v0 .. v5}, Lbjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2361
    :cond_5
    cmp-long v1, v8, v12

    if-ltz v1, :cond_6

    .line 2362
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxp$i;->dt_ding_conference_remind_at_at_sender_hour:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2363
    :cond_6
    cmp-long v1, v10, v12

    if-ltz v1, :cond_7

    .line 2364
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxp$i;->dt_ding_conference_remind_at_at_sender_min:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2366
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxp$i;->dt_ding_conference_remind_sender_right_now_at:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
