.class public Lcom/cmic/sso/sdk/auth/AuthnHelper;
.super Ljava/lang/Object;
.source "AuthnHelper.java"


# static fields
.field private static final AUTH_TYPE_WAP:Ljava/lang/String; = "3"

.field public static SDK_VERSION:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AuthnHelper"

.field private static mInstance:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# instance fields
.field private isCallback:Z

.field private listener:Lcom/cmic/sso/sdk/auth/TokenListener;

.field private mContext:Landroid/content/Context;

.field private tokenThread:Ljava/lang/Thread;

.field private values:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mInstance:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    .line 31
    const-string/jumbo v0, "mobile_auth_android_6.6.5.180717"

    sput-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->isCallback:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->doLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->prepareCallback()V

    return-void
.end method

.method static synthetic access$200(Lcom/cmic/sso/sdk/auth/AuthnHelper;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->callBackResult(Lorg/json/JSONObject;)V

    return-void
.end method

.method private declared-synchronized callBackResult(Lorg/json/JSONObject;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 172
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "AuthnHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isCallback = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->isCallback:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  listener == null ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->listener:Lcom/cmic/sso/sdk/auth/TokenListener;

    if-nez v4, :cond_3

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->isCallback:Z

    if-nez v0, :cond_2

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->isCallback:Z

    .line 177
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->listener:Lcom/cmic/sso/sdk/auth/TokenListener;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->listener:Lcom/cmic/sso/sdk/auth/TokenListener;

    invoke-interface {v0, p1}, Lcom/cmic/sso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->listener:Lcom/cmic/sso/sdk/auth/TokenListener;

    .line 181
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_2
    monitor-exit p0

    return-void

    .line 173
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doLogin()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    new-instance v0, Lcom/cmic/sso/sdk/auth/a;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmic/sso/sdk/auth/a;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "3"

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    new-instance v3, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;

    invoke-direct {v3, p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/a;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/cmic/sso/sdk/auth/b;)V

    .line 169
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mInstance:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mInstance:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mInstance:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mInstance:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private prepareCallback()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/d;->b(Landroid/content/Context;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v2, "networktype"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmic/sso/sdk/b/c;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 155
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "authtype"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "authtype"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmic/sso/sdk/a;->d:Z

    .line 142
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->tokenThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->prepareCallback()V

    .line 145
    const-string/jumbo v0, "102507"

    const-string/jumbo v1, "\u8bf7\u6c42\u8d85\u65f6"

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->callBackResult(Lorg/json/JSONObject;)V

    .line 146
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->tokenThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 147
    iput-object v3, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->tokenThread:Ljava/lang/Thread;

    .line 149
    :cond_0
    return-void
.end method

.method public umcLoginByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/cmic/sso/sdk/auth/TokenListener;Lcom/cmic/sso/sdk/auth/TraceLogger;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    const-class v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->isCallback:Z

    if-nez v0, :cond_1

    .line 80
    if-eqz p9, :cond_0

    .line 81
    const-string/jumbo v0, "AuthnHelper"

    const-string/jumbo v2, "\u8bf7\u7b49\u5f85\u4e0a\u6b21\u8bf7\u6c42\u5b8c\u6210"

    const/4 v3, 0x0

    invoke-interface {p9, v0, v2, v3}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :cond_0
    monitor-exit v1

    .line 137
    :goto_0
    return-void

    .line 85
    :cond_1
    if-nez p8, :cond_2

    .line 86
    monitor-exit v1

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->isCallback:Z

    .line 89
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    iput-object p8, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->listener:Lcom/cmic/sso/sdk/auth/TokenListener;

    .line 92
    sput-object p9, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    .line 94
    invoke-static {}, Lcom/cmic/sso/sdk/b/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v2, "traceId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-nez p1, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    const-string/jumbo v0, "102203"

    const-string/jumbo v1, "appId \u4e0d\u80fd\u4e3a\u7a7a"

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->callBackResult(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_4
    if-nez p2, :cond_5

    const-string/jumbo v0, ""

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const-string/jumbo v0, "102203"

    const-string/jumbo v1, "appkey\u4e0d\u80fd\u4e3a\u7a7a"

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->callBackResult(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 105
    :cond_6
    if-nez p3, :cond_7

    const-string/jumbo v0, ""

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    const-string/jumbo v0, "102203"

    const-string/jumbo v1, "capaid\u4e0d\u80fd\u4e3a\u7a7a"

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->callBackResult(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 105
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 109
    :cond_8
    sput p6, Lcom/cmic/sso/sdk/a;->b:I

    .line 110
    sput p7, Lcom/cmic/sso/sdk/a;->c:I

    .line 111
    sput-boolean v4, Lcom/cmic/sso/sdk/a;->d:Z

    .line 113
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "appkey"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "capaid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "capaidTime"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "scene"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->values:Landroid/os/Bundle;

    const-string/jumbo v1, "logintype"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    new-instance v0, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->tokenThread:Ljava/lang/Thread;

    .line 126
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->tokenThread:Ljava/lang/Thread;

    new-instance v1, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 136
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->tokenThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
