.class Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;
.super Ljava/lang/Object;
.source "Android51Sim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/sms/Android51Sim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalSimInfo"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public mcc:I

.field public mnc:I

.field public phoneId:I

.field public slotId:I

.field public subId:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x3e8

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v1, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->subId:I

    .line 106
    iput v1, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->slotId:I

    .line 107
    iput v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->mcc:I

    .line 108
    iput v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->mnc:I

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->displayName:Ljava/lang/String;

    .line 110
    iput v1, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->phoneId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/unicom/xiaowo/verify/sms/Android51Sim$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    const-string/jumbo v0, "subId:%d, slotId:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->subId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->slotId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->subId:I

    if-gez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    iget v1, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->slotId:I

    if-ltz v1, :cond_0

    .line 126
    iget v1, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->phoneId:I

    if-ltz v1, :cond_0

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method