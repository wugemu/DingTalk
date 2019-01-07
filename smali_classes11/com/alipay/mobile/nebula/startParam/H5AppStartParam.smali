.class public Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;
.super Ljava/lang/Object;
.source "H5AppStartParam.java"


# static fields
.field private static instance:Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;


# instance fields
.field private appStartParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->appStartParam:Ljava/util/Map;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->instance:Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->instance:Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->instance:Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->appStartParam:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->appStartParam:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5AppStartParam;->appStartParam:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
