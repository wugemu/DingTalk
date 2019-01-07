.class public Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
.super Ljava/lang/Object;
.source "H5PluginConfigManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PluginConfigManager"

.field private static instance:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;


# instance fields
.field private pluginsConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->pluginsConfig:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->instance:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->instance:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->instance:Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->configInvalid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 35
    :cond_1
    :try_start_1
    const-string/jumbo v0, "H5PluginConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addConfig "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->pluginsConfig:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addH5PluginConfigList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "config":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5PluginConfig;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->pluginsConfig:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createPlugin(Ljava/lang/String;Liow;)Liov;
    .locals 10
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "pluginManager"    # Liow;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->pluginsConfig:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->pluginsConfig:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 71
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 56
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 57
    .local v6, "time":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5PluginConfig;>;"
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->pluginsConfig:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 59
    .local v2, "info":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    iget-object v8, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 60
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    .end local v2    # "info":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5PluginConfig;>;"
    .end local v6    # "time":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 64
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5PluginConfig;>;"
    .restart local v6    # "time":J
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    new-instance v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;

    invoke-direct {v4, v3, p2}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;-><init>(Ljava/util/List;Liow;)V

    .line 69
    .local v4, "plugin":Liov;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 70
    .local v0, "elapse":J
    const-string/jumbo v5, "H5PluginConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "createPlugin "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " elapse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
