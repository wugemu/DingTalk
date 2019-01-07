.class public Lfvb;
.super Ljava/lang/Object;
.source "MineFoundAdsController.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lblc",
            "<",
            "Lcry;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lfvb;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a()Lfvb;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lfvb;->b:Lfvb;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lfvb;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lfvb;->b:Lfvb;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lfvb;

    invoke-direct {v0}, Lfvb;-><init>()V

    sput-object v0, Lfvb;->b:Lfvb;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lfvb;->a:Ljava/util/Map;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lfvb;->b:Lfvb;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lfvb;Ljava/lang/String;Lcry;)V
    .locals 2
    .param p0, "x0"    # Lfvb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcry;

    .prologue
    .line 22
    .line 1063
    invoke-static {p1}, Lfvb;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_1

    .line 1065
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblc;

    .line 1066
    if-eqz v0, :cond_0

    .line 1067
    invoke-interface {v0, p2}, Lblc;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "widgetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lblc",
            "<",
            "Lcry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lfvb;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lfvb;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 113
    sput-object v2, Lfvb;->a:Ljava/util/Map;

    .line 114
    sput-object v2, Lfvb;->b:Lfvb;

    .line 115
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lblc;
    .locals 1
    .param p1, "widgetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lfvb$1;

    invoke-direct {v0, p0, p1}, Lfvb$1;-><init>(Lfvb;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lblc;)V
    .locals 2
    .param p1, "widgetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lblc",
            "<",
            "Lcry;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    .local p2, "listener":Lblc;, "Lblc<Lcry;>;"
    invoke-static {p1}, Lfvb;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "listenerList":Ljava/util/List;, "Ljava/util/List<Lblc<Lcry;>;>;"
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lblc<Lcry;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v0    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lblc<Lcry;>;>;"
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 88
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    sget-object v1, Lfvb;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 91
    sget-object v1, Lfvb;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;Lblc;)V
    .locals 1
    .param p1, "widgetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lblc",
            "<",
            "Lcry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "listener":Lblc;, "Lblc<Lcry;>;"
    invoke-static {p1}, Lfvb;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "listenerList":Ljava/util/List;, "Ljava/util/List<Lblc<Lcry;>;>;"
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method
