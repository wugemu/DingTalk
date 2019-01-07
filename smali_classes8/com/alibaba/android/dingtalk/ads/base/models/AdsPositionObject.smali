.class public Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
.super Ljava/lang/Object;
.source "AdsPositionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d14981d096fb1b7L


# instance fields
.field public adsId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public priority:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ver:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lblj;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    .locals 4
    .param p0, "model"    # Lblj;

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;-><init>()V

    .line 54
    .local v0, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    if-eqz p0, :cond_0

    .line 55
    iget-object v1, p0, Lblj;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lblj;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 56
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    .line 57
    iget-object v1, p0, Lblj;->c:Lbli;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->fromIDLModel(Lbli;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    .line 58
    iget-object v1, p0, Lblj;->d:Lblk;

    iget-object v2, p0, Lblj;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->fromIDLModel(Lblk;J)Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    .line 59
    iget-object v1, p0, Lblj;->e:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 59
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->priority:I

    .line 60
    iget-object v1, p0, Lblj;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->adsId:Ljava/lang/String;

    .line 62
    :cond_0
    return-object v0
.end method
