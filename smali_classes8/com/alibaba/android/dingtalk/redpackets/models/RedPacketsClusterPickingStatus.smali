.class public Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
.super Ljava/lang/Object;
.source "RedPacketsClusterPickingStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public curUserAmount:Ljava/lang/String;

.field public detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

.field public pickStatus:I

.field public redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcaz;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    .locals 3
    .param p0, "model"    # Lcaz;

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;-><init>()V

    .line 39
    .local v0, "redPacketsClusterPickingStatus":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    iget-object v1, p0, Lcaz;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 39
    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    .line 40
    iget-object v1, p0, Lcaz;->c:Lcax;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcaz;->c:Lcax;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->fromIDL(Lcax;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    .line 43
    :cond_0
    iget-object v1, p0, Lcaz;->b:Lcay;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->fromIDL(Lcay;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 44
    iget-object v1, p0, Lcaz;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->curUserAmount:Ljava/lang/String;

    .line 45
    return-object v0
.end method
