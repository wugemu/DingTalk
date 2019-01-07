.class public final Lfyg$b;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfyg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 13
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 425
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    :cond_0
    const-string/jumbo v0, "AppMonitorDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "module & monitorPoint must not null"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v2, p0, p1}, Lalm;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    sget-object v0, Lfyg;->c:Lalo;

    sget v2, Laln;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v4}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v2

    invoke-virtual {v0, v2}, Lalo;->a(Laln;)V

    .line 432
    :cond_2
    sget-boolean v0, Lfyg;->b:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lajw;->l()Z

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lfyg;->a:Z

    if-nez v0, :cond_3

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v2, p0, p1}, Lfzf;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 435
    :cond_3
    const-string/jumbo v0, "commitCount"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "module"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "monitorPoint"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "args"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v2, p0, p1}, Lfzf;->b(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1305
    iget-object v10, v0, Lajw;->c:Landroid/content/Context;

    .line 438
    .local v10, "context":Landroid/content/Context;
    move-object v1, p0

    .line 439
    .local v1, "offlineModule":Ljava/lang/String;
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v2, p0, p1}, Lalm;->b(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_abtest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 441
    .end local v1    # "offlineModule":Ljava/lang/String;
    .local v11, "offlineModule":Ljava/lang/String;
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v1

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    move-object v1, v11

    .line 443
    .end local v11    # "offlineModule":Ljava/lang/String;
    .restart local v1    # "offlineModule":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lfyz;->d()Lfyz;

    move-result-object v8

    sget-object v9, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    new-instance v0, Lfyx;

    invoke-static {v10}, Lalg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10}, Lalg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lfyx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Lfyz;->a(Lcom/alibaba/appmonitor/event/EventType;Lfyy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 451
    .end local v1    # "offlineModule":Ljava/lang/String;
    .end local v10    # "context":Landroid/content/Context;
    :catch_0
    move-exception v12

    .line 452
    .local v12, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v0, v12}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 445
    .end local v12    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v3

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v4

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 449
    :cond_6
    const-string/jumbo v0, "log discard !"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "module"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "monitorPoint"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "args"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
