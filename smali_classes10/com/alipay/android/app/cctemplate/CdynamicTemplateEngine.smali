.class public Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;
.super Ljava/lang/Object;
.source "CdynamicTemplateEngine.java"


# instance fields
.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

.field private oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

.field private tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 29
    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/transport/TemplateManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    return-object v0
.end method

.method private buildBirdParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "birdParams"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "CdynamicTemplateEngine::buildBirdParams"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ori birdParams:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object v0, p2

    .local v0, "result":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplManagerBirdParamsNull"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "birdParams is null. tplId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", birdParams="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-object v0
.end method

.method private buildServerTpl(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 6
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "birdParams"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    .line 119
    .local v0, "serverTpl":Lcom/alipay/android/app/cctemplate/model/Template;
    if-nez v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplManagerBirdParamsIllegal"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "birdParams is Illegal. tplId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", birdParams="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-object v0
.end method

.method private checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;)Z
    .locals 10
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "serverTpl"    # Lcom/alipay/android/app/cctemplate/model/Template;
    .param p3, "localTpl"    # Lcom/alipay/android/app/cctemplate/model/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    .local p4, "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    :try_start_0
    iget-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_2"

    const-string/jumbo v3, "serverTpl.data is not empty"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 164
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v8

    .line 165
    .local v8, "success":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "winName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, ""

    sget-object v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v3, v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    if-eqz v8, :cond_0

    const-string/jumbo v4, "T"

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "save serverTpl, result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v1    # "winName":Ljava/lang/String;
    .end local v8    # "success":Z
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 166
    .restart local v1    # "winName":Ljava/lang/String;
    .restart local v8    # "success":Z
    :cond_0
    const-string/jumbo v4, "F"

    goto :goto_0

    .line 168
    .end local v1    # "winName":Ljava/lang/String;
    .end local v8    # "success":Z
    :cond_1
    invoke-static {p2, p3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_2"

    const-string/jumbo v3, "need update serverTpl"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "birdParams":Ljava/lang/String;
    :goto_2
    sget-object v9, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 177
    .local v9, "ts":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
    invoke-static {p2, p3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->comparePublishVersion(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    sget-object v9, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 181
    :cond_2
    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    invoke-direct {v0, p1, v6, v9}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    .end local v6    # "birdParams":Ljava/lang/String;
    .end local v9    # "ts":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
    :catch_0
    move-exception v7

    .line 186
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplManagerCheckTpl_2_Ex"

    invoke-virtual {v0, v2, v3, v7}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 174
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "birdParams":Ljava/lang/String;
    goto :goto_2

    .line 183
    .end local v6    # "birdParams":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_2"

    const-string/jumbo v3, "don\'t need update serverTpl"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;)Z
    .locals 10
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "serverTpl"    # Lcom/alipay/android/app/cctemplate/model/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    .local p3, "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    const/4 v8, 0x1

    .line 130
    .local v8, "status":Z
    :try_start_0
    iget-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_1"

    const-string/jumbo v3, "serverTpl.data is not empty"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 133
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v9

    .line 134
    .local v9, "success":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-NULL-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "winName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, ""

    sget-object v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v3, v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    if-eqz v9, :cond_0

    const-string/jumbo v4, "T"

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "save serverTpl, result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v1    # "winName":Ljava/lang/String;
    .end local v9    # "success":Z
    :goto_1
    return v8

    .line 135
    .restart local v1    # "winName":Ljava/lang/String;
    .restart local v9    # "success":Z
    :cond_0
    const-string/jumbo v4, "F"

    goto :goto_0

    .line 137
    .end local v1    # "winName":Ljava/lang/String;
    .end local v9    # "success":Z
    :cond_1
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_1"

    const-string/jumbo v3, "need update serverTpl"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "birdParams":Ljava/lang/String;
    :goto_2
    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    invoke-direct {v0, p1, v6, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    .end local v6    # "birdParams":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 153
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplManagerCheckTpl_1_Ex"

    invoke-virtual {v0, v2, v3, v7}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    const/4 v8, 0x0

    goto :goto_1

    .line 144
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "birdParams":Ljava/lang/String;
    goto :goto_2

    .line 148
    .end local v6    # "birdParams":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v2, "CdynamicTemplateEngine::checkTplStatus_1"

    const-string/jumbo v3, "don\'t need update serverTpl"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isDeferDownload(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 34
    .local v0, "deferDownload":Z
    if-eqz p1, :cond_0

    const-string/jumbo v2, "opt_defer_download"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string/jumbo v2, "opt_defer_download"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "optionValue":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 37
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "optionValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 40
    :cond_0
    return v0
.end method


# virtual methods
.method public birdParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    .line 215
    .local v0, "tpl":Lcom/alipay/android/app/cctemplate/model/Template;
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .end local v0    # "tpl":Lcom/alipay/android/app/cctemplate/model/Template;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{\"tplVersion\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getBirdNestVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", \"platform\":\"android\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 2
    .param p1, "tplId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    .line 242
    .local v0, "newTemplate":Lcom/alipay/android/app/cctemplate/model/Template;
    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    .line 243
    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 4
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "loadRes"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "GetTemplate"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTplUpdated()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "isUpdated":Z
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    if-eqz v1, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    iget-object v1, v1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    iget-object v1, v1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 275
    const/4 v0, 0x1

    .line 278
    :cond_1
    return v0
.end method

.method public loadTemplates(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
    .locals 18
    .param p3, "transport"    # Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/android/app/cctemplate/api/ITplTransport;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "tpls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 48
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v13

    const-string/jumbo v14, "CdynamicTemplateEngine::handleBirdResponse"

    const-string/jumbo v15, "response is null or empty"

    invoke-virtual {v13, v14, v15}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v8, 0x0

    .line 100
    :cond_1
    return-object v8

    .line 52
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->isDeferDownload(Ljava/util/Map;)Z

    move-result v3

    .line 53
    .local v3, "deferDownload":Z
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v4, "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 57
    .local v11, "tpl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 58
    .local v12, "tplId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v13

    const-string/jumbo v15, "CdynamicTemplateEngine::handleBirdResponse"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "tplId:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 61
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v15

    const-string/jumbo v16, "CdynamicTemplateEngine::handleBirdResponse"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "tplId is null for "

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->buildBirdParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "birdParams":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->buildServerTpl(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v9

    .line 70
    .local v9, "serverTpl":Lcom/alipay/android/app/cctemplate/model/Template;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v13}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v7

    .line 73
    .local v7, "localTpl":Lcom/alipay/android/app/cctemplate/model/Template;
    if-nez v7, :cond_4

    .line 74
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9, v4}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;)Z

    move-result v10

    .line 79
    .local v10, "status":Z
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v13

    const-string/jumbo v15, "CdynamicTemplateEngine::handleBirdResponse"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "serverTpl: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " localTpl: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " status: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .end local v10    # "status":Z
    :cond_4
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    .line 77
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9, v7, v4}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;)Z

    move-result v10

    .restart local v10    # "status":Z
    goto :goto_1

    .line 84
    .end local v2    # "birdParams":Ljava/lang/String;
    .end local v7    # "localTpl":Lcom/alipay/android/app/cctemplate/model/Template;
    .end local v9    # "serverTpl":Lcom/alipay/android/app/cctemplate/model/Template;
    .end local v10    # "status":Z
    .end local v11    # "tpl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "tplId":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v5, "downloadStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 86
    if-eqz v3, :cond_9

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    move-object/from16 v0, p3

    invoke-virtual {v14, v13, v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplateCheckOverTime(Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;

    move-result-object v5

    .line 93
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 94
    .local v6, "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    iget-object v12, v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    .line 95
    .restart local v12    # "tplId":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v15, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v13, v15, :cond_8

    iget-object v13, v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v15, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-ne v13, v15, :cond_7

    .line 97
    :cond_8
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 89
    .end local v6    # "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    .end local v12    # "tplId":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v4, v0, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2
.end method

.method public readAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 1
    .param p1, "tpl"    # Lcom/alipay/android/app/cctemplate/model/Template;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v0

    return v0
.end method

.method public triggerTemplateUpdate(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 2
    .param p1, "transport"    # Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;-><init>(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method
