.class public Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;
.super Ljava/lang/Object;
.source "H5ParamHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;,
        Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "H5ParamHolder"

.field private static sPageParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->sPageParams:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addPageParam(Ljava/lang/String;)V
    .locals 5
    .param p0, "pageIndex"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addPageParam ConcurrentHashMap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;-><init>(Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$1;)V

    .line 26
    .local v0, "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->sPageParams:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v2

    return-void

    .line 24
    .end local v0    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deliveryPageParam(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "pageIndex"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const-class v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->sPageParams:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;

    .line 38
    .local v0, "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v1, "H5ParamHolder"

    const-string/jumbo v3, "\uff01\uff01\uff01 pageParams == null"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    monitor-exit v2

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->listener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    if-eqz v1, :cond_1

    .line 44
    const-string/jumbo v1, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deliveryPageParam pageParams.listener!=null "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->sPageParams:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->listener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;->onPageParam(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 52
    .restart local v0    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    :cond_1
    :try_start_2
    iput-object p1, v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->bundle:Landroid/os/Bundle;

    .line 53
    const-string/jumbo v1, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deliveryPageParam pageParams.listener==null "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized hasPageParam(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pageIndex"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->sPageParams:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 31
    .local v0, "result":Z
    const-string/jumbo v1, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " hasPageParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v2

    return v0

    .line 30
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized retrievePageParam(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;)V
    .locals 5
    .param p0, "pageIndex"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .prologue
    .line 64
    const-class v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->sPageParams:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;

    .line 66
    .local v0, "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    const-string/jumbo v1, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "retrievePageParam "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pageParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 72
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->bundle:Landroid/os/Bundle;

    if-nez v1, :cond_2

    .line 73
    iput-object p1, v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->listener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 77
    const-string/jumbo v1, "H5ParamHolder"

    const-string/jumbo v3, "pageParams.bundle==null"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 83
    .restart local v0    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    :cond_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->sPageParams:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->bundle:Landroid/os/Bundle;

    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;->onPageParam(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
