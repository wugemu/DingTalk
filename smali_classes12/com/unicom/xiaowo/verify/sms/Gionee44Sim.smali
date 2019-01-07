.class public Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;
.super Ljava/lang/Object;
.source "Gionee44Sim.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/sms/ISim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;
    }
.end annotation


# static fields
.field private static final BRAND:Ljava/lang/String; = "gionee"


# instance fields
.field private _context:Landroid/content/Context;

.field private _isInited:Z

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
            "Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_simMap:Ljava/util/HashMap;

    .line 21
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_context:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_isInited:Z

    .line 23
    return-void
.end method

.method private checkInited()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_isInited:Z

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "gionee 44Sim init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private getTelephonyManagerEx()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    invoke-static {v0, v1, v2, v2}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method private init()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

    .line 29
    const-string/jumbo v1, "com.android.internal.telephony.msim.ISmsMSim"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gionee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getName()Ljava/lang/String;

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

    .line 35
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getName()Ljava/lang/String;

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

    .line 39
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 124
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 124
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
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
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 111
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "getSubscriberId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 111
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
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
    .line 261
    const-string/jumbo v0, "Gionee44Sim"

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 76
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "getNetworkOperator"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
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
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 86
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "getSimOperatorName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 86
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
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
    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 99
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 99
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
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
    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 139
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 139
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 142
    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
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
    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 249
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_simMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;

    .line 250
    if-nez v0, :cond_0

    .line 251
    const-wide/16 v0, -0x3e8

    .line 254
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim$LocalSimInfo;->mSimId:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
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

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 153
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getSimState(I)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getSubId(I)J

    move-result-wide v4

    .line 158
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    .line 158
    invoke-static {v0, v3, v6, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 161
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 162
    goto :goto_0

    :cond_1
    move v0, v1

    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
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
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 174
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "isNetworkRoaming"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 174
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
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
    .line 70
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_isInited:Z

    return v0
.end method

.method public sendDataMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 218
    if-gez p1, :cond_0

    .line 239
    :goto_0
    return v0

    .line 224
    :cond_0
    const-string/jumbo v0, "isms_msim"

    .line 226
    const-string/jumbo v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    const-string/jumbo v2, "com.android.internal.telephony.msim.ISmsMSim$Stub"

    .line 230
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 229
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    const-string/jumbo v2, "sendData"

    const/16 v3, 0x8

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

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, [B

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_context:Landroid/content/Context;

    .line 236
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    const/4 v5, 0x6

    aput-object p6, v4, v5

    const/4 v5, 0x7

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 233
    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 239
    goto/16 :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
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
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->checkInited()V

    .line 186
    if-gez p1, :cond_0

    .line 207
    :goto_0
    return v0

    .line 193
    :cond_0
    const-string/jumbo v0, "isms_msim"

    .line 195
    const-string/jumbo v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    const-string/jumbo v2, "com.android.internal.telephony.msim.ISmsMSim$Stub"

    .line 199
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 198
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    const-string/jumbo v2, "sendText"

    const/4 v3, 0x7

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

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;->_context:Landroid/content/Context;

    .line 205
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    const/4 v5, 0x6

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 202
    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 207
    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
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
