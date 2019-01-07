.class public Lcom/alipay/android/app/cctemplate/transport/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;,
        Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
    }
.end annotation


# static fields
.field private static cacheList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 62
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    .line 63
    return-void
.end method

.method private buildFetchParams(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    return-object v1

    .line 121
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 122
    .local v0, "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mBirdParam:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildTemplateLog(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "tpls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0xc8

    .line 303
    if-nez p1, :cond_0

    .line 304
    const-string/jumbo v3, ""

    .line 317
    :goto_0
    return-object v3

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v1, "traceLog":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    .local v0, "tpl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tplId="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 314
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "birdParams="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    .end local v0    # "tpl":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static comparePublishVersion(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 2
    .param p0, "tplServer"    # Lcom/alipay/android/app/cctemplate/model/Template;
    .param p1, "tplLocal"    # Lcom/alipay/android/app/cctemplate/model/Template;

    .prologue
    .line 476
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 477
    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private compareResAndReqTpl(Ljava/util/List;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 10
    .param p2, "tplServer"    # Lcom/alipay/android/app/cctemplate/model/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 248
    const/4 v3, 0x0

    .line 249
    .local v3, "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 250
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 251
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    iget-object v6, v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    iget-object v9, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    move-object v3, v0

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    if-nez v3, :cond_2

    move v6, v7

    .line 285
    .end local v2    # "i":I
    .end local v5    # "size":I
    :goto_1
    return v6

    .line 260
    .restart local v2    # "i":I
    .restart local v5    # "size":I
    :cond_2
    iget-object v6, v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    iget-object v9, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    .line 261
    goto :goto_1

    .line 264
    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    iget-object v6, v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mBirdParam:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 265
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "tplVersion"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 266
    const-string/jumbo v6, "tplVersion"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v8

    .line 267
    goto :goto_1

    .line 271
    :cond_4
    const-string/jumbo v6, "publishVersion"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 272
    const-string/jumbo v6, "publishVersion"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v8

    .line 273
    goto :goto_1

    .line 277
    :cond_5
    const-string/jumbo v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 278
    const-string/jumbo v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_6

    move v6, v8

    .line 279
    goto :goto_1

    .line 282
    .end local v2    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "size":I
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    move v6, v7

    .line 285
    goto :goto_1
.end method

.method static compareTemplateForUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 8
    .param p0, "tplRemote"    # Lcom/alipay/android/app/cctemplate/model/Template;
    .param p1, "tplLocal"    # Lcom/alipay/android/app/cctemplate/model/Template;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 483
    iget-object v6, p0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    .line 484
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 485
    .local v2, "samePublishVersion":Z
    :goto_0
    iget-object v6, p0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 486
    .local v3, "tplChange":I
    if-gtz v3, :cond_0

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    .line 489
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    :cond_0
    move v1, v4

    .line 490
    .local v1, "needUpdate":Z
    :goto_1
    const-string/jumbo v6, "\u670d\u52a1\u7aef\u53d1\u5e03\u7248\u672c\u4e0e\u672c\u5730\u4e0d\u4e00\u6837\u6216\u53d1\u5e03\u7248\u672c\u4e00\u6837time\u5347\u7ea7,\u66f4\u65b0:%s"

    new-array v7, v4, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string/jumbo v4, "YES"

    :goto_2
    aput-object v4, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "details":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "TemplateManager::compareTemplateForUpdate"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return v1

    .end local v0    # "details":Ljava/lang/String;
    .end local v1    # "needUpdate":Z
    .end local v2    # "samePublishVersion":Z
    .end local v3    # "tplChange":I
    :cond_1
    move v2, v5

    .line 484
    goto :goto_0

    .restart local v2    # "samePublishVersion":Z
    .restart local v3    # "tplChange":I
    :cond_2
    move v1, v5

    .line 489
    goto :goto_1

    .line 490
    .restart local v1    # "needUpdate":Z
    :cond_3
    const-string/jumbo v4, "NO"

    goto :goto_2
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "ver1"    # Ljava/lang/String;
    .param p1, "ver2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    .line 413
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v3

    .line 415
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    const/4 v3, 0x1

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 419
    const/4 v3, -0x1

    goto :goto_0

    .line 422
    :cond_3
    const-string/jumbo v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "ver1spilt":[Ljava/lang/String;
    const-string/jumbo v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "ver2spilt":[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v6, :cond_5

    array-length v4, v2

    if-ne v4, v6, :cond_5

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_0

    .line 428
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 429
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 427
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private createBirdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "tplVersion"    # Ljava/lang/String;
    .param p3, "publishVersion"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;
    .param p5, "uid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v0, "params":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v1, "\"tplId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string/jumbo v1, "\"tplVersion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v1, "\"publishVersion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v1, "\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string/jumbo v1, "\"platform\":\"android\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v1, "\"uid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private findTplStatus(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "tplId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    if-nez p2, :cond_0

    .line 290
    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    .line 299
    :goto_0
    return-object v2

    .line 292
    :cond_0
    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 293
    .local v1, "ts":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 294
    .local v0, "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    iget-object v1, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 299
    .end local v0    # "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    :cond_2
    iget-object v2, v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTemplateVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getBirdNestVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeDlResult(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 323
    .local v0, "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 325
    .end local v0    # "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    :cond_0
    return-object v1
.end method

.method private initializeTemplateInfo(Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v9, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;>;"
    if-nez p1, :cond_1

    .line 345
    :cond_0
    return-object v9

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v0}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/cctemplate/utils/NetworkUtils;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "netType":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 336
    .local v6, "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    iget-object v10, v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    .line 337
    .local v10, "tplId":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getLocalTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v7

    .line 338
    .local v7, "local":Lcom/alipay/android/app/cctemplate/model/Template;
    const-string/jumbo v8, "NULL"

    .line 339
    .local v8, "localVer":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v7, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 342
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "winName":Ljava/lang/String;
    new-instance v0, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;

    iget-object v3, v6, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v3, v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    const-string/jumbo v4, "F"

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 10
    .param p0, "templateServer"    # Lcom/alipay/android/app/cctemplate/model/Template;
    .param p1, "templateLocal"    # Lcom/alipay/android/app/cctemplate/model/Template;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 447
    if-nez p0, :cond_0

    .line 471
    :goto_0
    return v5

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 455
    .local v2, "remoteTplVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_1

    move v1, v4

    .line 457
    .local v1, "lowerEqualsCurrent":Z
    :goto_1
    const-string/jumbo v6, "5.0.0"

    invoke-static {v2, v6}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    move v0, v4

    .line 459
    .local v0, "largerThan5_0":Z
    :goto_2
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 460
    if-nez p1, :cond_3

    .line 461
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v5

    const-string/jumbo v6, "TemplateManager::whetherNeedUpdate"

    const-string/jumbo v7, "local template is null, need update"

    invoke-virtual {v5, v6, v7}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 462
    goto :goto_0

    .end local v0    # "largerThan5_0":Z
    .end local v1    # "lowerEqualsCurrent":Z
    :cond_1
    move v1, v5

    .line 455
    goto :goto_1

    .restart local v1    # "lowerEqualsCurrent":Z
    :cond_2
    move v0, v5

    .line 457
    goto :goto_2

    .line 464
    .restart local v0    # "largerThan5_0":Z
    :cond_3
    invoke-static {p0, p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareTemplateForUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v3

    .line 465
    .local v3, "update":Z
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "TemplateManager::whetherNeedUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "call compareTemplateForUpdate(...) result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    .line 466
    goto :goto_0

    .line 470
    .end local v3    # "update":Z
    :cond_4
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    const-string/jumbo v6, "template"

    const-string/jumbo v7, "TplManagerTplversionIllegal"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "remoteTplVersion is invalid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;
    .locals 6
    .param p1, "tpl"    # Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "uid":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadFromCacheList(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
    .locals 5
    .param p1, "transport"    # Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/cctemplate/api/ITplTransport;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 112
    :goto_0
    return-object v2

    .line 105
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    sget-object v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    monitor-enter v3

    .line 107
    :try_start_0
    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "tplId":Ljava/lang/String;
    sget-object v4, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v1    # "tplId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 110
    :cond_2
    :try_start_1
    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 111
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
    .locals 29
    .param p3, "transport"    # Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
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
    .line 159
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 243
    :cond_1
    return-object v10

    .line 163
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->initializeDlResult(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 164
    .local v10, "dlResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->initializeTemplateInfo(Ljava/util/List;)Ljava/util/Map;

    move-result-object v25

    .line 165
    .local v25, "traceTemplateInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;>;"
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->buildFetchParams(Ljava/util/List;)Ljava/util/Map;

    move-result-object v24

    .line 166
    .local v24, "tpls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 169
    .local v20, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/alipay/android/app/cctemplate/api/ITplTransport;->fetchTemplates(Ljava/util/Map;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 174
    :goto_0
    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v3}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/cctemplate/utils/NetworkUtils;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "netType":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_b

    .line 178
    :try_start_1
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v23

    .line 179
    .local v23, "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getLocalTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v22

    .line 181
    .local v22, "tplLocal":Lcom/alipay/android/app/cctemplate/model/Template;
    if-nez v22, :cond_5

    const-string/jumbo v14, "NULL"

    .line 182
    .local v14, "localVer":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 183
    .local v18, "serverVer":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "winName":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v16

    .line 188
    .local v16, "needUpdate":Z
    if-nez v22, :cond_6

    const/16 v17, 0x1

    .line 190
    .local v17, "noLocalTemplate":Z
    :goto_3
    const/4 v9, 0x1

    .line 191
    .local v9, "compareReqAndResTpl":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_3

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareResAndReqTpl(Ljava/util/List;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v9

    .line 196
    :cond_3
    if-eqz v9, :cond_8

    if-nez v16, :cond_4

    if-eqz v17, :cond_8

    .line 197
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v19

    .line 198
    .local v19, "success":Z
    if-eqz v19, :cond_7

    .line 199
    const-string/jumbo v7, "T"

    .line 206
    .local v7, "dlFlag":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v19    # "success":Z
    :goto_5
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->findTplStatus(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "dlType":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    move-object/from16 v26, v0

    new-instance v3, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .end local v4    # "winName":Ljava/lang/String;
    .end local v6    # "dlType":Ljava/lang/String;
    .end local v7    # "dlFlag":Ljava/lang/String;
    .end local v9    # "compareReqAndResTpl":Z
    .end local v14    # "localVer":Ljava/lang/String;
    .end local v16    # "needUpdate":Z
    .end local v17    # "noLocalTemplate":Z
    .end local v18    # "serverVer":Ljava/lang/String;
    .end local v22    # "tplLocal":Lcom/alipay/android/app/cctemplate/model/Template;
    .end local v23    # "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 170
    .end local v5    # "netType":Ljava/lang/String;
    .end local v12    # "i":I
    :catch_0
    move-exception v11

    .line 171
    .local v11, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v8, "template"

    const-string/jumbo v26, "TplDownloadEx"

    move-object/from16 v0, v26

    invoke-virtual {v3, v8, v0, v11}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 181
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v5    # "netType":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v22    # "tplLocal":Lcom/alipay/android/app/cctemplate/model/Template;
    .restart local v23    # "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 188
    .restart local v4    # "winName":Ljava/lang/String;
    .restart local v14    # "localVer":Ljava/lang/String;
    .restart local v16    # "needUpdate":Z
    .restart local v18    # "serverVer":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 202
    .restart local v9    # "compareReqAndResTpl":Z
    .restart local v17    # "noLocalTemplate":Z
    .restart local v19    # "success":Z
    :cond_7
    const-string/jumbo v7, "F"

    .line 203
    .restart local v7    # "dlFlag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tplId:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ",publishVersion:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ",tplVersion:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v8, "template"

    const-string/jumbo v26, "TplDownloadSaveFailed"

    move-object/from16 v0, v26

    invoke-virtual {v3, v8, v0, v15}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 220
    .end local v4    # "winName":Ljava/lang/String;
    .end local v7    # "dlFlag":Ljava/lang/String;
    .end local v9    # "compareReqAndResTpl":Z
    .end local v14    # "localVer":Ljava/lang/String;
    .end local v15    # "msg":Ljava/lang/String;
    .end local v16    # "needUpdate":Z
    .end local v17    # "noLocalTemplate":Z
    .end local v18    # "serverVer":Ljava/lang/String;
    .end local v19    # "success":Z
    .end local v22    # "tplLocal":Lcom/alipay/android/app/cctemplate/model/Template;
    .end local v23    # "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    :catch_1
    move-exception v11

    .line 221
    .restart local v11    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v8, "template"

    const-string/jumbo v26, "TplDownloadSaveEx"

    move-object/from16 v0, v26

    invoke-virtual {v3, v8, v0, v11}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 209
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v4    # "winName":Ljava/lang/String;
    .restart local v9    # "compareReqAndResTpl":Z
    .restart local v14    # "localVer":Ljava/lang/String;
    .restart local v16    # "needUpdate":Z
    .restart local v17    # "noLocalTemplate":Z
    .restart local v18    # "serverVer":Ljava/lang/String;
    .restart local v22    # "tplLocal":Lcom/alipay/android/app/cctemplate/model/Template;
    .restart local v23    # "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    :cond_8
    :try_start_3
    const-string/jumbo v7, "E"

    .line 210
    .restart local v7    # "dlFlag":Ljava/lang/String;
    if-nez v9, :cond_9

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "compareReqAndResTpl:falsetplId:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ",publishVersion:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ",tplVersion:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 212
    .restart local v15    # "msg":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v8, "template"

    const-string/jumbo v26, "TplDownloadSaveFailed"

    move-object/from16 v0, v26

    invoke-virtual {v3, v8, v0, v15}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v15    # "msg":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v8, "template"

    const-string/jumbo v26, "TplDownloadTemplateExist"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "needUpdate:"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ",noLocalTemplate:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v8, v0, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 226
    .end local v4    # "winName":Ljava/lang/String;
    .end local v5    # "netType":Ljava/lang/String;
    .end local v7    # "dlFlag":Ljava/lang/String;
    .end local v9    # "compareReqAndResTpl":Z
    .end local v12    # "i":I
    .end local v14    # "localVer":Ljava/lang/String;
    .end local v16    # "needUpdate":Z
    .end local v17    # "noLocalTemplate":Z
    .end local v18    # "serverVer":Ljava/lang/String;
    .end local v22    # "tplLocal":Lcom/alipay/android/app/cctemplate/model/Template;
    .end local v23    # "tplServer":Lcom/alipay/android/app/cctemplate/model/Template;
    :cond_a
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v8, "template"

    const-string/jumbo v26, "TplDownloadNull"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->buildTemplateLog(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v8, v0, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 230
    .local v21, "tplId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceTemplate(Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;)V

    goto :goto_7

    .line 233
    .end local v21    # "tplId":Ljava/lang/String;
    :cond_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 234
    .local v13, "item":Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    iget-object v3, v13, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 235
    iget-object v3, v13, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 236
    sget-object v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    iget-object v0, v13, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 238
    :cond_e
    sget-object v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    iget-object v0, v13, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v3, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public downloadTemplateCheckOverTime(Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
    .locals 8
    .param p1, "item"    # Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;
    .param p2, "transport"    # Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            "Lcom/alipay/android/app/cctemplate/api/ITplTransport;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v2, "resultStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v0}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/cctemplate/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v6

    .line 77
    .local v6, "networkType":I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_0

    .line 78
    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5}, Landroid/os/ConditionVariable;-><init>()V

    .line 79
    .local v5, "completed":Landroid/os/ConditionVariable;
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;-><init>(Lcom/alipay/android/app/cctemplate/transport/TemplateManager;Ljava/util/Map;Ljava/util/List;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Landroid/os/ConditionVariable;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 90
    const-wide/16 v0, 0xbb8

    invoke-virtual {v5, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    .line 97
    .end local v5    # "completed":Landroid/os/ConditionVariable;
    .end local v6    # "networkType":I
    :goto_0
    return-object v2

    .line 92
    .restart local v6    # "networkType":I
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->cacheList:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    .end local v6    # "networkType":I
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, p2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public getLocalTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 383
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->mStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    return-object v0
.end method

.method public getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "item":Lcom/alipay/android/app/cctemplate/model/Template;
    if-eqz p1, :cond_0

    .line 358
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 359
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v2, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-direct {v2}, Lcom/alipay/android/app/cctemplate/model/Template;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v1    # "item":Lcom/alipay/android/app/cctemplate/model/Template;
    .local v2, "item":Lcom/alipay/android/app/cctemplate/model/Template;
    :try_start_1
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 361
    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tag:Ljava/lang/String;

    .line 362
    const-string/jumbo v4, "time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    .line 363
    const-string/jumbo v4, "html"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->html:Ljava/lang/String;

    .line 364
    const-string/jumbo v4, "tplId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    .line 365
    const-string/jumbo v4, "format"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    .line 366
    const-string/jumbo v4, "tplVersion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 367
    const-string/jumbo v4, "publishVersion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 372
    .end local v2    # "item":Lcom/alipay/android/app/cctemplate/model/Template;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v1    # "item":Lcom/alipay/android/app/cctemplate/model/Template;
    :cond_0
    :goto_0
    return-object v1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "template"

    const-string/jumbo v6, "TplManagerParseFromJsonEx"

    invoke-virtual {v4, v5, v6, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "item":Lcom/alipay/android/app/cctemplate/model/Template;
    .restart local v2    # "item":Lcom/alipay/android/app/cctemplate/model/Template;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "item":Lcom/alipay/android/app/cctemplate/model/Template;
    .restart local v1    # "item":Lcom/alipay/android/app/cctemplate/model/Template;
    goto :goto_1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    const-string/jumbo v0, ""

    return-object v0
.end method
