.class public Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;
.super Ljava/lang/Object;
.source "AcquireResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:Ljava/lang/String;

.field public detailErrorCode:Ljava/lang/String;

.field public tradeStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcar;)Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;
    .locals 2
    .param p0, "model"    # Lcar;

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;-><init>()V

    .line 40
    .local v0, "acquireResultObject":Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;
    iget-object v1, p0, Lcar;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;->code:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcar;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;->tradeStatus:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcar;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;->detailErrorCode:Ljava/lang/String;

    .line 43
    return-object v0
.end method
