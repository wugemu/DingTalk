.class public Lcom/alibaba/android/ads/model/AdsPositionsObject;
.super Ljava/lang/Object;
.source "AdsPositionsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d14981d096fb1b8L


# instance fields
.field public adsPositionObjects:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lans;)Lcom/alibaba/android/ads/model/AdsPositionsObject;
    .locals 5
    .param p0, "model"    # Lans;

    .prologue
    .line 40
    new-instance v2, Lcom/alibaba/android/ads/model/AdsPositionsObject;

    invoke-direct {v2}, Lcom/alibaba/android/ads/model/AdsPositionsObject;-><init>()V

    .line 41
    .local v2, "object":Lcom/alibaba/android/ads/model/AdsPositionsObject;
    if-eqz p0, :cond_0

    iget-object v3, p0, Lans;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lans;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 50
    :cond_0
    return-object v2

    .line 45
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    .line 46
    iget-object v3, p0, Lans;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    .line 47
    .local v0, "adsPositionModel":Lblj;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->fromIDLModel(Lblj;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    move-result-object v1

    .line 48
    .local v1, "adsPositionObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    iget-object v4, v2, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
