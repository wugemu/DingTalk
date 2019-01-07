.class public Lcom/unicom/xiaowo/verify/sms/Android50Sim;
.super Ljava/lang/Object;
.source "Android50Sim.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/sms/ISim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private _inited:Z

.field private _simMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_simMap:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_inited:Z

    .line 21
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_context:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_inited:Z

    .line 23
    return-void
.end method

.method private checkInited()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_inited:Z

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Android50Sim Init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    return-void
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_context:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private init()Z
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->loadLocalSimInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " init Fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " init OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadLocalSimInfo()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_simMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    const-string/jumbo v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    const-string/jumbo v2, "getActiveSubInfoList"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->checkMethodExist(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 62
    :goto_0
    return v0

    .line 43
    :cond_0
    const-string/jumbo v2, "getActiveSubInfoList"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 44
    if-eqz v0, :cond_2

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 46
    new-instance v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;-><init>(Lcom/unicom/xiaowo/verify/sms/Android50Sim$1;)V

    .line 47
    const-string/jumbo v0, "slotId"

    const/16 v5, -0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->slotId:I

    .line 48
    const-string/jumbo v0, "subId"

    const/16 v5, -0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->subId:J

    .line 49
    const-string/jumbo v0, "slotId"

    const/16 v5, -0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->slotId:I

    .line 50
    const-string/jumbo v0, "mcc"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->mcc:I

    .line 51
    const-string/jumbo v0, "mnc"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->mnc:I

    .line 52
    const-string/jumbo v0, "displayName"

    const-string/jumbo v5, ""

    invoke-static {v3, v0, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->displayName:Ljava/lang/String;

    .line 55
    invoke-virtual {v4}, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->verify()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_simMap:Ljava/util/HashMap;

    iget v3, v4, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->slotId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 62
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 178
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string/jumbo v1, "getDeviceId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 178
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 160
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 161
    const-string/jumbo v0, ""

    .line 165
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSubId(I)J

    move-result-wide v0

    .line 165
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "getSubscriberId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    .line 165
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string/jumbo v0, "Android50Sim"

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 109
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 110
    const-string/jumbo v0, ""

    .line 114
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSubId(I)J

    move-result-wide v0

    .line 114
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "getNetworkOperator"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    .line 114
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 125
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 126
    const-string/jumbo v0, ""

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSubId(I)J

    move-result-wide v0

    .line 130
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "getSimOperatorName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    .line 130
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 141
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 142
    const-string/jumbo v0, ""

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string/jumbo v1, "getSimSerialNumber"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 147
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimState(I)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 193
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string/jumbo v1, "getSimState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 193
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSubId(I)J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 314
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_simMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;

    .line 315
    if-nez v0, :cond_0

    .line 316
    const-wide/16 v0, -0x3e8

    .line 318
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/unicom/xiaowo/verify/sms/Android50Sim$LocalSimInfo;->subId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isDataConnectEnabled(I)Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 207
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSimState(I)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 219
    :goto_0
    return v0

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSubId(I)J

    move-result-wide v4

    .line 212
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string/jumbo v3, "getDataState"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Long;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 213
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    .line 212
    invoke-static {v0, v3, v6, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 215
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 216
    goto :goto_0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNetworkRoaming(I)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 229
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSubId(I)J

    move-result-wide v0

    .line 234
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "isNetworkRoaming"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 235
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    .line 234
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->_inited:Z

    return v0
.end method

.method public sendDataMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 272
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSubId(I)J

    move-result-wide v2

    .line 273
    const-wide/16 v4, -0x3e8

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 274
    const-string/jumbo v1, "simid(%s) does NOT exist, bye"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 304
    :goto_0
    return v0

    .line 278
    :cond_0
    const-string/jumbo v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 279
    const-string/jumbo v4, "getSmsManagerForSubscriber"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    .line 279
    invoke-static {v0, v4, v5, v6}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    const-string/jumbo v2, "sendDataMessage"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, [B

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 301
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    .line 298
    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 304
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendTextMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->checkInited()V

    .line 246
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;->getSubId(I)J

    move-result-wide v2

    .line 247
    const-wide/16 v4, -0x3e8

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 248
    const-string/jumbo v1, "simid(%s) does NOT exist, bye"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 261
    :goto_0
    return v0

    .line 252
    :cond_0
    const-string/jumbo v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 253
    const-string/jumbo v4, "getSmsManagerForSubscriber"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 254
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    .line 253
    invoke-static {v0, v4, v5, v6}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 256
    const-string/jumbo v2, "sendTextMessage"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x4

    aput-object p6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 261
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
