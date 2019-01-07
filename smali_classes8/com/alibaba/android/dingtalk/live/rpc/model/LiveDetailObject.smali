.class public Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;
.super Ljava/lang/Object;
.source "LiveDetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2859963c6534b8efL


# instance fields
.field public liveInfo:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

.field public statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbuq;)Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;
    .locals 2
    .param p0, "model"    # Lbuq;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;-><init>()V

    .line 41
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;
    iget-object v1, p0, Lbuq;->a:Lbvl;

    invoke-static {v1}, Lbxk;->a(Lbvl;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->liveInfo:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 42
    iget-object v1, p0, Lbuq;->b:Lbvm;

    invoke-static {v1}, Lbxk;->a(Lbvm;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    goto :goto_0
.end method

.method public static fromIdl(Lbvk;)Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;
    .locals 2
    .param p0, "model"    # Lbvk;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;-><init>()V

    .line 29
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;
    iget-object v1, p0, Lbvk;->a:Lbvl;

    invoke-static {v1}, Lbxk;->a(Lbvl;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->liveInfo:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 30
    iget-object v1, p0, Lbvk;->b:Lbvm;

    invoke-static {v1}, Lbxk;->a(Lbvm;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->statistics:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    goto :goto_0
.end method
