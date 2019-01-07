.class public Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;
.super Ljava/lang/Object;
.source "UserOverageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e63304d3433fb1eL


# instance fields
.field public callMins:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dingTimes:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userRightsLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->dingTimes:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->callMins:J

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->userRightsLevel:I

    return-void
.end method

.method public static fromIdl(Lcgg;)Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;
    .locals 5
    .param p0, "model"    # Lcgg;

    .prologue
    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;-><init>()V

    .line 27
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;
    if-eqz p0, :cond_0

    .line 28
    iget-object v1, p0, Lcgg;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 28
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->dingTimes:I

    .line 29
    iget-object v1, p0, Lcgg;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 29
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->callMins:J

    .line 30
    iget-object v1, p0, Lcgg;->c:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 30
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->userRightsLevel:I

    .line 32
    :cond_0
    return-object v0
.end method
