.class public Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;
.super Ljava/lang/Object;
.source "StopLiveReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3ddc1db50bc4ddb2L


# instance fields
.field public cid:Ljava/lang/String;

.field public liveUuid:Ljava/lang/String;

.field public nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;)Lbwa;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lbwa;

    invoke-direct {v0}, Lbwa;-><init>()V

    .line 27
    .local v0, "model":Lbwa;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbwa;->a:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->liveUuid:Ljava/lang/String;

    iput-object v1, v0, Lbwa;->b:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lbwa;->c:Ljava/lang/String;

    goto :goto_0
.end method
