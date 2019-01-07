.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;
.super Ljava/lang/Object;
.source "H5WalletDevDebugProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    }
.end annotation


# static fields
.field private static final SCOPE_MODEL:Ljava/lang/String; = "deviceModel"

.field private static final SCOPE_PKG_INFO:Ljava/lang/String; = "pkgInfo"

.field private static final SCOPE_SESSION:Ljava/lang/String; = "session"

.field private static final SCOPE_TITLE:Ljava/lang/String; = "title"

.field private static final SCOPE_UA:Ljava/lang/String; = "ua"

.field private static final SCOPE_URL:Ljava/lang/String; = "url"

.field public static final TAG:Ljava/lang/String; = "H5WalletDevDebugProvider"


# instance fields
.field private ignoreConsoleFuncs:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mH5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

.field private mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/dev/H5BugMeManager;)V
    .locals 10
    .param p1, "manager"    # Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x14

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->ignoreConsoleFuncs:Ljava/util/Set;

    .line 65
    new-instance v6, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;-><init>()V

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    .line 70
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    .line 71
    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mH5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mH5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .line 75
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    const-string/jumbo v7, "url"

    new-instance v8, Lfq;

    invoke-direct {v8, v9}, Lfq;-><init>(I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    const-string/jumbo v7, "ua"

    new-instance v8, Lfq;

    invoke-direct {v8, v9}, Lfq;-><init>(I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    const-string/jumbo v7, "title"

    new-instance v8, Lfq;

    invoke-direct {v8, v9}, Lfq;-><init>(I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    const-string/jumbo v7, "deviceModel"

    new-instance v8, Lfq;

    invoke-direct {v8, v9}, Lfq;-><init>(I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    const-string/jumbo v7, "session"

    new-instance v8, Lfq;

    invoke-direct {v8, v9}, Lfq;-><init>(I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    const-string/jumbo v7, "pkgInfo"

    new-instance v8, Lfq;

    invoke-direct {v8, v9}, Lfq;-><init>(I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 83
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_0

    .line 84
    const-string/jumbo v6, "h5_bugmeIgnoreConsole"

    invoke-interface {v3, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "configStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 88
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 89
    .local v4, "size":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->ignoreConsoleFuncs:Ljava/util/Set;

    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 91
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->ignoreConsoleFuncs:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :catch_0
    move-exception v5

    .line 94
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5WalletDevDebugProvider"

    const-string/jumbo v7, "parse config error"

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v1    # "configStr":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private checkSwitch(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 5
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    if-eqz p1, :cond_1

    const-string/jumbo v4, "url"

    invoke-direct {p0, v4, p1, v3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 402
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mH5BugMeManager:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v0

    .line 407
    .end local v1    # "url":Ljava/lang/String;
    .local v0, "haveAccess":Z
    :goto_0
    if-nez v0, :cond_2

    .line 421
    :cond_0
    :goto_1
    return v2

    .line 404
    .end local v0    # "haveAccess":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "haveAccess":Z
    goto :goto_0

    .line 412
    :cond_2
    const-string/jumbo v4, "h5_bug_me_debug_switch"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 413
    goto :goto_1

    .line 417
    :cond_3
    const-string/jumbo v3, "h5_trace_debug_switch"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    const-string/jumbo v2, "page"

    const-string/jumbo v3, "type"

    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method private clearOneShotValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "viewId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lfq<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfq;

    invoke-virtual {v1, p1}, Lfq;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lfq<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;>;>;"
    :cond_0
    return-void
.end method

.method private getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfq;

    .line 136
    .local v0, "lru":Lfq;, "Lfq<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;>;"
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {v0, p2}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;

    .line 138
    .local v1, "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    if-eqz v1, :cond_0

    .line 139
    if-eqz p3, :cond_1

    .line 140
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->value:Ljava/lang/Object;

    .line 149
    .end local v1    # "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    :cond_0
    :goto_0
    return-object v2

    .line 142
    .restart local v1    # "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    :cond_1
    iget-boolean v3, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->used:Z

    if-nez v3, :cond_0

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->used:Z

    .line 146
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 106
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string/jumbo v2, "pkgInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mDataMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfq;

    .line 115
    .local v0, "lru":Lfq;, "Lfq<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;>;"
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p2}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;

    .line 117
    .local v1, "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    if-nez v1, :cond_3

    .line 118
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;

    invoke-direct {v2, p0, p3, v3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;-><init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/Object;Z)V

    invoke-virtual {v0, p2, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v2, "H5WalletDevDebugProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "put OneShotValue["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->value:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    iput-object p3, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->value:Ljava/lang/Object;

    .line 122
    iput-boolean v3, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->used:Z

    .line 123
    invoke-virtual {v0, p2, v1}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v2, "H5WalletDevDebugProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "put OneShotValue["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 425
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    if-nez v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->checkSwitch(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    .line 431
    .local v0, "bugmeSwitchOpen":Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    :cond_2
    const-string/jumbo v2, "id"

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v2, "bugmeSwitchOpen"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v2, "url"

    invoke-direct {p0, v2, p1, v6}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .local v1, "oneShotVal":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 438
    const-string/jumbo v2, "url"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_3
    const-string/jumbo v2, "title"

    invoke-direct {p0, v2, p1, v6}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 441
    const-string/jumbo v2, "title"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_4
    const-string/jumbo v2, "ua"

    invoke-direct {p0, v2, p1, v6}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 444
    const-string/jumbo v2, "userAgent"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_5
    const-string/jumbo v2, "deviceModel"

    invoke-direct {p0, v2, p1, v6}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 447
    const-string/jumbo v2, "deviceModel"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_6
    const-string/jumbo v2, "session"

    invoke-direct {p0, v2, p1, v6}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 450
    const-string/jumbo v2, "sessionId"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_7
    const-string/jumbo v2, "pkgInfo"

    invoke-direct {p0, v2, p1, v6}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->getOneShotValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 453
    const-string/jumbo v2, "app"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_8
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->post(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "func"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->ignoreConsoleFuncs:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->ignoreConsoleFuncs:Ljava/util/Set;

    .line 279
    invoke-interface {v1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 283
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "console"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v1, "viewId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public eventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 269
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "event"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v1, "viewId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 274
    return-void
.end method

.method public getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    return-object v0
.end method

.method public jsApiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "request"    # Ljava/lang/String;
    .param p5, "response"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->ignoreConsoleFuncs:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->ignoreConsoleFuncs:Ljava/util/Set;

    .line 253
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 256
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 257
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "jsapi"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v1, "viewId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v1, "eventId"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    const-string/jumbo v8, "reqUrl"

    invoke-static {p3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "reqUrl":Ljava/lang/String;
    const-string/jumbo v8, "method"

    invoke-static {p3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "method":Ljava/lang/String;
    const-string/jumbo v8, "protocol"

    invoke-static {p3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "protocol":Ljava/lang/String;
    const-string/jumbo v8, "reqId"

    invoke-static {p3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 296
    .local v4, "reqId":I
    const-string/jumbo v8, "statusCode"

    invoke-static {p3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "statusCode":Ljava/lang/String;
    const-string/jumbo v8, "fromLocalPkg"

    const/4 v9, 0x0

    invoke-static {p3, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 298
    .local v0, "fromLocalPkg":Z
    const-string/jumbo v8, "trimmedResponse"

    invoke-static {p3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, "trimmedResponse":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 301
    .local v1, "jobj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "type"

    const-string/jumbo v9, "network"

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v8, "subType"

    invoke-virtual {v1, v8, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v8, "viewId"

    invoke-virtual {v1, v8, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v8, "reqId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v8, "reqUrl"

    invoke-virtual {v1, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v8, "method"

    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "0"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 308
    const-string/jumbo v8, "statusCode"

    invoke-virtual {v1, v8, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 311
    const-string/jumbo v8, "trimmedResponse"

    invoke-virtual {v1, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 314
    const-string/jumbo v8, "protocol"

    invoke-virtual {v1, v8, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_2
    const-string/jumbo v8, "fromLocalPkg"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 318
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->shutdown()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->mScheduler:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    .line 395
    :cond_0
    return-void
.end method

.method public pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "ua"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "extraObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 161
    .local v0, "bundle":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "page"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v1, "viewId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_1
    if-eqz p6, :cond_2

    .line 171
    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 177
    const-string/jumbo v1, "ua"

    invoke-direct {p0, v1, p2, p3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :cond_3
    const-string/jumbo v1, "deviceModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 182
    const-string/jumbo v1, "destroy"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->clearOneShotValue(Ljava/lang/String;)V

    .line 185
    :cond_4
    return-void
.end method

.method public screenshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 323
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "screenshot"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v1, "viewId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public setPageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 376
    const-string/jumbo v0, "url"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public setPkgInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 386
    const-string/jumbo v0, "pkgInfo"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public setSessionId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string/jumbo v0, "session"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string/jumbo v0, "title"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "ua"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string/jumbo v0, "ua"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->putOneShotValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public welcome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "hello"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 356
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 357
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v1, "subType"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "viewId"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v1, "hello"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-direct {p0, p3, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->sendLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 362
    return-void
.end method
