.class public Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;
.super Ljava/lang/Object;
.source "RedPacketsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public businessId:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public clusterId:Ljava/lang/String;

.field public createTime:J

.field public flowId:I

.field public isLuck:Z

.field public modifyTime:J

.field public oid:J

.field public receiver:J

.field public sender:J

.field public status:I

.field public statusMsg:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcbc;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;
    .locals 7
    .param p0, "model"    # Lcbc;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;-><init>()V

    .line 59
    .local v0, "redPacketsObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;
    iget-object v1, p0, Lcbc;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 59
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->createTime:J

    .line 60
    iget-object v1, p0, Lcbc;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 60
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->modifyTime:J

    .line 61
    iget-object v1, p0, Lcbc;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 61
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->receiver:J

    .line 62
    iget-object v1, p0, Lcbc;->g:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 62
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->sender:J

    .line 63
    iget-object v1, p0, Lcbc;->l:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 63
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->oid:J

    .line 64
    iget-object v1, p0, Lcbc;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->businessId:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcbc;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->clusterId:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcbc;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->amount:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcbc;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->cid:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcbc;->f:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 68
    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->flowId:I

    .line 69
    iget-object v1, p0, Lcbc;->i:Ljava/lang/Integer;

    .line 7033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 69
    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->type:I

    .line 70
    iget-object v1, p0, Lcbc;->j:Ljava/lang/Integer;

    .line 8033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 70
    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->status:I

    .line 71
    iget-object v1, p0, Lcbc;->m:Ljava/lang/Boolean;

    .line 9022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 71
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->isLuck:Z

    .line 72
    iget-object v1, p0, Lcbc;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->statusMsg:Ljava/lang/String;

    .line 74
    return-object v0
.end method
