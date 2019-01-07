.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;
.super Ljava/lang/Object;
.source "CMCCVaildManager.java"


# static fields
.field private static h:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Timer;

.field private d:Lcom/cmic/sso/sdk/auth/TokenListener;

.field private e:Ljava/lang/String;

.field private f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

.field private g:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

.field private k:Lcom/cmic/sso/sdk/auth/TraceLogger;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->h:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->l:I

    .line 47
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->b:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->g:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 49
    sput-object p3, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->i:Ljava/lang/String;

    .line 50
    sput-object p4, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->j:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    .line 52
    iput p5, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->l:I

    .line 1073
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;

    invoke-direct {v0, p0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;-><init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)V

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->d:Lcom/cmic/sso/sdk/auth/TokenListener;

    .line 1115
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/c;

    invoke-direct {v0, p0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/c;-><init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)V

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->k:Lcom/cmic/sso/sdk/auth/TraceLogger;

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;
    .locals 7

    .prologue
    .line 58
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->h:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    if-nez v0, :cond_1

    .line 59
    const-class v6, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    monitor-enter v6

    .line 60
    :try_start_0
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->h:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;-><init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->h:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    .line 63
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->h:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->c:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic b(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a:I

    return v0
.end method

.method static synthetic c(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->g:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0xbb8

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a:I

    .line 150
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->c:Ljava/util/Timer;

    .line 152
    iget v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->l:I

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    sget-object v1, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->i:Ljava/lang/String;

    sget-object v2, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->j:Ljava/lang/String;

    const-string/jumbo v3, "50"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    iget v6, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->l:I

    iget v7, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->l:I

    iget-object v8, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->d:Lcom/cmic/sso/sdk/auth/TokenListener;

    iget-object v9, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->k:Lcom/cmic/sso/sdk/auth/TraceLogger;

    invoke-virtual/range {v0 .. v9}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->umcLoginByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/cmic/sso/sdk/auth/TokenListener;Lcom/cmic/sso/sdk/auth/TraceLogger;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    sget-object v1, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->i:Ljava/lang/String;

    sget-object v2, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->j:Ljava/lang/String;

    const-string/jumbo v3, "50"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    iget-object v8, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->d:Lcom/cmic/sso/sdk/auth/TokenListener;

    iget-object v9, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->k:Lcom/cmic/sso/sdk/auth/TraceLogger;

    move v7, v6

    invoke-virtual/range {v0 .. v9}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->umcLoginByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/cmic/sso/sdk/auth/TokenListener;Lcom/cmic/sso/sdk/auth/TraceLogger;)V

    goto :goto_0
.end method

.method public final a(Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->g:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 70
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->g:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 176
    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->h:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    .line 177
    return-void
.end method
