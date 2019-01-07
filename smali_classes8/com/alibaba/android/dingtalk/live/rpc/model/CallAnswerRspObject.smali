.class public Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerRspObject;
.super Ljava/lang/Object;
.source "CallAnswerRspObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c68f5c318837344L


# instance fields
.field public artcResultObject:Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbue;)Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerRspObject;
    .locals 2
    .param p0, "model"    # Lbue;

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerRspObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerRspObject;-><init>()V

    .line 23
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerRspObject;
    iget-object v1, p0, Lbue;->a:Lbuc;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;->fromIdl(Lbuc;)Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerRspObject;->artcResultObject:Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;

    goto :goto_0
.end method
