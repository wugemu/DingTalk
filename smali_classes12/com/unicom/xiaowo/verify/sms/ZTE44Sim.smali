.class public Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;
.super Ljava/lang/Object;
.source "ZTE44Sim.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/sms/ISim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/sms/ZTE44Sim$LocalSimInfo;
    }
.end annotation


# static fields
.field private static final BRAND:Ljava/lang/String; = "zte"


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
            "Lcom/unicom/xiaowo/verify/sms/ZTE44Sim$LocalSimInfo;",
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

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_simMap:Ljava/util/HashMap;

    .line 22
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_context:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_isInited:Z

    .line 24
    return-void
.end method

.method private checkInited()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_isInited:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ZTE 44Sim init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
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

    .line 65
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    invoke-static {v0, v1, v2, v2}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method private init()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

    .line 30
    const-string/jumbo v1, "com.android.internal.telephony.msim.ISmsMSim"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 44
    :goto_0
    return v0

    .line 36
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getName()Ljava/lang/String;

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

    .line 43
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getName()Ljava/lang/String;

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

    .line 40
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getName()Ljava/lang/String;

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

    .line 41
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
    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 125
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 125
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
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
    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 112
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
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
    .line 262
    const-string/jumbo v0, "ZTE44Sim"

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 77
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 77
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
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
    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 87
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 87
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
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
    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 100
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 100
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
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
    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 140
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
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
    .line 248
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 250
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_simMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim$LocalSimInfo;

    .line 251
    if-nez v0, :cond_0

    .line 252
    const-wide/16 v0, -0x3e8

    .line 255
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim$LocalSimInfo;->mSimId:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
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

    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getSimState(I)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 166
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getSubId(I)J

    move-result-wide v4

    .line 159
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 160
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    .line 159
    invoke-static {v0, v3, v6, v7}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 162
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 163
    goto :goto_0

    :cond_1
    move v0, v1

    .line 166
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

.method public isNetworkRoaming(I)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 175
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->getTelephonyManagerEx()Ljava/lang/Object;

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

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 175
    invoke-static {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
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
    .line 71
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_isInited:Z

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

    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 219
    if-gez p1, :cond_0

    .line 240
    :goto_0
    return v0

    .line 225
    :cond_0
    const-string/jumbo v0, "isms_msim"

    .line 227
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

    .line 230
    const-string/jumbo v2, "com.android.internal.telephony.msim.ISmsMSim$Stub"

    .line 231
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

    .line 230
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 234
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

    iget-object v6, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_context:Landroid/content/Context;

    .line 237
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

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 234
    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 240
    goto/16 :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
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

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->checkInited()V

    .line 187
    if-gez p1, :cond_0

    .line 208
    :goto_0
    return v0

    .line 194
    :cond_0
    const-string/jumbo v0, "isms_msim"

    .line 196
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

    .line 199
    const-string/jumbo v2, "com.android.internal.telephony.msim.ISmsMSim$Stub"

    .line 200
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

    .line 199
    invoke-static {v2, v3, v4, v5}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 203
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

    iget-object v6, p0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;->_context:Landroid/content/Context;

    .line 206
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

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 203
    invoke-static {v0, v2, v3, v4}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 208
    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
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
