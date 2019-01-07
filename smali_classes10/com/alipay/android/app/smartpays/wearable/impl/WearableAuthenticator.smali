.class public final Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;
.super Ljava/lang/Object;
.source "WearableAuthenticator.java"


# static fields
.field private static final HARDWAREPAY_PROTOCOL_VERSION:I = 0x2

.field public static final HARDWAREPAY_TYPE_WEARABLE:I = 0x2

.field private static final INTERNAL_ERROR_NO_MAC:I = 0x7d


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

.field private mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;Lcom/alipay/android/app/smartpays/api/model/WearableResult;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;
    .param p1, "x1"    # Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->notifyAuthFinished()V

    return-void
.end method

.method private countLog(I)V
    .locals 4
    .param p1, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    sparse-switch p1, :sswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 98
    :sswitch_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "wearV1"

    const-string/jumbo v2, "WearPayV1VerifyBtOff"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :sswitch_1
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "wearV1"

    const-string/jumbo v2, "WearPayV1VerifyTimeOut"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :sswitch_2
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "wearV1"

    const-string/jumbo v2, "WearPayV1VerifyBtOff"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :sswitch_3
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "wearV1"

    const-string/jumbo v2, "WearPayV1VerifyBtOff"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :sswitch_4
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "wearV1"

    const-string/jumbo v2, "WearPayV1VerifyNoMac"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x67 -> :sswitch_2
        0x71 -> :sswitch_1
        0x7b -> :sswitch_0
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;-><init>(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V

    return-object v0
.end method

.method private notifyAuthFinished()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final initHardwearpay(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    .line 43
    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$1;-><init>(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V

    .line 51
    .local v0, "callback":Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v1, p1, v0, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final verifyNoPassword(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/WearableRequest;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/alipay/android/app/smartpays/api/model/WearableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v3, p2, Lcom/alipay/android/app/smartpays/api/model/WearableRequest;->mUserId:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->initHardwearpay(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, "initResult":I
    new-instance v3, Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    invoke-direct {v3}, Lcom/alipay/android/app/smartpays/api/model/WearableResult;-><init>()V

    iput-object v3, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    .line 78
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    iput v2, v3, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mResult:I

    .line 79
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    iget v3, v3, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mResult:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 80
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p2, Lcom/alipay/android/app/smartpays/api/model/WearableRequest;->mData:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    .line 82
    .local v0, "aMsg":Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 83
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    const-wide/16 v6, 0x2ee0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v0    # "aMsg":Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    iget v3, v3, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mResult:I

    invoke-direct {p0, v3}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->countLog(I)V

    .line 92
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    return-object v3

    .line 86
    .restart local v0    # "aMsg":Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {v1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
