.class public Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;
.super Ljava/lang/Object;
.source "ReportReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x24ae543307f53dd0L


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

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;)Lbvp;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;

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
    new-instance v0, Lbvp;

    invoke-direct {v0}, Lbvp;-><init>()V

    .line 36
    .local v0, "model":Lbvp;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbvp;->a:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbvp;->b:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lbvp;->c:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->requestId:Ljava/lang/String;

    iput-object v1, v0, Lbvp;->d:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/ReportReqObject;->data:[B

    iput-object v1, v0, Lbvp;->e:[B

    goto :goto_0
.end method
