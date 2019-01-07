.class public Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;
.super Ljava/lang/Object;
.source "CancelCallReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x24fb1af6f83c98d2L


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

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;)Lbuj;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lbuj;

    invoke-direct {v0}, Lbuj;-><init>()V

    .line 33
    .local v0, "model":Lbuj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbuj;->a:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbuj;->b:Ljava/lang/String;

    .line 35
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->fansId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbuj;->c:Ljava/lang/Integer;

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lbuj;->d:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lbuj;->e:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/CancelCallReqObject;->data:[B

    iput-object v1, v0, Lbuj;->f:[B

    goto :goto_0
.end method
