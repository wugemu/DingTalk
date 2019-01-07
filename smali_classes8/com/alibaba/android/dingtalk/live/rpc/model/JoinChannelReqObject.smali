.class public Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;
.super Ljava/lang/Object;
.source "JoinChannelReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf2f1d5ce04d2ca3L


# instance fields
.field public channelId:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public data:[B

.field public requestId:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;)Lbus;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lbus;

    invoke-direct {v0}, Lbus;-><init>()V

    .line 36
    .local v0, "model":Lbus;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbus;->a:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbus;->b:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lbus;->c:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lbus;->d:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/JoinChannelReqObject;->data:[B

    iput-object v1, v0, Lbus;->e:[B

    goto :goto_0
.end method
