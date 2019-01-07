.class public Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;
.super Ljava/lang/Object;
.source "BalanceObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dingdingBalance:Ljava/lang/String;

.field public enable:I

.field public hongbaoBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcas;)Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;
    .locals 2
    .param p0, "model"    # Lcas;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "balanceObject":Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;
    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;

    .end local v0    # "balanceObject":Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;
    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;-><init>()V

    .line 22
    .restart local v0    # "balanceObject":Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;
    iget-object v1, p0, Lcas;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;->dingdingBalance:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcas;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;->hongbaoBalance:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcas;->c:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/BalanceObject;->enable:I

    .line 27
    :cond_0
    return-object v0
.end method
