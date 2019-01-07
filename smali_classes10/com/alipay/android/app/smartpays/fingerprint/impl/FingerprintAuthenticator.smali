.class public Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;
.super Ljava/lang/Object;
.source "FingerprintAuthenticator.java"


# static fields
.field public static final HARDWAREPAY_TYPE_FP:I = 0x1


# instance fields
.field private mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->getProcessAyncCallback(ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->adapterStatus(I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->processAsyncLog(II)V

    return-void
.end method

.method private adapterStatus(I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 2
    .param p1, "result"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 151
    sparse-switch p1, :sswitch_data_0

    .line 168
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 171
    .local v0, "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    :goto_0
    return-object v0

    .line 153
    .end local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    :sswitch_0
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 154
    .restart local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    goto :goto_0

    .line 156
    .end local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    :sswitch_1
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 157
    .restart local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    goto :goto_0

    .line 159
    .end local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    :sswitch_2
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 160
    .restart local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    goto :goto_0

    .line 162
    .end local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    :sswitch_3
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 163
    .restart local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    goto :goto_0

    .line 165
    .end local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    :sswitch_4
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 166
    .restart local v0    # "status":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_1
        0x71 -> :sswitch_3
        0x79 -> :sswitch_4
        0x81 -> :sswitch_2
    .end sparse-switch
.end method

.method private getProcessAyncCallback(ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callBack"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .prologue
    .line 108
    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-object v0
.end method

.method private initAuthenticator(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "FingerprintAuthenticator::initAuthenticator"

    const-string/jumbo v5, "start"

    invoke-virtual {v1, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v1, :cond_0

    .line 177
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "FingerprintAuthenticator::initAuthenticator"

    const-string/jumbo v5, "mAuthenticator is null"

    invoke-virtual {v1, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 180
    .local v2, "start":J
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "fpV1"

    const-string/jumbo v5, "FpCreateV1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    .end local v2    # "start":J
    :cond_0
    return-void

    .line 181
    .restart local v2    # "start":J
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "fpV1"

    const-string/jumbo v5, "FpCreateExV1"

    invoke-virtual {v1, v4, v5, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processAsyncLog(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "result"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    const-string/jumbo v0, ""

    .line 136
    .local v0, "prefix":Ljava/lang/String;
    sget v1, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    if-ne v1, p1, :cond_2

    .line 137
    const-string/jumbo v0, "FpOpenV1"

    .line 144
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "fpV1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    return-void

    .line 138
    :cond_2
    sget v1, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_UNREGISTER:I

    if-ne v1, p1, :cond_3

    .line 139
    const-string/jumbo v0, "FpCloseV1"

    goto :goto_0

    .line 140
    :cond_3
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 141
    const-string/jumbo v0, "FpPayV1"

    goto :goto_0
.end method


# virtual methods
.method public cancel(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    .local v2, "start":J
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v1, p1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->cancel(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "fpV1"

    const-string/jumbo v5, "FpCancelV1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "fpV1"

    const-string/jumbo v5, "FpCancelExV1"

    invoke-virtual {v1, v4, v5, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkUserStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "FingerprintAuthenticator::checkUserStatus"

    const-string/jumbo v5, "start"

    invoke-virtual {v1, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 50
    .local v2, "start":J
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v1, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "result":I
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "fpV1"

    const-string/jumbo v5, "FpCheckUserStatusV1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "FingerprintAuthenticator::checkUserStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "userId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return v0
.end method

.method public getAuthInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v6, "FingerprintAuthenticator::getAuthInfo"

    const-string/jumbo v7, "start"

    invoke-virtual {v3, v6, v7}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 202
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .local v2, "jo":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    .local v4, "start":J
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v0

    .line 206
    .local v0, "authInfo":Lcom/alipay/security/mobile/auth/AuthInfo;
    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v3, "authInfoType"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AuthInfo;->getType()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string/jumbo v3, "vendor"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string/jumbo v3, "phoneModel"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AuthInfo;->getPhoneModle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v3, "protocolVersion"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    const-string/jumbo v3, "protocolType"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string/jumbo v3, "mfacDownloadUrl"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AuthInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "authInfo":Lcom/alipay/security/mobile/auth/AuthInfo;
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v6, "fpV1"

    const-string/jumbo v7, "FpAuthInfoV1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 214
    .restart local v0    # "authInfo":Lcom/alipay/security/mobile/auth/AuthInfo;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v6, "fpV1"

    const-string/jumbo v7, "FpInitDeviceUnsupport"

    .line 215
    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-virtual {v3, v6, v7, v8}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "authInfo":Lcom/alipay/security/mobile/auth/AuthInfo;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v6, "fpV1"

    const-string/jumbo v7, "FpAuthInfoExV1"

    invoke-virtual {v3, v6, v7, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "FingerprintAuthenticator::initHardwarePay"

    const-string/jumbo v6, "start"

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;)V

    .line 39
    .local v0, "callback":Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 40
    .local v2, "start":J
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v4, p1, v0, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "result":I
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "fpV1"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FpInitV1|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "fpV1"

    const-string/jumbo v6, "FpInitV1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    return v1
.end method

.method public process(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "version"    # I
    .param p4, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "FingerprintAuthenticator::process"

    const-string/jumbo v6, "start"

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, "start":J
    const-string/jumbo v1, ""

    .line 72
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    new-instance v5, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v5, p2, p3, p4}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "fpV1"

    const-string/jumbo v6, "FpProcessSyncV1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "FingerprintAuthenticator::process"

    const-string/jumbo v6, "version=%s,data=%s,type=%s,result=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p4, v7, v8

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "fpV1"

    const-string/jumbo v6, "FpProcessSyncExV1"

    invoke-virtual {v4, v5, v6, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public processAsync(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "version"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "callBack"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;

    move-object v1, p0

    move v2, p3

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method

.method public registedFingerPrintNumber(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "FingerprintAuthenticator::registedFingerPrintNumber"

    const-string/jumbo v5, "start"

    invoke-virtual {v1, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    .local v2, "start":J
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->registedFingerPrintNumber()I

    move-result v0

    .line 61
    .local v0, "num":I
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "fpV1"

    const-string/jumbo v5, "FpRegNumberV1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v4, "FingerprintAuthenticator::registedFingerPrintNumber"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "num:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v0
.end method
