.class public Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;
.super Ljava/lang/Object;
.source "H5GlobalPackage.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5GlobalPackage"

.field public static final TINY_RES_KEY:Ljava/lang/String; = "tinyRes"

.field private static resourcePackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addResourcePackage(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "canDegrade"    # Z
    .param p3, "preLoad"    # Z

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->initPackageInfo()V

    .line 71
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 72
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    .line 76
    :cond_2
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    monitor-enter v4

    .line 77
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 78
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 79
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 81
    .local v2, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    const-string/jumbo v3, "tinyRes"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    if-eqz v2, :cond_4

    .line 83
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 84
    .local v1, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->setPreload(Z)V

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    .line 90
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 109
    .end local v1    # "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v2    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 88
    .restart local v1    # "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .restart local v2    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v3, "H5GlobalPackage"

    const-string/jumbo v5, "h5ContentPackage==null"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v1    # "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 96
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContentPackage(Ljava/lang/String;Z)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v0

    .line 97
    .local v0, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    .line 109
    .end local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v2    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    :cond_5
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 101
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    .restart local v2    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContentPackage(Ljava/lang/String;Z)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v0

    .line 103
    .restart local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->setPreload(Z)V

    .line 104
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static clearResourcePackages(Ljava/lang/String;)V
    .locals 3
    .param p0, "keyStr"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v0, "H5GlobalPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resourcePackageMap remove : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getContent(Ljava/lang/String;Z)[B
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isMainDoc"    # Z

    .prologue
    const/4 v6, 0x0

    .line 133
    sget-object v7, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    if-nez v7, :cond_0

    move-object v0, v6

    .line 175
    :goto_0
    return-object v0

    .line 138
    :cond_0
    sget-object v7, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 139
    .local v1, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 140
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 141
    const-string/jumbo v6, "H5ContentProviderImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[res] load response from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v0    # "bytes":[B
    .end local v1    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_2
    sget-object v7, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move-object v0, v6

    .line 150
    goto :goto_0

    .line 153
    :cond_4
    sget-object v7, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 154
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 155
    .local v5, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 156
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 158
    .restart local v1    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 159
    .restart local v0    # "bytes":[B
    if-eqz v0, :cond_6

    .line 160
    if-eqz p1, :cond_7

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->isMainDocInvalid(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 161
    const-string/jumbo v7, "H5GlobalPackage"

    const-string/jumbo v8, "isMainDocInvalid"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 163
    .local v3, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 164
    const-string/jumbo v7, "H5_APP_EXCEP"

    const-string/jumbo v8, "^step=maininvalid"

    invoke-static {v7, v3, v8}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    move-object v0, v6

    .line 165
    goto/16 :goto_0

    .line 167
    .end local v3    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_7
    const-string/jumbo v6, "H5ContentProviderImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[res] load response from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "bytes":[B
    .end local v1    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;>;"
    .end local v5    # "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    :cond_8
    move-object v0, v6

    .line 175
    goto/16 :goto_0
.end method

.method private static getContentPackage(Ljava/lang/String;Z)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "canDegrade"    # Z

    .prologue
    .line 113
    const-string/jumbo v2, "H5GlobalPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "append resource package : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "appId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "appType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    new-instance v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;-><init>(Landroid/os/Bundle;Z)V

    .line 118
    .local v1, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->setCanDegrade(Z)V

    .line 119
    return-object v1
.end method

.method private static getPkgString(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;
    .locals 4
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "content"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_Y_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 280
    :goto_0
    return-object p0

    .line 272
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getPkgInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "tempInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_N_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 277
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getResPkgInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string/jumbo v3, ""

    .line 238
    .local v3, "result":Ljava/lang/String;
    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 239
    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 240
    .local v0, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getPkgString(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    .line 241
    goto :goto_0

    .line 243
    .end local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_0
    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 244
    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 245
    .local v2, "pkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 246
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 247
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 248
    .restart local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getPkgString(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    .line 249
    goto :goto_1

    .line 252
    .end local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    :cond_1
    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->resourcePackageMap:Ljava/util/Map;

    const-string/jumbo v7, "tinyRes"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 253
    .local v5, "tinyResMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 254
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 255
    .local v4, "tinyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 256
    .restart local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getPkgString(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    .line 257
    goto :goto_2

    .line 261
    .end local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .end local v2    # "pkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    .end local v4    # "tinyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    .end local v5    # "tinyResMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 264
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static initPackageInfo()V
    .locals 8

    .prologue
    .line 200
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 234
    .local v3, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    :cond_0
    :goto_0
    return-void

    .line 203
    .end local v3    # "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    .line 208
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 209
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 210
    .restart local v3    # "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v3, :cond_4

    .line 211
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v1

    .line 212
    .local v1, "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 213
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 217
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    const-string/jumbo v5, "H5GlobalPackage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is tinyAppCommRes not add in PackageList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "H5GlobalPackage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "init global app "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v5, "appId"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v5, "appType"

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    new-instance v6, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;-><init>(Landroid/os/Bundle;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v4, "H5GlobalPackage"

    const-string/jumbo v5, "init global app fail !! "

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static isMainDocInvalid(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z
    .locals 12
    .param p0, "contentPackage"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 179
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 180
    .local v4, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v4, :cond_1

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isResPackage:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "yes"

    const-string/jumbo v8, "h5_mainUrlDegrade"

    .line 181
    invoke-static {v8}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 183
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v5, "resMainDocInvalidTime"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "outDatedTime":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 186
    .local v2, "outDatedSecond":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    .line 187
    const-wide/32 v2, 0x3f480

    .line 189
    :cond_0
    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 190
    .local v6, "updateAppTime":J
    const-string/jumbo v5, "H5GlobalPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "main doc resource check updateAppTime: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", config: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    add-long/2addr v8, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    .line 192
    const/4 v5, 0x1

    .line 196
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v1    # "outDatedTime":Ljava/lang/String;
    .end local v2    # "outDatedSecond":J
    .end local v6    # "updateAppTime":J
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static prepare()V
    .locals 4

    .prologue
    .line 53
    const-string/jumbo v1, "H5GlobalPackage"

    const-string/jumbo v2, "prepare global package"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->initPackageInfo()V

    .line 55
    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 62
    .local v0, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :goto_0
    return-void

    .line 58
    .end local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_0
    sget-object v2, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    monitor-enter v2

    .line 59
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->sPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 60
    .restart local v0    # "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
