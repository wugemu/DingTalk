.class public Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;
.super Ljava/lang/Object;
.source "DualSimPlatform.java"


# static fields
.field private static s_instance:Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;->s_instance:Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;

    invoke-direct {v0}, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;-><init>()V

    sput-object v0, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;->s_instance:Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;

    .line 19
    :cond_0
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;->s_instance:Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getIMSI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public isDataConnectEnabled(I)Z
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->isDataConnectEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isDualSim()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1}, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/unicom/xiaowo/verify/sms/DualSimPlatform;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isSimEnabled(I)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getSimState(I)I

    move-result v0

    .line 31
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
