.class public Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;
.super Ljava/lang/Object;
.source "KickReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4be8fa5ef0901324L


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

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;)Lbuu;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;

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
    new-instance v0, Lbuu;

    invoke-direct {v0}, Lbuu;-><init>()V

    .line 39
    .local v0, "model":Lbuu;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbuu;->a:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbuu;->b:Ljava/lang/String;

    .line 41
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->fansId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbuu;->c:Ljava/lang/Integer;

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lbuu;->d:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lbuu;->e:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/KickReqObject;->data:[B

    iput-object v1, v0, Lbuu;->f:[B

    goto :goto_0
.end method
