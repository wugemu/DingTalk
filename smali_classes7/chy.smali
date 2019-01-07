.class public abstract Lchy;
.super Lcii;
.source "BaseDDContext.java"


# instance fields
.field private mAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetWorkHasProxy:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcii;-><init>(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;)V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lchy;->mAppCache:Ljava/util/HashMap;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lchy;->mNetWorkHasProxy:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected checkForProxy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    const/4 v3, 0x0

    iput-boolean v3, p0, Lchy;->mNetWorkHasProxy:Z

    .line 44
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v3

    const-string/jumbo v4, "http://www.taobao.com"

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "proxys":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 48
    .local v1, "proxy":Ljava/net/Proxy;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_0

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lchy;->mNetWorkHasProxy:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "proxy":Ljava/net/Proxy;
    .end local v2    # "proxys":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_1
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract clearLocalCache()V
.end method

.method public abstract genAudioManager()Landroid/media/AudioManager;
.end method

.method public abstract getCurrentUid()J
.end method

.method public abstract getGson()Lcom/google/gson/Gson;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getSystemLocale()Ljava/util/Locale;
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lchy;->mAppCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWKUserAgent()Ljava/lang/String;
.end method

.method public hasProxy()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lchy;->mNetWorkHasProxy:Z

    return v0
.end method

.method public abstract isLogin()Z
.end method

.method public abstract loginSuccess()V
.end method

.method public abstract logout(Landroid/app/Activity;)V
.end method

.method public abstract registerAccountReceiver()V
.end method

.method public abstract setAppBack()V
.end method

.method public abstract setAppFront()V
.end method

.method public abstract setLocale()V
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v0, p0, Lchy;->mAppCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public abstract unRegisterAccountReceiver()V
.end method

.method public abstract updateQuotaCenter(J)V
.end method
