.class public Lmtopsdk/mtop/util/MtopProxyUtils;
.super Ljava/lang/Object;
.source "MtopProxyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProxyUtils"

.field private static final apiWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mtop.common.gettimestamp$*"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyUtils;->apiWhiteList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallbackListener(Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .locals 8
    .param p0, "proxy"    # Lmtopsdk/mtop/MtopProxy;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v5

    if-nez v5, :cond_1

    .line 78
    :cond_0
    const/4 v2, 0x0

    .line 100
    :goto_0
    return-object v2

    .line 80
    :cond_1
    const/4 v2, 0x0

    .line 82
    .local v2, "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    :try_start_0
    new-instance v3, Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-direct {v3, p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;-><init>(Lmtopsdk/mtop/MtopProxy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2    # "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .local v3, "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    :try_start_1
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v4

    .line 85
    .local v4, "mtopListener":Lmtopsdk/mtop/common/MtopListener;
    instance-of v5, v4, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v5, :cond_2

    .line 86
    move-object v0, v4

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    move-object v5, v0

    iput-object v5, v3, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    .line 89
    :cond_2
    instance-of v5, v4, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    if-eqz v5, :cond_3

    .line 90
    move-object v0, v4

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    move-object v5, v0

    iput-object v5, v3, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressListener:Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    .line 93
    :cond_3
    instance-of v5, v4, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v5, :cond_4

    .line 94
    check-cast v4, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    .end local v4    # "mtopListener":Lmtopsdk/mtop/common/MtopListener;
    iput-object v4, v3, Lmtopsdk/mtop/common/NetworkListenerAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v2, v3

    .line 98
    .end local v3    # "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .restart local v2    # "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    const-string/jumbo v5, "mtopsdk.MtopProxyUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[convertCallbackListener] convert NetworkListenerAdapter error. apiKey="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v7

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .restart local v3    # "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    .restart local v2    # "listener":Lmtopsdk/mtop/common/NetworkListenerAdapter;
    goto :goto_1
.end method

.method public static createHttpHeaders(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "connHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 73
    :cond_1
    return-object v2

    .line 65
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Llc;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    new-instance v1, Lmk;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lmk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v1, "header":Lmk;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static createHttpParams(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "httpParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 50
    :cond_1
    return-object v1

    .line 43
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "httpParams":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lmp;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lmp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v3, "param":Lmp;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getApiWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyUtils;->apiWhiteList:Ljava/util/List;

    return-object v0
.end method
