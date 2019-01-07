.class public Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;
.super Ljava/lang/Object;
.source "TemplateCandidate.java"


# static fields
.field private static sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;
    .param p1, "x1"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->syncCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    return-void
.end method

.method public static instance()Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    invoke-direct {v0}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    .line 35
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    return-object v0
.end method

.method private syncCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 14
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "last_candidate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/alipay/android/app/cctemplate/storage/TemplateSetting;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    .line 58
    .local v1, "lastCandidateTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 59
    .local v6, "timespan":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 60
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v10

    const-string/jumbo v11, "TemplateCandidate::syncCandidate"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u8ddd\u79bb\u6a21\u677f\u8865\u507f\u65f6\u95f4\u4e0d\u523024h\uff0c\u4e0a\u6b21\u65f6\u95f4\uff1a"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v10

    const-string/jumbo v11, "TemplateCandidate::syncCandidate"

    const-string/jumbo v12, "start"

    invoke-virtual {v10, v11, v12}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v10

    const-string/jumbo v11, "template"

    const-string/jumbo v12, "TplCandidateCount"

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    .line 68
    .local v0, "engine":Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getWalletTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v9

    .line 70
    .local v9, "transport":Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/alipay/android/app/cctemplate/api/ITplTransport;->querySyncTpls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 71
    .local v4, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 72
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v10

    const-string/jumbo v11, "TemplateCandidate::syncCandidate"

    const-string/jumbo v12, "templateList is null"

    invoke-virtual {v10, v11, v12}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v5, "templates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    .local v7, "tplJson":Ljava/lang/String;
    :try_start_0
    const-class v11, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-static {v7, v11}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/android/app/cctemplate/model/Template;

    .line 80
    .local v8, "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    iget-object v11, v8, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-interface {v5, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    .end local v8    # "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    :catch_0
    move-exception v3

    .line 82
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v11

    const-string/jumbo v12, "template"

    const-string/jumbo v13, "TplCandidateTplsParseEx"

    invoke-virtual {v11, v12, v13, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v7    # "tplJson":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v10, "opt_sync_candidate"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, v5, v2, v9}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->loadTemplates(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;

    .line 92
    .end local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "last_candidate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/alipay/android/app/cctemplate/storage/TemplateSetting;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public syncTplsCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 2
    .param p1, "context"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;-><init>(Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method
