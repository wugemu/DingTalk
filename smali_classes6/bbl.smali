.class public Lbbl;
.super Ljava/lang/Object;
.source "DingAdsDataCenter.java"


# static fields
.field private static volatile a:Lbbl;


# instance fields
.field private b:Z

.field private c:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lblf;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lblf;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lblf;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lblf;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lblf;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbbl;->g:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbl;->h:Ljava/util/Collection;

    .line 43
    new-instance v0, Lbbl$1;

    invoke-direct {v0, p0}, Lbbl$1;-><init>(Lbbl;)V

    iput-object v0, p0, Lbbl;->c:Lblc;

    .line 54
    new-instance v0, Lbbl$2;

    invoke-direct {v0, p0}, Lbbl$2;-><init>(Lbbl;)V

    iput-object v0, p0, Lbbl;->d:Lblc;

    .line 65
    new-instance v0, Lbbl$3;

    invoke-direct {v0, p0}, Lbbl$3;-><init>(Lbbl;)V

    iput-object v0, p0, Lbbl;->e:Lblc;

    .line 76
    new-instance v0, Lbbl$4;

    invoke-direct {v0, p0}, Lbbl$4;-><init>(Lbbl;)V

    iput-object v0, p0, Lbbl;->f:Lblc;

    .line 87
    return-void
.end method

.method public static a()Lbbl;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lbbl;->a:Lbbl;

    if-nez v0, :cond_0

    .line 112
    const-class v1, Lbbl;

    monitor-enter v1

    .line 113
    :try_start_0
    new-instance v0, Lbbl;

    invoke-direct {v0}, Lbbl;-><init>()V

    sput-object v0, Lbbl;->a:Lbbl;

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    sget-object v0, Lbbl;->a:Lbbl;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbbl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lbbl;

    .prologue
    .line 26
    iget-object v0, p0, Lbbl;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lbbl;I)V
    .locals 0
    .param p0, "x0"    # Lbbl;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lbbl;->a(I)V

    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_ding_ads_show_red_dot"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)V
    .locals 3
    .param p0, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 197
    packed-switch p0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 208
    :pswitch_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 90
    .line 1150
    iget-object v3, p0, Lbbl;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1151
    if-eqz v3, :cond_0

    .line 1154
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lblf;

    iget-boolean v4, v4, Lblf;->j:Z

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lbbl;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1158
    const/4 v1, 0x1

    .line 91
    .local v1, "showDingTabRedDot":Z
    :goto_0
    const/4 v2, 0x0

    .line 92
    .local v2, "showDingTabRedDotChanged":Z
    iget-boolean v3, p0, Lbbl;->b:Z

    if-eq v3, v1, :cond_1

    .line 93
    const/4 v2, 0x1

    .line 94
    iput-boolean v1, p0, Lbbl;->b:Z

    .line 96
    :cond_1
    iget-object v3, p0, Lbbl;->h:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .line 97
    .local v0, "adsChangeListener":Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;
    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0, p1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;->a(I)V

    .line 101
    if-eqz v2, :cond_2

    .line 102
    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;->a(Z)V

    .line 103
    if-eqz v1, :cond_2

    .line 1766
    const-string/jumbo v4, "ding_tab_reddot_show"

    invoke-static {v4}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 1161
    .end local v0    # "adsChangeListener":Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;
    .end local v1    # "showDingTabRedDot":Z
    .end local v2    # "showDingTabRedDotChanged":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    .restart local v1    # "showDingTabRedDot":Z
    .restart local v2    # "showDingTabRedDotChanged":Z
    :cond_4
    return-void
.end method

.method public final a(ILblf;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "dingAdsStyleObject"    # Lblf;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 175
    iget-object v1, p0, Lbbl;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblf;

    .line 176
    .local v0, "mOriginAdsStyleObject":Lblf;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-wide v2, p2, Lblf;->h:J

    iget-wide v4, v0, Lblf;->h:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    invoke-static {p1}, Lbbl;->d(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lblf;->i:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 179
    :goto_0
    invoke-static {v2, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 183
    :cond_1
    return-void

    .line 180
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V
    .locals 1
    .param p1, "adsChangeListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .prologue
    .line 138
    iget-object v0, p0, Lbbl;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public final b(I)Lblf;
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lbbl;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblf;

    return-object v0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lbju;->d()Z

    move-result v0

    .line 121
    .local v0, "showDingAds":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DingAdsCenter] showDingAds:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->Q:Ljava/lang/String;

    iget-object v3, p0, Lbbl;->c:Lblc;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->R:Ljava/lang/String;

    iget-object v3, p0, Lbbl;->d:Lblc;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 125
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->S:Ljava/lang/String;

    iget-object v3, p0, Lbbl;->e:Lblc;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 126
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->T:Ljava/lang/String;

    iget-object v3, p0, Lbbl;->f:Lblc;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V
    .locals 1
    .param p1, "adsChangeListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .prologue
    .line 142
    iget-object v0, p0, Lbbl;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public final c(I)Z
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v2, p0, Lbbl;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblf;

    .line 166
    .local v0, "adsStyleObject":Lblf;
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return v1

    .line 170
    :cond_0
    invoke-static {p1}, Lbbl;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method
