.class public Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
.super Ljava/lang/Object;
.source "RedPacketsFlowObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public clusterId:Ljava/lang/String;

.field public createTime:J

.field public flowId:I

.field public isLuck:Z

.field public leaveMessage:Ljava/lang/String;

.field public modifyTime:J

.field public receiver:J

.field public sender:J

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcbb;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    .locals 7
    .param p0, "model"    # Lcbb;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 51
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;-><init>()V

    .line 52
    .local v0, "redPacketsFlowObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    iget-object v1, p0, Lcbb;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 52
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->createTime:J

    .line 53
    iget-object v1, p0, Lcbb;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 53
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->modifyTime:J

    .line 54
    iget-object v1, p0, Lcbb;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 54
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->sender:J

    .line 55
    iget-object v1, p0, Lcbb;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->clusterId:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcbb;->e:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 56
    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->flowId:I

    .line 57
    iget-object v1, p0, Lcbb;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->amount:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcbb;->g:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 58
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    .line 59
    iget-object v1, p0, Lcbb;->h:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 59
    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->status:I

    .line 60
    iget-object v1, p0, Lcbb;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->leaveMessage:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcbb;->j:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 61
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->isLuck:Z

    .line 62
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 72
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;

    .line 75
    .local v0, "flow":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->sender:J

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->sender:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->receiver:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->clusterId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->clusterId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsFlowObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 78
    goto :goto_0
.end method
