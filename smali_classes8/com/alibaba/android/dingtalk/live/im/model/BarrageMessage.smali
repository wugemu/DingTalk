.class public Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
.super Ljava/lang/Object;
.source "BarrageMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x633a7546b9afd77eL


# instance fields
.field public liveContent:Ljava/lang/String;

.field public mLiveMessage:Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

.field public message:Lcom/alibaba/wukong/im/Message;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    instance-of v3, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    if-nez v3, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 30
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    .line 34
    .local v0, "msg":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
