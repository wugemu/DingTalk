.class Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;
.super Ljava/lang/Object;
.source "Android50Sim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/sms/Android50Sim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalSimInfo"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public mcc:I

.field public mnc:I

.field public slotId:I

.field public subId:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->subId:J

    .line 68
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->slotId:I

    .line 69
    iput v2, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->mcc:I

    .line 70
    iput v2, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->mnc:I

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unicom/xiaowo/verify/sms/Android50Sim$1;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "subId:%d, slotId:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->subId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->slotId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-wide v2, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->subId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget v1, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->slotId:I

    if-ltz v1, :cond_0

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method
