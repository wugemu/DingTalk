.class public Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;
.super Ljava/lang/Object;
.source "ApplyForWheatRspObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3059c4876c9a71ccL


# instance fields
.field public count:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbub;)Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;
    .locals 4
    .param p0, "model"    # Lbub;

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;-><init>()V

    .line 23
    .local v0, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;
    iget-object v1, p0, Lbub;->a:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;->count:J

    goto :goto_0
.end method
