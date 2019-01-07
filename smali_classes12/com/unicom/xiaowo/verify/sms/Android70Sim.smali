.class public Lcom/unicom/xiaowo/verify/sms/Android70Sim;
.super Ljava/lang/Object;
.source "Android70Sim.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/sms/ISim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;,
        Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;
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
            "Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_simMap:Ljava/util/HashMap;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_inited:Z

    .line 22
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_context:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_inited:Z

    .line 25
    return-void
.end method

.method private checkInited()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_inited:Z

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Android51Sim Init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    return-void
.end method

.method private checkMethods()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getNetworkOperatorForPhone"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getNetworkOperatorName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSimOperatorNameForPhone"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSubscriberId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "isNetworkRoaming"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    const-string/jumbo v2, "android.telephony.SmsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getSmsManagerForSubscriptionId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Android7.0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    move v0, v1

    .line 62
    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_context:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 31
    return-object v0
.end method

.method private init()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->loadLocalSimInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 46
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkMethods()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " init OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadLocalSimInfo()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_simMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    const-string/jumbo v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_context:Landroid/content/Context;

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "getActiveSubscriptionInfoList"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->checkMethodExist(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 99
    :goto_0
    return v0

    .line 76
    :cond_0
    const-string/jumbo v0, "getActiveSubscriptionInfoList"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 79
    new-instance v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;-><init>(Lcom/unicom/xiaowo/verify/sms/Android70Sim$1;)V

    .line 80
    const-string/jumbo v0, "mSimSlotIndex"

    const/16 v7, -0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->slotId:I

    .line 81
    const-string/jumbo v0, "mId"

    const/16 v7, -0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->subId:I

    .line 82
    const-string/jumbo v0, "mMcc"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->mcc:I

    .line 83
    const-string/jumbo v0, "mMnc"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->mnc:I

    .line 84
    const-string/jumbo v0, "mDisplayName"

    const-string/jumbo v7, ""

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->displayName:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "getPhoneId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->subId:I

    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 85
    invoke-static {v3, v0, v5, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->phoneId:I

    .line 90
    invoke-virtual {v6}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->verify()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_simMap:Ljava/util/HashMap;

    iget v5, v6, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->slotId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 99
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 95
    goto/16 :goto_0
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 216
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 216
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 198
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 199
    const-string/jumbo v0, ""

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 203
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 203
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-string/jumbo v0, "Android70Sim"

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 148
    const-string/jumbo v0, ""

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 152
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "getNetworkOperator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 152
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 163
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 164
    const-string/jumbo v0, ""

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 168
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "getSimOperatorName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 168
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 180
    const-string/jumbo v0, ""

    .line 188
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 185
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimState(I)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 231
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 231
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 234
    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSubId(I)J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 348
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_simMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;

    .line 349
    if-nez v0, :cond_0

    .line 350
    const-wide/16 v0, -0x3e8

    .line 352
    :goto_0
    return-wide v0

    :cond_0
    iget v0, v0, Lcom/unicom/xiaowo/verify/sms/Android70Sim$LocalSimInfo;->subId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isDataConnectEnabled(I)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 245
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 253
    :goto_0
    return v0

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 251
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "getDataEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 251
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNetworkRoaming(I)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 263
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 268
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "isNetworkRoaming"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 268
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->_inited:Z

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

    .line 304
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 306
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSubId(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 307
    int-to-long v4, v2

    const-wide/16 v6, -0x3e8

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 308
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

    .line 338
    :goto_0
    return v0

    .line 312
    :cond_0
    const-string/jumbo v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 313
    const-string/jumbo v3, "getSmsManagerForSubscriptionId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 314
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 313
    invoke-static {v0, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
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

    .line 335
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

    .line 332
    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 338
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

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

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->checkInited()V

    .line 280
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;->getSubId(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 281
    int-to-long v4, v2

    const-wide/16 v6, -0x3e8

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 282
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

    .line 295
    :goto_0
    return v0

    .line 286
    :cond_0
    const-string/jumbo v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 287
    const-string/jumbo v3, "getSmsManagerForSubscriptionId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 287
    invoke-static {v0, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 290
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

    .line 295
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
