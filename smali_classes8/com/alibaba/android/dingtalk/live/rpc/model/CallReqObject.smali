.class public final Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;
.super Ljava/lang/Object;
.source "CallReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4a3f2e144be0bc1L


# instance fields
.field public channelId:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public data:[B

.field public fansId:I

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

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;)Lbuf;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;

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
    new-instance v0, Lbuf;

    invoke-direct {v0}, Lbuf;-><init>()V

    .line 39
    .local v0, "model":Lbuf;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbuf;->a:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbuf;->b:Ljava/lang/String;

    .line 41
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->fansId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbuf;->c:Ljava/lang/Integer;

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lbuf;->d:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lbuf;->e:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CallReqObject;->data:[B

    iput-object v1, v0, Lbuf;->f:[B

    goto :goto_0
.end method
