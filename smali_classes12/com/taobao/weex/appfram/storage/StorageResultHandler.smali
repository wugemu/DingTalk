.class public Lcom/taobao/weex/appfram/storage/StorageResultHandler;
.super Ljava/lang/Object;
.source "StorageResultHandler.java"


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RESULT_FAILED:Ljava/lang/String; = "failed"

.field private static final RESULT_FAILED_INVALID_PARAM:Ljava/lang/String; = "invalid_param"

.field private static final RESULT_FAILED_NO_HANDLER:Ljava/lang/String; = "no_handler"

.field private static final RESULT_OK:Ljava/lang/String; = "success"

.field private static final UNDEFINED:Ljava/lang/String; = "undefined"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getAllkeysResult(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 79
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .restart local p0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "success"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "data"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method public static getItemResult(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 50
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "result"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "success"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "data"

    if-eqz p0, :cond_1

    .end local p0    # "result":Ljava/lang/String;
    :goto_1
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0

    .line 50
    .restart local p0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "failed"

    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo p0, "undefined"

    goto :goto_1
.end method

.method public static getLengthResult(J)Ljava/util/Map;
    .locals 4
    .param p0, "result"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 72
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "success"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v1, "data"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object v0
.end method

.method public static handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    const-string/jumbo v0, "failed"

    const-string/jumbo v1, "invalid_param"

    invoke-static {p0, v0, v1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleResult(Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public static handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    const-string/jumbo v0, "failed"

    const-string/jumbo v1, "no_handler"

    invoke-static {p0, v0, v1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleResult(Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method private static handleResult(Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    .local v0, "retVal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "data"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-interface {p0, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static removeItemResult(Z)Ljava/util/Map;
    .locals 3
    .param p0, "result"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 65
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "result"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "success"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v1, "data"

    const-string/jumbo v2, "undefined"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0

    .line 65
    :cond_0
    const-string/jumbo v1, "failed"

    goto :goto_0
.end method

.method public static setItemResult(Z)Ljava/util/Map;
    .locals 3
    .param p0, "result"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 57
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "result"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "success"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "data"

    const-string/jumbo v2, "undefined"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object v0

    .line 57
    :cond_0
    const-string/jumbo v1, "failed"

    goto :goto_0
.end method
