.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;
.super Ljava/lang/Object;
.source "CTCCVaildManager.java"


# static fields
.field private static e:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

.field private d:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcn/com/chinatelecom/gateway/lib/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/16 v1, 0xbb8

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->h:I

    .line 37
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 39
    iput-object p3, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->f:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->g:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;

    invoke-direct {v0, p0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;-><init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)V

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->d:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    .line 89
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/c;

    invoke-direct {v0, p0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/c;-><init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)V

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->i:Lcn/com/chinatelecom/gateway/lib/o;

    .line 120
    if-nez p5, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->i:Lcn/com/chinatelecom/gateway/lib/o;

    invoke-static {v1, v1, v1, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->init(IIILcn/com/chinatelecom/gateway/lib/o;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->i:Lcn/com/chinatelecom/gateway/lib/o;

    invoke-static {p5, p5, p5, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->init(IIILcn/com/chinatelecom/gateway/lib/o;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;
    .locals 7

    .prologue
    .line 132
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    if-nez v0, :cond_1

    .line 133
    const-class v6, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    monitor-enter v6

    .line 134
    :try_start_0
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;-><init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    .line 137
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->g:Ljava/lang/String;

    const-string/jumbo v3, "jy"

    iget-object v4, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->d:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->requestPreMobile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 145
    return-void
.end method

.method public final a(Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 129
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 149
    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    .line 150
    return-void
.end method
