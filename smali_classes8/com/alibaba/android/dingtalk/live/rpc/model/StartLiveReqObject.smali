.class public Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;
.super Ljava/lang/Object;
.source "StartLiveReqObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x9759d6e2671a7cL


# instance fields
.field public cid:Ljava/lang/String;

.field public codeLevel:I

.field public coverUrl:Ljava/lang/String;

.field public dingRemindType:I

.field public enableLinkMic:Z

.field public isLandscape:I

.field public nickname:Ljava/lang/String;

.field public recordSeenLevel:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;)Lbvw;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lbvw;

    invoke-direct {v0}, Lbvw;-><init>()V

    .line 48
    .local v0, "model":Lbvw;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lbvw;->a:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lbvw;->b:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->coverUrl:Ljava/lang/String;

    iput-object v1, v0, Lbvw;->c:Ljava/lang/String;

    .line 51
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->isLandscape:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbvw;->d:Ljava/lang/Integer;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lbvw;->e:Ljava/lang/String;

    .line 53
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->codeLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbvw;->f:Ljava/lang/Integer;

    .line 54
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->recordSeenLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbvw;->g:Ljava/lang/Integer;

    .line 55
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->dingRemindType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbvw;->i:Ljava/lang/Integer;

    .line 56
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->enableLinkMic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lbvw;->j:Ljava/lang/Boolean;

    goto :goto_0
.end method
