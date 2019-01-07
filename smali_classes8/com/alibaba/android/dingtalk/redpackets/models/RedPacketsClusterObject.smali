.class public Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
.super Ljava/lang/Object;
.source "RedPacketsClusterObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alipayOrderString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alipayOrderString"
    .end annotation
.end field

.field public alipayStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alipayStatus"
    .end annotation
.end field

.field public amount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field public amountRange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amountRange"
    .end annotation
.end field

.field public businessId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "businessId"
    .end annotation
.end field

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cid"
    .end annotation
.end field

.field public clusterId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clusterId"
    .end annotation
.end field

.field public congratulations:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "String"
    .end annotation
.end field

.field public count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createTime"
    .end annotation
.end field

.field public ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ext"
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modifyTime"
    .end annotation
.end field

.field public oid:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oid"
    .end annotation
.end field

.field public pickDoneTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pickDoneTime"
    .end annotation
.end field

.field public pickPlanTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pickPlanTime"
    .end annotation
.end field

.field public pickTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pickTime"
    .end annotation
.end field

.field public receivers:[Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receivers"
    .end annotation
.end field

.field public sender:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender"
    .end annotation
.end field

.field public senderPayType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "senderPayType"
    .end annotation
.end field

.field public size:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcay;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    .locals 9
    .param p0, "model"    # Lcay;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    .line 90
    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;-><init>()V

    .line 91
    .local v2, "redPacketsClusterDetailObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    iget-object v3, p0, Lcay;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 91
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->createTime:J

    .line 92
    iget-object v3, p0, Lcay;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 92
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->modifyTime:J

    .line 93
    iget-object v3, p0, Lcay;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 93
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    .line 94
    iget-object v3, p0, Lcay;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->businessId:Ljava/lang/String;

    .line 95
    iget-object v3, p0, Lcay;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lcay;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    .line 97
    iget-object v3, p0, Lcay;->g:Ljava/lang/Integer;

    .line 4033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 97
    iput v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    .line 98
    iget-object v3, p0, Lcay;->h:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcay;->h:Ljava/util/List;

    iget-object v6, p0, Lcay;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Long;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Long;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    .line 101
    :cond_0
    iget-object v3, p0, Lcay;->i:Ljava/lang/Integer;

    .line 5033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 101
    iput v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    .line 102
    iget-object v3, p0, Lcay;->j:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->cid:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lcay;->k:Ljava/lang/Integer;

    .line 6033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 103
    iput v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->count:I

    .line 104
    iget-object v3, p0, Lcay;->l:Ljava/lang/Integer;

    .line 7033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 104
    iput v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    .line 105
    iget-object v3, p0, Lcay;->m:Ljava/lang/Long;

    .line 7044
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 105
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    .line 106
    iget-object v3, p0, Lcay;->n:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcay;->o:Ljava/lang/Long;

    .line 8044
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 107
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickTime:J

    .line 108
    iget-object v3, p0, Lcay;->p:Ljava/lang/Long;

    .line 9044
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 108
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickDoneTime:J

    .line 109
    iget-object v3, p0, Lcay;->q:Ljava/lang/Integer;

    .line 10033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 109
    iput v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->alipayStatus:I

    .line 110
    iget-object v3, p0, Lcay;->r:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->alipayOrderString:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcay;->s:Ljava/lang/Long;

    if-nez v3, :cond_2

    :goto_0
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    .line 112
    iget-object v3, p0, Lcay;->t:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :try_start_0
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 115
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 118
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcay;->t:Ljava/lang/String;

    const-class v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    invoke-static {v1, v3, v4}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcay;->u:Ljava/lang/Integer;

    .line 11033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 124
    iput v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->senderPayType:I

    .line 125
    iget-object v3, p0, Lcay;->v:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amountRange:Ljava/lang/String;

    .line 126
    return-object v2

    .line 111
    :cond_2
    iget-object v3, p0, Lcay;->s:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
