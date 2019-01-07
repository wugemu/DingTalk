.class public Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;
.super Lipd;
.source "H5PluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PluginProxy"


# instance fields
.field private pluginManager:Liow;

.field private pluginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Liow;)V
    .locals 8
    .param p2, "pluginManager"    # Liow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;",
            "Liow;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5PluginConfig;>;"
    const/4 v7, 0x0

    .line 35
    invoke-direct {p0}, Lipd;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginManager:Liow;

    .line 37
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    .line 38
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 43
    .local v1, "info":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    iget-boolean v5, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    if-eqz v5, :cond_4

    .line 44
    new-instance v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;-><init>(Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;)V

    .line 45
    .local v3, "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    .line 46
    iput-object v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    .line 47
    iput-object v1, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 49
    iget-object v5, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "event":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "pluginProxyList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;>;"
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    .end local v2    # "pluginProxyList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;>;"
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .restart local v2    # "pluginProxyList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;>;"
    goto :goto_2

    .line 59
    .end local v0    # "event":Ljava/lang/String;
    .end local v2    # "pluginProxyList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;>;"
    .end local v3    # "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    :cond_4
    invoke-direct {p0, v1, v7}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->initPlugin(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Liov;

    goto :goto_0
.end method

.method private initPlugin(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Liov;
    .locals 14
    .param p1, "info"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 161
    .local v10, "time":J
    const/4 v5, 0x0

    .line 163
    .local v5, "plugin":Liov;
    iget-object v2, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 164
    .local v2, "bundleName":Ljava/lang/String;
    iget-object v4, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 167
    .local v4, "clazzName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2113
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 167
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3113
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 167
    const-string/jumbo v12, "native_"

    .line 168
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 169
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 171
    const-string/jumbo v9, "nebula"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "liteprocess"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "tinyappservice"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 172
    :cond_0
    const-string/jumbo v9, "H5PluginProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "in tinyProcess event "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4065
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 173
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  can to load class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 172
    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    const/4 v9, 0x1

    invoke-static {v2, v4, v9}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    .line 188
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_3

    .line 189
    const-string/jumbo v9, "H5PluginProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "could not find plugin class "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v9, 0x0

    .line 210
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v9

    .line 177
    :cond_2
    const-string/jumbo v9, "H5PluginProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "in tinyProcess event "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5065
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 178
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is not to load class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 177
    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v9, 0x0

    goto :goto_0

    .line 194
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_0
    const-class v9, Liov;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 195
    const/4 v9, 0x0

    goto :goto_0

    .line 197
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Liov;

    move-object v5, v0

    .line 198
    if-nez v5, :cond_5

    .line 199
    const/4 v9, 0x0

    goto :goto_0

    .line 201
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v10

    .line 202
    .local v6, "elapse":J
    const-string/jumbo v9, "H5PluginProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "register ext plugin "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " elapse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginManager:Liow;

    invoke-interface {v9, v5}, Liow;->register(Liov;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "elapse":J
    :goto_1
    move-object v9, v5

    .line 210
    goto :goto_0

    .line 204
    :catch_0
    move-exception v8

    .line 205
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5PluginProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "failed to initialize plugin "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    const-string/jumbo v9, "H5PluginProxy"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const-string/jumbo v12, "load plugin fail"

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 207
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const-string/jumbo v12, "className"

    invoke-virtual {v9, v12, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const-string/jumbo v12, "exception"

    invoke-virtual {v9, v12, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 206
    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto :goto_1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    if-nez p1, :cond_1

    .line 120
    const-string/jumbo v7, "H5PluginProxy"

    const-string/jumbo v8, "invalid event!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return v6

    .line 2065
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 125
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    const-string/jumbo v7, "H5PluginProxy"

    const-string/jumbo v8, "invalid event name"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 130
    .local v3, "pluginProxyList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 133
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 134
    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_0

    .line 135
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;

    .line 136
    .local v4, "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    iget-object v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    if-eqz v8, :cond_3

    iget-boolean v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    if-nez v8, :cond_6

    .line 141
    :cond_3
    iget-object v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    if-nez v8, :cond_4

    .line 142
    iget-object v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {p0, v8, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->initPlugin(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Liov;

    move-result-object v8

    iput-object v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    .line 145
    :cond_4
    const/4 v5, 0x0

    .line 146
    .local v5, "result":Z
    iget-object v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    if-eqz v8, :cond_5

    .line 147
    iget-object v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v1, v8, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 148
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v8, "H5PluginProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] handle pass "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v8, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    invoke-interface {v8, p1, p2}, Liov;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v5

    .line 150
    iput-boolean v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    .line 152
    .end local v1    # "className":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    move v6, v7

    .line 153
    goto :goto_0

    .line 134
    .end local v5    # "result":Z
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 79
    const-string/jumbo v7, "H5PluginProxy"

    const-string/jumbo v8, "invalid event!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 114
    :cond_0
    :goto_0
    return v5

    .line 1065
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 84
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    const-string/jumbo v7, "H5PluginProxy"

    const-string/jumbo v8, "invalid event name"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 89
    .local v3, "pluginProxyList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v5, v6

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 93
    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_9

    .line 94
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;

    .line 95
    .local v4, "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    iget-object v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    if-eqz v7, :cond_5

    iget-boolean v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    if-nez v7, :cond_8

    .line 100
    :cond_5
    iget-object v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    if-nez v7, :cond_6

    .line 101
    iget-object v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {p0, v7, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->initPlugin(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Liov;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    .line 103
    :cond_6
    const/4 v5, 0x0

    .line 104
    .local v5, "result":Z
    iget-object v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    if-eqz v7, :cond_7

    .line 105
    iget-object v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v1, v7, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 106
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v7, "H5PluginProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] intercept pass "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v7, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Liov;

    invoke-interface {v7, p1, p2}, Liov;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v5

    .line 108
    iput-boolean v5, v4, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    .line 110
    .end local v1    # "className":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    .line 93
    .end local v5    # "result":Z
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v4    # "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    :cond_9
    move v5, v6

    .line 114
    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 3
    .param p1, "filter"    # Liof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "apiName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0    # "apiName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->pluginMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    return-void
.end method
