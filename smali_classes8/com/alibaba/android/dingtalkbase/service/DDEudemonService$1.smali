.class final Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;
.super Ljava/lang/Object;
.source "DDEudemonService.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->b:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundSample()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 77
    :try_start_0
    const-string/jumbo v10, "dingtalkbase"

    const-string/jumbo v11, ""

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "DDEudemonService onBackgroundSample ="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->b:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    .line 78
    invoke-static {v14}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->a(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, " "

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v14}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v10, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->b:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-static {v10}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->a(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    .local v2, "currentTime":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 85
    const/16 v10, 0xb

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 86
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 87
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 88
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 90
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 92
    .local v8, "zeroHour":J
    const/16 v10, 0xb

    const/4 v11, 0x5

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 95
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 99
    .local v4, "fiveHour":J
    cmp-long v10, v2, v8

    if-ltz v10, :cond_0

    cmp-long v10, v2, v4

    if-gtz v10, :cond_0

    .line 100
    iget-object v10, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->b:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-static {v10}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->b(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)Z

    move-result v1

    .line 102
    .local v1, "isMemHigh":Z
    const-string/jumbo v10, "dingtalkbase"

    const-string/jumbo v11, ""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "DDEudemonService isMemHigh ="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 102
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz v1, :cond_0

    .line 107
    new-instance v6, Landroid/content/Intent;

    iget-object v10, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->b:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    const-class v11, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v6, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v10, "resume_service_command"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string/jumbo v10, "dingtalkbase"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "DDEudemonService to launcher"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1$1;

    invoke-direct {v11, p0, v6}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1$1;-><init>(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;Landroid/content/Intent;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "isMemHigh":Z
    .end local v2    # "currentTime":J
    .end local v4    # "fiveHour":J
    .end local v6    # "serviceIntent":Landroid/content/Intent;
    .end local v8    # "zeroHour":J
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v7

    .line 126
    .local v7, "t":Ljava/lang/Throwable;
    sget v10, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 127
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method public final onEnterBackground()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    const-string/jumbo v0, "dingtalkbase"

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "DDEudemonService onEnterBackground"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v4}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final onEnterForeground()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    const-string/jumbo v0, "dingtalkbase"

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "DDEudemonService onEnterForeground "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v4}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final onForegroundSample()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
