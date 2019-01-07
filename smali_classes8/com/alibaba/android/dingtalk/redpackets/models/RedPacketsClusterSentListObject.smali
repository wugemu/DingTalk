.class public Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;
.super Ljava/lang/Object;
.source "RedPacketsClusterSentListObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mSentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalAmount:Ljava/lang/String;

.field public mTotalRedEnvelop:I

.field public mTotalRedEnvelopCluster:I

.field public mYear:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcba;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;
    .locals 5
    .param p0, "model"    # Lcba;

    .prologue
    const/4 v3, 0x0

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    .line 46
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;-><init>()V

    .line 47
    .local v1, "redPacketsClusterSentListObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;
    iget-object v2, p0, Lcba;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 47
    iput v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mYear:I

    .line 48
    iget-object v2, p0, Lcba;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 48
    iput v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mTotalRedEnvelopCluster:I

    .line 49
    iget-object v2, p0, Lcba;->c:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 49
    iput v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mTotalRedEnvelop:I

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mSentList:Ljava/util/List;

    .line 51
    iget-object v2, p0, Lcba;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lcba;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcay;

    .line 53
    .local v0, "redEnvelopClusterModel":Lcay;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mSentList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->fromIDL(Lcay;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    .end local v0    # "redEnvelopClusterModel":Lcay;
    :cond_1
    iget-object v2, p0, Lcba;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mTotalAmount:Ljava/lang/String;

    goto :goto_0
.end method
