.class final Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$5;
.super Ljava/lang/Object;
.source "AdsInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;->setExternalData(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

.field final synthetic b:Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$5;->b:Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$5;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 179
    iget-object v1, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$5;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/alibaba/android/ads/model/AdsPositionsObject;

    invoke-direct {v0}, Lcom/alibaba/android/ads/model/AdsPositionsObject;-><init>()V

    .line 183
    .local v0, "adsPositionsObject":Lcom/alibaba/android/ads/model/AdsPositionsObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    .line 184
    iget-object v1, v0, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$5;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lanm;->b(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V

    .line 186
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lanm;->a(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V

    goto :goto_0
.end method
