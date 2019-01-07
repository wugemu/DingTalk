.class public final Lfyg$a;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfyg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 287
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    const-string/jumbo v0, "AppMonitorDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "module & monitorPoint must not null"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v2, p0, p1}, Lalm;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Lfyg;->c:Lalo;

    sget v2, Laln;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

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

    .line 294
    :cond_2
    sget-boolean v0, Lfyg;->b:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lajw;->l()Z

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lfyg;->a:Z

    if-nez v0, :cond_3

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, p1, v2, v3}, Lfzf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    :cond_3
    const-string/jumbo v0, "commitSuccess"

    const/4 v2, 0x6

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

    const-string/jumbo v4, "arg"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v2, p0, p1}, Lfzf;->b(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1305
    iget-object v9, v0, Lajw;->c:Landroid/content/Context;

    .line 299
    .local v9, "context":Landroid/content/Context;
    move-object v1, p0

    .line 300
    .local v1, "offlineModule":Ljava/lang/String;
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v2, p0, p1}, Lalm;->b(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_abtest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v2

    invoke-virtual {v0, v2, p0, p1, p2}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_4
    invoke-static {}, Lfyz;->d()Lfyz;

    move-result-object v11

    sget-object v12, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    new-instance v0, Lfyw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v9}, Lalg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Lalg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lfyw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Lfyz;->a(Lcom/alibaba/appmonitor/event/EventType;Lfyy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 311
    .end local v1    # "offlineModule":Ljava/lang/String;
    .end local v9    # "context":Landroid/content/Context;
    :catch_0
    move-exception v10

    .line 312
    .local v10, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v0, v10}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 306
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v0

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v2

    invoke-virtual {v0, v2, p0, p1, p2}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_6
    const-string/jumbo v0, "log discard !"

    const/4 v2, 0x6

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

    const-string/jumbo v4, "arg"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 341
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_0
    const-string/jumbo v2, "AppMonitorDelegate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "module & monitorPoint must not null"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v2

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v4, v0, v1}, Lalm;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    sget-object v2, Lfyg;->c:Lalo;

    sget v4, Laln;->a:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5, v6}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v4

    invoke-virtual {v2, v4}, Lalo;->a(Laln;)V

    .line 348
    :cond_2
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v12, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "_status"

    const-string/jumbo v4, "0"

    invoke-interface {v12, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-boolean v2, Lfyg;->b:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lajw;->l()Z

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lfyg;->a:Z

    if-nez v2, :cond_3

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v4, v12}, Lfzf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 352
    :cond_3
    const-string/jumbo v2, "commitFail "

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "module"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "monitorPoint"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "errorCode:"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p3, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "errorMsg:"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p4, v4, v5

    invoke-static {v2, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v2

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v4, v0, v1}, Lfzf;->b(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    move-object/from16 v3, p0

    .line 355
    .local v3, "offlineModule":Ljava/lang/String;
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v2

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v4, v0, v1}, Lalm;->b(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_abtest"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 357
    .end local v3    # "offlineModule":Ljava/lang/String;
    .local v13, "offlineModule":Ljava/lang/String;
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v2

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v4}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v13

    .line 359
    .end local v13    # "offlineModule":Ljava/lang/String;
    .restart local v3    # "offlineModule":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 2305
    iget-object v11, v2, Lajw;->c:Landroid/content/Context;

    .line 360
    .local v11, "context":Landroid/content/Context;
    invoke-static {}, Lfyz;->d()Lfyz;

    move-result-object v15

    sget-object v16, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    new-instance v2, Lfyw;

    const/4 v8, 0x0

    invoke-static {v11}, Lalg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11}, Lalg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v10}, Lfyw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lfyz;->a(Lcom/alibaba/appmonitor/event/EventType;Lfyy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 368
    .end local v3    # "offlineModule":Ljava/lang/String;
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v14

    .line 369
    .local v14, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v2, v14}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 363
    .end local v14    # "t":Ljava/lang/Throwable;
    .restart local v12    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v4

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v5

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_6
    const-string/jumbo v2, "log discard !"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "module"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "monitorPoint"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "errorCode:"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p3, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "errorMsg:"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p4, v4, v5

    invoke-static {v2, v4}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
