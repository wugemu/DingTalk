.class public Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;
.super Lipd;
.source "H5ShareDataPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ShareDataPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->getSharedData(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->setSharedData(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->removeShareData(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method private getSharedData(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    .line 2121
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 96
    .local v5, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 97
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "keys"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 99
    .local v3, "keys":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v10

    invoke-interface {v10}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lioc;

    move-result-object v7

    .line 100
    .local v7, "shareData":Lioc;
    if-nez v7, :cond_0

    .line 101
    const-string/jumbo v10, "H5ShareDataPlugin"

    const-string/jumbo v11, " not set H5CacheProvider can not use shareDate"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 106
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    .line 107
    .local v8, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v8, :cond_2

    .line 108
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 109
    .local v4, "obj":Ljava/lang/Object;
    instance-of v10, v4, Ljava/lang/String;

    if-eqz v10, :cond_1

    move-object v2, v4

    .line 112
    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v7, v2}, Lioc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v2    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v1    # "index":I
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v8    # "size":I
    :cond_2
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 118
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "data"

    invoke-virtual {v6, v10, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-interface {p2, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0
.end method

.method private removeShareData(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    .line 3121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 124
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "keys"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 126
    .local v2, "keys":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lioc;

    move-result-object v5

    .line 127
    .local v5, "shareData":Lioc;
    if-nez v5, :cond_1

    .line 128
    const-string/jumbo v7, "H5ShareDataPlugin"

    const-string/jumbo v8, " not set H5CacheProvider can not use shareDate"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void

    .line 133
    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 134
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 135
    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 136
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_2

    move-object v1, v3

    .line 140
    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v5, v1}, Lioc;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setSharedData(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 61
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "data"

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 62
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;

    .line 68
    .local v3, "shareData":Lcom/alipay/mobile/nebula/provider/H5CacheProvider;
    if-nez v3, :cond_2

    .line 69
    const-string/jumbo v6, "H5ShareDataPlugin"

    const-string/jumbo v7, " not set H5CacheProvider can not use shareDate"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    const-string/jumbo v6, "writeToFile"

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 76
    .local v5, "writeToFile":Z
    if-eqz v5, :cond_4

    .line 77
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "key":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 80
    const/4 v7, 0x1

    invoke-interface {v3, v1, v4, v7}, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 84
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .restart local v1    # "key":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .restart local v4    # "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 87
    invoke-interface {v3, v1, v4}, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "getSharedData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const-string/jumbo v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 39
    :cond_1
    const-string/jumbo v1, "setSharedData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    const-string/jumbo v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 47
    :cond_2
    const-string/jumbo v1, "removeSharedData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 24
    const-string/jumbo v0, "setSharedData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "getSharedData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "removeSharedData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 27
    return-void
.end method
