.class public Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;
.super Ljava/lang/Object;
.source "CallAnswerReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x29c66ccc5bbad9a1L


# instance fields
.field public anchorId:I

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

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;)Lbud;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lbud;

    invoke-direct {v0}, Lbud;-><init>()V

    .line 39
    .local v0, "model":Lbud;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbud;->a:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbud;->b:Ljava/lang/String;

    .line 41
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->anchorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbud;->c:Ljava/lang/Integer;

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lbud;->d:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lbud;->e:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallAnswerReqObject;->data:[B

    iput-object v1, v0, Lbud;->f:[B

    goto :goto_0
.end method
