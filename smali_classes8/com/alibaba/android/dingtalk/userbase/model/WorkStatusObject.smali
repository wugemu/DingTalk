.class public Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;
.super Ljava/lang/Object;
.source "WorkStatusObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2cfeb9f9728ec624L


# instance fields
.field public mBegTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mEndTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mWorkStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcgo;)Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;
    .locals 6
    .param p0, "model"    # Lcgo;

    .prologue
    const-wide/16 v4, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;-><init>()V

    .line 60
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;
    iget-object v1, p0, Lcgo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mWorkStatus:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcgo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mColor:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcgo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mTitle:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcgo;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mDesc:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcgo;->e:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 64
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mBegTime:J

    .line 65
    iget-object v1, p0, Lcgo;->f:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 65
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mEndTime:J

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;)Lcgo;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcgo;

    invoke-direct {v0}, Lcgo;-><init>()V

    .line 76
    .local v0, "model":Lcgo;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mWorkStatus:Ljava/lang/String;

    iput-object v1, v0, Lcgo;->a:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mColor:Ljava/lang/String;

    iput-object v1, v0, Lcgo;->b:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcgo;->c:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mDesc:Ljava/lang/String;

    iput-object v1, v0, Lcgo;->d:Ljava/lang/String;

    .line 80
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mBegTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgo;->e:Ljava/lang/Long;

    .line 81
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgo;->f:Ljava/lang/Long;

    goto :goto_0
.end method
