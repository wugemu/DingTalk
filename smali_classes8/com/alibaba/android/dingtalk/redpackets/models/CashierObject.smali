.class public Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;
.super Ljava/lang/Object;
.source "CashierObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PAY_METHOD_ALIPAY:I = 0x0

.field public static final PAY_METHOD_BALANCE:I = 0x2


# instance fields
.field public defaultPayMethod:Ljava/lang/Integer;

.field public quotaAvailable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcat;)Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;
    .locals 2
    .param p0, "model"    # Lcat;

    .prologue
    .line 20
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;-><init>()V

    .line 21
    .local v0, "cashierObject":Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;
    iget-object v1, p0, Lcat;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;->quotaAvailable:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcat;->b:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;->defaultPayMethod:Ljava/lang/Integer;

    .line 23
    return-object v0
.end method
