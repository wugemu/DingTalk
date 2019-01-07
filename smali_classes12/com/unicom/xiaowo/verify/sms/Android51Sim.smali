.class public Lcom/unicom/xiaowo/verify/sms/Android51Sim;
.super Ljava/lang/Object;
.source "Android51Sim.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/sms/ISim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;,
        Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;
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
            "Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;",
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

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_simMap:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_inited:Z

    .line 21
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_context:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_inited:Z

    .line 24
    return-void
.end method

.method private checkInited()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_inited:Z

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Android51Sim Init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
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

    .line 48
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getNetworkOperatorForSubscription"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getNetworkOperatorName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSimOperatorNameForSubscription"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSubscriberId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "isNetworkRoaming"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
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

    .line 60
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Android5.1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    move v0, v1

    .line 58
    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_context:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 28
    return-object v0
.end method

.method private init()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->loadLocalSimInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 43
    :goto_0
    return v0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkMethods()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getName()Ljava/lang/String;

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

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " init OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 43
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

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_simMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    const-string/jumbo v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 68
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_context:Landroid/content/Context;

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "getActiveSubscriptionInfoList"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->checkMethodExist(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 94
    :goto_0
    return v0

    .line 72
    :cond_0
    const-string/jumbo v0, "getActiveSubscriptionInfoList"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    if-eqz v0, :cond_2

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 75
    new-instance v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;-><init>(Lcom/unicom/xiaowo/verify/sms/Android51Sim$1;)V

    .line 76
    const-string/jumbo v0, "mSimSlotIndex"

    const/16 v7, -0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->slotId:I

    .line 77
    const-string/jumbo v0, "mId"

    const/16 v7, -0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->subId:I

    .line 78
    const-string/jumbo v0, "mMcc"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->mcc:I

    .line 79
    const-string/jumbo v0, "mMnc"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->mnc:I

    .line 80
    const-string/jumbo v0, "mDisplayName"

    const-string/jumbo v7, ""

    invoke-static {v5, v0, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->displayName:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "getPhoneId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->subId:I

    .line 82
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 81
    invoke-static {v3, v0, v5, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->phoneId:I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SUBINFO] "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->verify()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_simMap:Ljava/util/HashMap;

    iget v5, v6, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->slotId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 94
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 91
    goto/16 :goto_0
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 211
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 211
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 193
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 194
    const-string/jumbo v0, ""

    .line 198
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 198
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 198
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string/jumbo v0, "Android51Sim"

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 143
    const-string/jumbo v0, ""

    .line 147
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 147
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "getNetworkOperatorForSubscription"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 147
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 159
    const-string/jumbo v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 163
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "getSimOperatorNameForSubscription"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 163
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 175
    const-string/jumbo v0, ""

    .line 183
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 180
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSimState(I)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 226
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 226
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    return v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSubId(I)J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 343
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_simMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;

    .line 344
    if-nez v0, :cond_0

    .line 345
    const-wide/16 v0, -0x3e8

    .line 347
    :goto_0
    return-wide v0

    :cond_0
    iget v0, v0, Lcom/unicom/xiaowo/verify/sms/Android51Sim$LocalSimInfo;->subId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isDataConnectEnabled(I)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 240
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 248
    :goto_0
    return v0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 246
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 246
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNetworkRoaming(I)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 258
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 263
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSubId(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 263
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

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

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 263
    invoke-static {v1, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->_inited:Z

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

    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 301
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSubId(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 302
    int-to-long v4, v2

    const-wide/16 v6, -0x3e8

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 303
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

    .line 333
    :goto_0
    return v0

    .line 307
    :cond_0
    const-string/jumbo v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 308
    const-string/jumbo v3, "getSmsManagerForSubscriptionId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 308
    invoke-static {v0, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
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

    .line 330
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

    .line 327
    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 333
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

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

    .line 273
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->checkInited()V

    .line 275
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;->getSubId(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 276
    int-to-long v4, v2

    const-wide/16 v6, -0x3e8

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 277
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

    .line 290
    :goto_0
    return v0

    .line 281
    :cond_0
    const-string/jumbo v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 282
    const-string/jumbo v3, "getSmsManagerForSubscriptionId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 282
    invoke-static {v0, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
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

    .line 290
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unicom/xiaowo/verify/sms/Android51Sim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
