.class public final Lfly;
.super Ljava/lang/Object;
.source "OrgHomePageManager.java"


# static fields
.field private static volatile c:Lfly;

.field private static final d:Ljava/lang/Object;


# instance fields
.field public a:Lblc;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfly;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfly;->b:Ljava/util/List;

    .line 1100
    const-string/jumbo v0, "pref_key_org_home_page_gov_list"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1105
    const/4 v1, 0x0

    .line 1107
    :try_start_0
    invoke-static {}, Lfly;->d()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    invoke-static {v2, v0, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :goto_0
    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, p0, Lfly;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1114
    iget-object v1, p0, Lfly;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    new-instance v0, Lfly$1;

    invoke-direct {v0, p0}, Lfly$1;-><init>(Lfly;)V

    iput-object v0, p0, Lfly;->a:Lblc;

    .line 53
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    const-string/jumbo v2, "HomePageRedDotManager"

    const-string/jumbo v3, "loadHomePageIndustryCodeList"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lfly;
    .locals 4

    .prologue
    .line 57
    sget-object v0, Lfly;->c:Lfly;

    .line 58
    .local v0, "res":Lfly;
    sget-object v2, Lfly;->c:Lfly;

    if-nez v2, :cond_1

    .line 59
    sget-object v3, Lfly;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 60
    :try_start_0
    sget-object v0, Lfly;->c:Lfly;

    .line 61
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Lfly;

    invoke-direct {v1}, Lfly;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Lfly;
    .local v1, "res":Lfly;
    :try_start_1
    sput-object v1, Lfly;->c:Lfly;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 64
    .end local v1    # "res":Lfly;
    .restart local v0    # "res":Lfly;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 66
    :cond_1
    return-object v0

    .line 64
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "res":Lfly;
    .restart local v1    # "res":Lfly;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "res":Lfly;
    .restart local v0    # "res":Lfly;
    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->U:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public static d()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
