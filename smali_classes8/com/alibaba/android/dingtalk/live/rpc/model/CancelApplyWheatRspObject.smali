.class public Lcom/alibaba/android/dingtalk/live/rpc/model/CancelApplyWheatRspObject;
.super Ljava/lang/Object;
.source "CancelApplyWheatRspObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7772af85713e37a2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbui;)Lcom/alibaba/android/dingtalk/live/rpc/model/CancelApplyWheatRspObject;
    .locals 1
    .param p0, "model"    # Lbui;

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelApplyWheatRspObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelApplyWheatRspObject;-><init>()V

    .line 22
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/CancelApplyWheatRspObject;
    goto :goto_0
.end method
