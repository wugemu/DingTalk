.class public Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;
.super Ljava/lang/Object;
.source "RedEnvelopGoodTimeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pickPlanTime:J

.field public planTimeExplain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcbf;)Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;
    .locals 4
    .param p0, "model"    # Lcbf;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;-><init>()V

    .line 30
    .local v0, "object":Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;
    iget-object v1, p0, Lcbf;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 30
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;->pickPlanTime:J

    .line 31
    iget-object v1, p0, Lcbf;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;->planTimeExplain:Ljava/lang/String;

    goto :goto_0
.end method
