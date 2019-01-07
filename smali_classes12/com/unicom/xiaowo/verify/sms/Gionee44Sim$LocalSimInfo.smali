.class Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;
.super Ljava/lang/Object;
.source "Gionee44Sim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalSimInfo"
.end annotation


# instance fields
.field public mSimId:J

.field public mSlot:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;->mSimId:J

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;->mSlot:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSimId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;->mSimId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSlot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;->mSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
