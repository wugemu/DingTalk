.class public Lcom/alibaba/android/dingtalk/live/rpc/model/CallRspObject;
.super Ljava/lang/Object;
.source "CallRspObject.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbug;)Lcom/alibaba/android/dingtalk/live/rpc/model/CallRspObject;
    .locals 1
    .param p0, "model"    # Lbug;

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallRspObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/CallRspObject;-><init>()V

    .line 20
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/CallRspObject;
    goto :goto_0
.end method
