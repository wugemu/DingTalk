.class public Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;
.super Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;
.source "AdsInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;-><init>()V

    return-void
.end method

.method private pushDingAdsModel()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 331
    new-instance v1, Lans;

    invoke-direct {v1}, Lans;-><init>()V

    .line 332
    .local v1, "adsPositionsModel":Lans;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lans;->a:Ljava/util/List;

    .line 334
    new-instance v0, Lblj;

    invoke-direct {v0}, Lblj;-><init>()V

    .line 335
    .local v0, "adsPositionModel":Lblj;
    const-string/jumbo v3, "0062"

    iput-object v3, v0, Lblj;->a:Ljava/lang/String;

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lblj;->b:Ljava/lang/Long;

    .line 337
    new-instance v3, Lbli;

    invoke-direct {v3}, Lbli;-><init>()V

    iput-object v3, v0, Lblj;->c:Lbli;

    .line 338
    iget-object v3, v0, Lblj;->c:Lbli;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lbli;->a:Ljava/lang/Integer;

    .line 339
    new-instance v3, Lblk;

    invoke-direct {v3}, Lblk;-><init>()V

    iput-object v3, v0, Lblj;->d:Lblk;

    .line 341
    iget-object v3, v0, Lblj;->d:Lblk;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_DING_ADS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lblk;->a:Ljava/lang/Integer;

    .line 342
    iget-object v3, v0, Lblj;->d:Lblk;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lblk;->b:Ljava/lang/Boolean;

    .line 343
    iget-object v3, v0, Lblj;->d:Lblk;

    new-instance v4, Lblm;

    invoke-direct {v4}, Lblm;-><init>()V

    iput-object v4, v3, Lblk;->m:Lblm;

    .line 345
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    const-string/jumbo v4, "$iAEEAqNqcGcDAQTNAtAFzQUABtoAI4QBpAuvP6kCqt0cms7uY3jBU8oDzwAAAWACpEOxBM4AAw6_BwAIAA"

    iput-object v4, v3, Lblm;->a:Ljava/lang/String;

    .line 346
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    const-string/jumbo v4, "$iAEEAqNqcGcDAQTNAtAFzQUABtoAI4QBpAuvP6kCqt0cms7uY3jBU8oDzwAAAWACpEOxBM4AAw6_BwAIAA"

    iput-object v4, v3, Lblm;->b:Ljava/lang/String;

    .line 347
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    const-string/jumbo v4, "title"

    iput-object v4, v3, Lblm;->c:Ljava/lang/String;

    .line 348
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    const-string/jumbo v4, "description"

    iput-object v4, v3, Lblm;->d:Ljava/lang/String;

    .line 349
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    const-string/jumbo v4, "subTitle"

    iput-object v4, v3, Lblm;->e:Ljava/lang/String;

    .line 350
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    const-string/jumbo v4, "closeDesc"

    iput-object v4, v3, Lblm;->f:Ljava/lang/String;

    .line 351
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    const-string/jumbo v4, "http://www.baidu.com"

    iput-object v4, v3, Lblm;->g:Ljava/lang/String;

    .line 352
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lblm;->h:Ljava/lang/Boolean;

    .line 353
    iget-object v3, v0, Lblj;->d:Lblk;

    iget-object v3, v3, Lblk;->m:Lblm;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lblm;->i:Ljava/lang/Boolean;

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lblj;->e:Ljava/lang/Integer;

    .line 356
    iget-object v3, v1, Lans;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-static {v1}, Lcom/alibaba/android/ads/model/AdsPositionsObject;->fromIDLModel(Lans;)Lcom/alibaba/android/ads/model/AdsPositionsObject;

    move-result-object v2

    .line 359
    .local v2, "adsPositionsObject":Lcom/alibaba/android/ads/model/AdsPositionsObject;
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lanm;->b(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V

    .line 360
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lanm;->a(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V

    .line 361
    return-void
.end method


# virtual methods
.method public addNoEntryId(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "widgetId"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 143
    new-instance v0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$3;-><init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;Ljava/lang/String;Z)V

    invoke-static {v0}, Lano;->a(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public clickStatistics(Ljava/lang/String;)V
    .locals 5
    .param p1, "widgetId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 171
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v1

    .line 2178
    iget-object v0, v1, Lanm;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2179
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2180
    :cond_0
    return-void

    .line 2183
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2185
    iget-object v3, v1, Lanm;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2186
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2187
    const-string/jumbo v4, "position"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    const-string/jumbo v4, "type"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v4, "red_point_user_click"

    invoke-interface {v0, v4, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$4;-><init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;)V

    invoke-static {v0}, Lano;->a(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 49
    invoke-static {}, Lanp;->a()Lanp;

    .line 50
    return-void
.end method

.method public onApplicationCreate()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lant;

    invoke-direct {v0}, Lant;-><init>()V

    .line 55
    return-void
.end method

.method public register(Ljava/lang/String;Lblc;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lblc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, p2}, Lanm;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;Lblc;)V

    .line 89
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Lanm;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;Lblc;)V

    .line 66
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .param p3, "parent"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lanm;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;Lblc;)V

    .line 78
    return-void
.end method

.method public setExternalData(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    .line 176
    new-instance v0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$5;-><init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V

    invoke-static {v0}, Lano;->a(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public setWidgetHiden(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 110
    const-string/jumbo v0, "mgr"

    const-string/jumbo v1, "setWidgetHiden widgetId=%s, v=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$1;-><init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;Ljava/lang/String;Z)V

    invoke-static {v0}, Lano;->a(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public testPush()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v0

    .line 1365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1369
    const-string/jumbo v1, "mgr"

    const-string/jumbo v2, "unregister id=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1371
    new-instance v1, Lanm$2;

    invoke-direct {v1, v0, p1}, Lanm$2;-><init>(Lanm;Ljava/lang/String;)V

    invoke-static {v1}, Lano;->a(Ljava/lang/Runnable;)V

    .line 99
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 1
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$2;-><init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lano;->a(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
