.class public Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;
.super Ljava/lang/Object;
.source "H5NebulaAppManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NebulaAppManager"


# instance fields
.field private nebulaAppCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;->nebulaAppCallbackList:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized getNebulaAppCallbackList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 48
    const-string/jumbo v0, ""

    .line 49
    .local v0, "log":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;->nebulaAppCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;

    .line 50
    .local v1, "nebulaAppCallback":Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    .end local v1    # "nebulaAppCallback":Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;
    :cond_0
    const-string/jumbo v2, "H5NebulaAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getNebulaAppCallbackList "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v0    # "log":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;->nebulaAppCallbackList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 47
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerNebulaAppCallback(Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;)V
    .locals 3
    .param p1, "nebulaAppCallback"    # Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "H5NebulaAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerNebulaAppCallback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;->nebulaAppCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterNebulaAppCallback(Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;)V
    .locals 3
    .param p1, "nebulaAppCallback"    # Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, "H5NebulaAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterNebulaAppCallback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;->nebulaAppCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
