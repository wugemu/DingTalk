.class public Lcom/mybank/android/phone/common/service/api/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mybank/android/phone/common/service/api/ServiceManager;->mServices:Ljava/util/Map;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/mybank/android/phone/common/service/api/ServiceManager;->mServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/mybank/android/phone/common/service/api/ServiceManager;->mServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "service":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 26
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 30
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "service":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "serviceObj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/mybank/android/phone/common/service/api/CommonService;

    if-eqz v3, :cond_0

    .line 42
    move-object v0, v2

    check-cast v0, Lcom/mybank/android/phone/common/service/api/CommonService;

    move-object v3, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/mybank/android/phone/common/service/api/CommonService;->onCreate(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    :cond_0
    sget-object v3, Lcom/mybank/android/phone/common/service/api/ServiceManager;->mServices:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    .line 63
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "serviceObj":Ljava/lang/Object;
    :goto_0
    return v3

    .line 34
    :catch_0
    move-exception v3

    move v3, v5

    goto :goto_0

    .line 46
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    move v3, v5

    goto :goto_0

    .restart local v2    # "serviceObj":Ljava/lang/Object;
    :cond_1
    move v3, v5

    .line 48
    goto :goto_0

    .line 51
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "serviceObj":Ljava/lang/Object;
    .restart local p1    # "service":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v3, p1, Lcom/mybank/android/phone/common/service/api/CommonService;

    if-eqz v3, :cond_4

    .line 53
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/mybank/android/phone/common/service/api/CommonService;

    move-object v3, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/mybank/android/phone/common/service/api/CommonService;->onCreate(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    :goto_1
    sget-object v3, Lcom/mybank/android/phone/common/service/api/ServiceManager;->mServices:Ljava/util/Map;

    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0

    .line 59
    :cond_4
    if-eqz p1, :cond_6

    .line 60
    sget-object v3, Lcom/mybank/android/phone/common/service/api/ServiceManager;->mServices:Ljava/util/Map;

    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    move v3, v5

    .line 63
    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static release()V
    .locals 4

    .prologue
    .line 68
    sget-object v2, Lcom/mybank/android/phone/common/service/api/ServiceManager;->mServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Lcom/mybank/android/phone/common/service/api/CommonService;

    if-eqz v3, :cond_0

    .line 71
    check-cast v1, Lcom/mybank/android/phone/common/service/api/CommonService;

    .end local v1    # "value":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/mybank/android/phone/common/service/api/CommonService;->onDestroy(Landroid/os/Bundle;)V

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method
