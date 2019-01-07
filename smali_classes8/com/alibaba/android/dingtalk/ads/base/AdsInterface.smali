.class public abstract Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;
.super Lckb;
.source "AdsInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    return-object v0
.end method


# virtual methods
.method public addNoEntryId(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public checkAdsCacheAsCurrentUid()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method public clickStatistics(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public register(Ljava/lang/String;Lblc;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lblc;

    .prologue
    .line 64
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .prologue
    .line 43
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 54
    return-void
.end method

.method public setExternalData(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    .line 131
    return-void
.end method

.method public setWidgetHiden(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 83
    return-void
.end method

.method public testPush()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method
