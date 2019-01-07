.class public Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;
.super Ljava/lang/Object;
.source "StopLiveRspObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x23274f8cd3c209aeL


# instance fields
.field public statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbwb;)Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;
    .locals 2
    .param p0, "model"    # Lbwb;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;-><init>()V

    .line 25
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;
    iget-object v1, p0, Lbwb;->a:Lbvm;

    invoke-static {v1}, Lbxk;->a(Lbvm;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    goto :goto_0
.end method
