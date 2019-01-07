.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;
.super Ljava/lang/Object;
.source "CUCCVaildManager.java"


# static fields
.field private static f:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/unicom/xiaowo/verify/UniAuthHelper;

.field private d:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

.field private e:Lcom/unicom/xiaowo/verify/ResultListener;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/CountDownTimer;

.field private j:Z

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->j:Z

    .line 38
    iput v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->k:I

    .line 41
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 43
    iput-object p3, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->g:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->h:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/UniAuthHelper;->getInstance(Landroid/content/Context;)Lcom/unicom/xiaowo/verify/UniAuthHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->c:Lcom/unicom/xiaowo/verify/UniAuthHelper;

    .line 46
    iput p5, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->k:I

    .line 47
    iget v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->k:I

    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->k:I

    .line 50
    :cond_0
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;

    invoke-direct {v0, p0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;-><init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)V

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->e:Lcom/unicom/xiaowo/verify/ResultListener;

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;
    .locals 7

    .prologue
    .line 96
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    if-nez v0, :cond_1

    .line 97
    const-class v6, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    monitor-enter v6

    .line 98
    :try_start_0
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;-><init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    .line 101
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->i:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic c(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 113
    .line 1118
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->i:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 1120
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1121
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1124
    :cond_0
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/c;

    iget v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->k:I

    int-to-long v2, v1

    iget v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->k:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/c;-><init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;JJ)V

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->i:Landroid/os/CountDownTimer;

    .line 1139
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->i:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1140
    iput-boolean v6, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->j:Z

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->c:Lcom/unicom/xiaowo/verify/UniAuthHelper;

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->e:Lcom/unicom/xiaowo/verify/ResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unicom/xiaowo/verify/UniAuthHelper;->getAccessCode(Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    .line 115
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->i:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1143
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->i:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1144
    iput-boolean v6, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->j:Z

    goto :goto_0
.end method

.method public final a(Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 93
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 224
    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    .line 225
    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->i:Landroid/os/CountDownTimer;

    .line 226
    return-void
.end method
