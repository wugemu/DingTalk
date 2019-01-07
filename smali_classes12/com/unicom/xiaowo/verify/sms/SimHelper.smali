.class public Lcom/unicom/xiaowo/verify/sms/SimHelper;
.super Ljava/lang/Object;
.source "SimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;,
        Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;,
        Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/unicom/xiaowo/verify/sms/SimHelper;


# instance fields
.field private _context:Landroid/content/Context;

.field private _countDownTimer:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

.field private _defaultImpl:Lcom/unicom/xiaowo/verify/sms/ISim;

.field private _prefered:Lcom/unicom/xiaowo/verify/sms/ISim;

.field private _simImpls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unicom/xiaowo/verify/sms/ISim;",
            ">;"
        }
    .end annotation
.end field

.field private _smsSendAction:Ljava/lang/String;

.field private _smsSendBusy:Z

.field private _smsSendListener:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

.field private _smsSendListenerInner:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

.field private _smsSendReceiver:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

.field private payImsi:Ljava/lang/String;

.field private paySimId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendBusy:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;

    invoke-direct {v0, p0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;-><init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;)V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendListenerInner:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendReceiver:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/unicom/xiaowo/verify/sms/SimHelper;Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendReceiver:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_countDownTimer:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    return-object v0
.end method

.method static synthetic access$202(Lcom/unicom/xiaowo/verify/sms/SimHelper;Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_countDownTimer:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    return-object p1
.end method

.method static synthetic access$300(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendListener:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/unicom/xiaowo/verify/sms/SimHelper;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendBusy:Z

    return p1
.end method

.method static synthetic access$500(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendListenerInner:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    return-object v0
.end method

.method private callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_prefered:Lcom/unicom/xiaowo/verify/sms/ISim;

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Try "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_prefered:Lcom/unicom/xiaowo/verify/sms/ISim;

    invoke-interface {v1}, Lcom/unicom/xiaowo/verify/sms/ISim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " func:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_prefered:Lcom/unicom/xiaowo/verify/sms/ISim;

    invoke-static {v0, p1, p2, p3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unicom/xiaowo/verify/sms/ISim;

    .line 387
    :try_start_1
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_prefered:Lcom/unicom/xiaowo/verify/sms/ISim;

    if-eq v1, v0, :cond_1

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Try "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " func:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 393
    invoke-static {v0, p1, p2, p3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 395
    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_prefered:Lcom/unicom/xiaowo/verify/sms/ISim;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 397
    goto :goto_0

    .line 404
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_defaultImpl:Lcom/unicom/xiaowo/verify/sms/ISim;

    if-eqz v0, :cond_3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Try "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_defaultImpl:Lcom/unicom/xiaowo/verify/sms/ISim;

    invoke-interface {v1}, Lcom/unicom/xiaowo/verify/sms/ISim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " func:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_defaultImpl:Lcom/unicom/xiaowo/verify/sms/ISim;

    invoke-static {v0, p1, p2, p3}, Lcom/unicom/xiaowo/verify/sms/ReflectHelper;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 411
    :cond_3
    const-string/jumbo v0, "NO implementation found for method(%s)"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;

    const-string/jumbo v1, "NO implementation found for method(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lcom/unicom/xiaowo/verify/sms/SimHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->s_instance:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-direct {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;-><init>()V

    sput-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->s_instance:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    .line 86
    :cond_0
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->s_instance:Lcom/unicom/xiaowo/verify/sms/SimHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 255
    const-string/jumbo v0, "getIMEI"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    const-string/jumbo v0, "getIMSI"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImsiForPay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->initSimCardForPay()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    const-string/jumbo v0, "getNetworkOperator"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 225
    const-string/jumbo v0, "getSimOperator"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 235
    const-string/jumbo v0, "getSimSerialNumber"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimState(I)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 265
    const-string/jumbo v0, "getSimState"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "SimHelper init"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_9

    .line 98
    const-string/jumbo v0, "instanceof Application"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/Android70Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/Android70Sim;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/Android51Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/Android51Sim;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_2
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/Android50Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/Android50Sim;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/MTK44Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/MTK44Sim;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_4
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/Vivo44Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/Vivo44Sim;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_5
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/Gionee44Sim;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_6
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/ZTE44Sim;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 137
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_7
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/Xiaomi44Sim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/Xiaomi44Sim;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-interface {v0}, Lcom/unicom/xiaowo/verify/sms/ISim;->isReady()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_simImpls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_8
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/DefaultSim;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_defaultImpl:Lcom/unicom/xiaowo/verify/sms/ISim;

    .line 147
    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->initSimCardForPay()V

    .line 148
    return-void

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "instanceof Activity"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initSimCardForPay()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    const-string/jumbo v1, ""

    .line 157
    const-string/jumbo v2, ""

    .line 160
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getIMSI(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sim1:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 168
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getIMSI(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 169
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sim2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    .line 176
    const-string/jumbo v1, "000000000000000"

    iput-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    .line 178
    invoke-static {v3}, Lcom/unicom/xiaowo/verify/d/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iput-object v3, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    .line 180
    iput v4, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    .line 195
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sim for pay:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 197
    return-void

    .line 163
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const-string/jumbo v0, "Can\'t get imsi for sim1"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->b(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string/jumbo v1, "Can\'t get imsi for sim2"

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_0
    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    .line 183
    iput v5, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    goto :goto_2

    .line 184
    :cond_1
    invoke-static {v3}, Lcom/unicom/xiaowo/verify/d/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iput-object v3, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    .line 186
    iput v4, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    goto :goto_2

    .line 187
    :cond_2
    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    .line 189
    iput v5, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    goto :goto_2

    .line 191
    :cond_3
    iput v4, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    .line 192
    const-string/jumbo v0, "000000000000000"

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->payImsi:Ljava/lang/String;

    goto :goto_2

    .line 171
    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public isDataConnectEnabled(I)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 275
    const-string/jumbo v0, "isDataConnectEnabled"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 285
    const-string/jumbo v0, "isNetworkRoaming"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 340
    iget v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    if-gez v0, :cond_0

    .line 341
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-interface {p4, v0, p3}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendBusy:Z

    if-eqz v0, :cond_1

    .line 347
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_BUSY:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-interface {p4, v0, p3}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_1
    iput-boolean v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendBusy:Z

    .line 352
    iput-object p4, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendListener:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    .line 353
    iput-object p3, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendAction:Ljava/lang/String;

    .line 355
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    const-wide/16 v2, 0x3a98

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;-><init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;JJ)V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_countDownTimer:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    .line 356
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_countDownTimer:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    invoke-virtual {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;->start()Landroid/os/CountDownTimer;

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;-><init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;)V

    iput-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendReceiver:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    .line 363
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    iget-object v3, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendReceiver:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    :try_start_0
    const-string/jumbo v1, "sendDataMessage"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    .line 368
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 367
    invoke-direct {p0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 370
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendListenerInner:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-interface {v0, v1, p3}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 297
    iget v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    if-gez v0, :cond_0

    .line 298
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-interface {p4, v0, p3}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendBusy:Z

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_BUSY:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-interface {p4, v0, p3}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_1
    iput-boolean v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendBusy:Z

    .line 309
    iput-object p4, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendListener:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    .line 310
    iput-object p3, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendAction:Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    const-wide/16 v2, 0x61a8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;-><init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;JJ)V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_countDownTimer:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    .line 313
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_countDownTimer:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    invoke-virtual {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;->start()Landroid/os/CountDownTimer;

    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;-><init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;)V

    iput-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendReceiver:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    .line 320
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_context:Landroid/content/Context;

    iget-object v3, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendReceiver:Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    :try_start_0
    const-string/jumbo v1, "sendTextMessage"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->paySimId:I

    .line 325
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 324
    invoke-direct {p0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->callSimMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 327
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper;->_smsSendListenerInner:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-interface {v0, v1, p3}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
