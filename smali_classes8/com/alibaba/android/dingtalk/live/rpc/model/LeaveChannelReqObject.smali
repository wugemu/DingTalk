.class public Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;
.super Ljava/lang/Object;
.source "LeaveChannelReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


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

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;)Lbuw;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lbuw;

    invoke-direct {v0}, Lbuw;-><init>()V

    .line 34
    .local v0, "model":Lbuw;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbuw;->a:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbuw;->b:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lbuw;->c:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lbuw;->d:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/LeaveChannelReqObject;->data:[B

    iput-object v1, v0, Lbuw;->e:[B

    goto :goto_0
.end method
