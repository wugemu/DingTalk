.class public Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    }
.end annotation


# static fields
.field private static final AVG_BYTES_PER_CHAR:I = 0x3

.field private static final cacheSize:I

.field private static final maxMemory:I

.field private static final tplMemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 25
    sput v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->maxMemory:I

    div-int/lit8 v0, v0, 0x28

    sput v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->cacheSize:I

    .line 27
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;

    sget v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->cacheSize:I

    invoke-direct {v0, v1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;-><init>(I)V

    sput-object v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 105
    invoke-static {}, Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;->getInstance()Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    .line 106
    return-void
.end method

.method private parseTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 6
    .param p1, "tplInStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v2, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-direct {v2}, Lcom/alipay/android/app/cctemplate/model/Template;-><init>()V

    .line 130
    .local v2, "tpl":Lcom/alipay/android/app/cctemplate/model/Template;
    const-string/jumbo v3, "tplId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    .line 131
    const-string/jumbo v3, "time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    .line 132
    const-string/jumbo v3, "tag"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tag:Ljava/lang/String;

    .line 133
    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 134
    const-string/jumbo v3, "html"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->html:Ljava/lang/String;

    .line 135
    const-string/jumbo v3, "tplVersion"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 136
    const-string/jumbo v3, "format"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    .line 137
    const-string/jumbo v3, "publishVersion"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "tpl":Lcom/alipay/android/app/cctemplate/model/Template;
    :goto_0
    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "template"

    const-string/jumbo v5, "TplAssetsParseEx"

    invoke-virtual {v3, v4, v5, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteTemplate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tplId"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->removeInMemTpl(Ljava/lang/String;)Z

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1
    .param p1, "tplId"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 11
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "loadRes"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x800

    const/4 v8, 0x0

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v3

    .line 226
    :cond_1
    sget-object v6, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    invoke-virtual {v6, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    .line 227
    .local v1, "json":Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    if-eqz v1, :cond_3

    .line 228
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "TemplateStorage::getTemplate"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "template hit mem:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v3, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-direct {v3}, Lcom/alipay/android/app/cctemplate/model/Template;-><init>()V

    .line 230
    .local v3, "out":Lcom/alipay/android/app/cctemplate/model/Template;
    iput-object p1, v3, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    .line 231
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    .line 232
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    .line 233
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    .line 234
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 235
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    const-string/jumbo v7, "HTML"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->html:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_2
    iget-object v6, v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->json:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    goto :goto_0

    .line 243
    .end local v3    # "out":Lcom/alipay/android/app/cctemplate/model/Template;
    :cond_3
    iget-object v6, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    iget-object v7, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v7}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;->getTemplate(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v4

    .line 246
    .local v4, "templateFromLocal":Lcom/alipay/android/app/cctemplate/model/Template;
    if-eqz v4, :cond_4

    iget-object v6, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 247
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/16 v6, 0x7b

    iget-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 248
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_4

    const/16 v6, 0x3c

    iget-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 249
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_4

    .line 250
    iget-object v6, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_5

    iget-object v6, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 251
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "digest":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "template"

    const-string/jumbo v8, "TplLocalGetIllegal"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "digest:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v0    # "digest":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_6

    .line 258
    invoke-static {v4}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->valueOf(Lcom/alipay/android/app/cctemplate/model/Template;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    move-result-object v2

    .line 259
    .local v2, "jsonWrapper":Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    sget-object v6, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    iget-object v7, v4, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    .line 260
    goto/16 :goto_0

    .line 251
    .end local v2    # "jsonWrapper":Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    :cond_5
    iget-object v0, v4, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_6
    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v5

    .line 270
    .local v5, "templateFromResource":Lcom/alipay/android/app/cctemplate/model/Template;
    invoke-virtual {p0, v5}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-object v3, v5

    .line 271
    goto/16 :goto_0
.end method

.method public getTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 7
    .param p1, "tplId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "TemplateStorage::getTemplateFromResource"

    const-string/jumbo v4, "tplId is empty"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-object v1

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "templateString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplAssetsGetNull"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tplId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",templateString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->parseTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v1

    goto :goto_0
.end method

.method public readAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v0}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateAssetsStorage;->readAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeInMemTpl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tplId"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveTemplate(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/app/cctemplate/model/Template;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "TemplateStorage::saveTemplate(List<Template>)"

    const-string/jumbo v5, "templates is null or empty"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    .line 185
    :cond_1
    return-object v1

    .line 180
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v1, "saveStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/cctemplate/model/Template;

    .line 182
    .local v2, "template":Lcom/alipay/android/app/cctemplate/model/Template;
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v0

    .line 183
    .local v0, "result":Z
    iget-object v4, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 11
    .param p1, "template"    # Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "TemplateStorage::saveTemplate"

    const-string/jumbo v8, "template == null"

    invoke-virtual {v6, v7, v8}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return v5

    .line 152
    :cond_0
    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 153
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 154
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 155
    :cond_1
    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    .line 156
    .local v3, "tplId":Ljava/lang/String;
    iget-object v4, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 157
    .local v4, "tplVersion":Ljava/lang/String;
    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    if-nez v6, :cond_2

    const/4 v2, -0x1

    .line 158
    .local v2, "tplDataLen":I
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v6

    const-string/jumbo v7, "template"

    const-string/jumbo v8, "TplLocalSaveIllegal"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "tplId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",tplVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",tplDataLen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v2    # "tplDataLen":I
    :cond_2
    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 164
    .end local v3    # "tplId":Ljava/lang/String;
    .end local v4    # "tplVersion":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->valueOf(Lcom/alipay/android/app/cctemplate/model/Template;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    move-result-object v0

    .line 165
    .local v0, "jsonWrapper":Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    sget-object v5, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v5, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    iget-object v6, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v6}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;->saveTemplate(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v1

    .line 169
    .local v1, "result":Z
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v5

    const-string/jumbo v6, "TemplateStorage::saveTemplate"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "result:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
