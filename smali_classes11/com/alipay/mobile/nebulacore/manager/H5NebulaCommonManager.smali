.class public Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;
.super Ljava/lang/Object;
.source "H5NebulaCommonManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NebulaCommonManager"


# instance fields
.field private nebulaCommonInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->nebulaCommonInfoList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized getNebulaAppCallbackList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 50
    const-string/jumbo v1, ""

    .line 51
    .local v1, "log":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->nebulaCommonInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    .line 52
    .local v2, "nebulaCommonInfo":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;->getAppIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "appId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    goto :goto_0

    .line 56
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "nebulaCommonInfo":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;
    :cond_1
    const-string/jumbo v3, "H5NebulaCommonManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getNebulaAppCallbackList "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v1    # "log":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->nebulaCommonInfoList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 49
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized registerNebulaCommonInfo(Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;)V
    .locals 5
    .param p1, "nebulaCommonInfo"    # Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 30
    const-string/jumbo v1, ""

    .line 31
    .local v1, "log":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;->getAppIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "appId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "H5NebulaCommonManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "registerNebulaCommonInfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v1    # "log":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->nebulaCommonInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterNebulaCommonInfo(Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;)V
    .locals 1
    .param p1, "nebulaCommonInfo"    # Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->nebulaCommonInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
