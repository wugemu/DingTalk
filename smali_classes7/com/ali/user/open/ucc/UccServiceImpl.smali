.class public Lcom/ali/user/open/ucc/UccServiceImpl;
.super Ljava/lang/Object;
.source "UccServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/ucc/UccService;


# static fields
.field public static final TAG:Ljava/lang/String; = "UccServiceImpl"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ali/user/open/ucc/d;

.field private c:Lcom/ali/user/open/ucc/d;

.field private d:Lcom/ali/user/open/ucc/d;

.field private e:Lcom/ali/user/open/ucc/d;

.field private f:Lcom/ali/user/open/ucc/d;

.field private g:Lcom/ali/user/open/ucc/UccDataProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/UccServiceImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ali/user/open/ucc/model/BindParams;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 303
    new-instance v0, Lcom/ali/user/open/ucc/UccServiceImpl$7;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/open/ucc/UccServiceImpl$7;-><init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;Landroid/app/Activity;Lcom/ali/user/open/ucc/model/BindParams;)V

    invoke-static {p2, v0}, Lcom/ali/user/open/ucc/data/a;->f(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 385
    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/UccServiceImpl;Landroid/app/Activity;Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Landroid/app/Activity;Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/UccServiceImpl;Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/ali/user/open/ucc/UccServiceImpl$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/ali/user/open/ucc/UccServiceImpl$5;-><init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-static {p1, v0}, Lcom/ali/user/open/ucc/data/a;->c(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 247
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 388
    const-string/jumbo v0, "alipay"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->b:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/ali/user/open/ucc/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/a/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->b:Lcom/ali/user/open/ucc/d;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->b:Lcom/ali/user/open/ucc/d;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string/jumbo v0, "taobao"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->c:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_2

    .line 396
    new-instance v0, Lcom/ali/user/open/ucc/e/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/e/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->c:Lcom/ali/user/open/ucc/d;

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->c:Lcom/ali/user/open/ucc/d;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_3
    const-string/jumbo v0, "eleme"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->d:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_4

    .line 402
    new-instance v0, Lcom/ali/user/open/ucc/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->d:Lcom/ali/user/open/ucc/d;

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->d:Lcom/ali/user/open/ucc/d;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_5
    const-string/jumbo v0, "icbu"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 407
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->f:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_6

    .line 408
    new-instance v0, Lcom/ali/user/open/ucc/d/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/d/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->f:Lcom/ali/user/open/ucc/d;

    .line 410
    :cond_6
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->f:Lcom/ali/user/open/ucc/d;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_7
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->e:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_8

    .line 414
    new-instance v0, Lcom/ali/user/open/ucc/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->e:Lcom/ali/user/open/ucc/d;

    .line 417
    :cond_8
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->e:Lcom/ali/user/open/ucc/d;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    if-nez v0, :cond_0

    .line 113
    const/16 v0, 0x3eb

    const-string/jumbo v1, "data provider is null"

    invoke-interface {p3, p2, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    new-instance v1, Lcom/ali/user/open/ucc/UccServiceImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ali/user/open/ucc/UccServiceImpl$1;-><init>(Lcom/ali/user/open/ucc/UccServiceImpl;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-interface {v0, p2, v1}, Lcom/ali/user/open/ucc/UccDataProvider;->getUserToken(Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    goto :goto_0
.end method

.method public bind(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string/jumbo v0, "needSession"

    const-string/jumbo v1, "0"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/open/ucc/UccServiceImpl;->bind(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 62
    return-void
.end method

.method public bind(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    invoke-static {p3}, Lcom/ali/user/open/oauth/OauthPlatformConfig;->getOauthConfigByPlatform(Ljava/lang/String;)Lcom/ali/user/open/oauth/AppCredential;

    move-result-object v4

    .line 69
    const-string/jumbo v0, "alipay"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->b:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/ali/user/open/ucc/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/a/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->b:Lcom/ali/user/open/ucc/d;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->b:Lcom/ali/user/open/ucc/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ali/user/open/ucc/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string/jumbo v0, "taobao"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->c:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Lcom/ali/user/open/ucc/e/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/e/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->c:Lcom/ali/user/open/ucc/d;

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->c:Lcom/ali/user/open/ucc/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ali/user/open/ucc/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0

    .line 79
    :cond_3
    const-string/jumbo v0, "eleme"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->d:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_4

    .line 81
    new-instance v0, Lcom/ali/user/open/ucc/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->d:Lcom/ali/user/open/ucc/d;

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->d:Lcom/ali/user/open/ucc/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ali/user/open/ucc/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->e:Lcom/ali/user/open/ucc/d;

    if-nez v0, :cond_6

    .line 86
    new-instance v0, Lcom/ali/user/open/ucc/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->e:Lcom/ali/user/open/ucc/d;

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->e:Lcom/ali/user/open/ucc/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ali/user/open/ucc/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0
.end method

.method public bind(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    if-nez v0, :cond_0

    .line 132
    const/16 v0, 0x3eb

    const-string/jumbo v1, "data provider is null"

    invoke-interface {p4, p2, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    new-instance v0, Lcom/ali/user/open/ucc/UccServiceImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/open/ucc/UccServiceImpl$2;-><init>(Lcom/ali/user/open/ucc/UccServiceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-interface {v6, p2, v0}, Lcom/ali/user/open/ucc/UccDataProvider;->getUserToken(Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    goto :goto_0
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v0, "UccServiceImpl"

    const-string/jumbo v1, "bind goUccActivity"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sput-object p4, Lcom/ali/user/open/ucc/ui/UccActivity;->mUccCallback:Lcom/ali/user/open/ucc/UccCallback;

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    const-string/jumbo v0, "funcType"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string/jumbo v0, "targetSite"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v0, "userToken"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    if-eqz p3, :cond_0

    .line 101
    const-string/jumbo v2, "needSession"

    const-string/jumbo v0, "needSession"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v2, "needAutoLogin"

    const-string/jumbo v0, "needAutoLogin"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v2, "scene"

    const-string/jumbo v0, "scene"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/ali/user/open/ucc/ui/UccActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    if-nez v0, :cond_0

    .line 151
    const/16 v0, 0x3eb

    const-string/jumbo v1, "data provider is null"

    invoke-interface {p3, p1, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    new-instance v1, Lcom/ali/user/open/ucc/UccServiceImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ali/user/open/ucc/UccServiceImpl$3;-><init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/ali/user/open/ucc/UccDataProvider;->getUserToken(Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->b:Lcom/ali/user/open/ucc/d;

    .line 436
    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->c:Lcom/ali/user/open/ucc/d;

    .line 437
    iput-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->e:Lcom/ali/user/open/ucc/d;

    .line 438
    return-void
.end method

.method public getUccDataProvider()Lcom/ali/user/open/ucc/UccDataProvider;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    return-object v0
.end method

.method public isLoginUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/oauth/OauthService;->isLoginUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 425
    const-class v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/oauth/OauthService;->logout(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public logoutAll(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 430
    const-class v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-interface {v0, p1}, Lcom/ali/user/open/oauth/OauthService;->logoutAll(Landroid/content/Context;)V

    .line 431
    return-void
.end method

.method public setUccDataProvider(Lcom/ali/user/open/ucc/UccDataProvider;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    .line 177
    return-void
.end method

.method public trustLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string/jumbo v1, "needSession"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ali/user/open/ucc/UccServiceImpl;->trustLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 172
    return-void
.end method

.method public trustLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    if-nez p4, :cond_0

    .line 282
    :goto_0
    return-void

    .line 254
    :cond_0
    if-nez p1, :cond_1

    .line 255
    const/16 v0, 0x3ea

    const-string/jumbo v1, "param is null"

    invoke-interface {p4, p2, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    if-nez v0, :cond_2

    .line 260
    const/16 v0, 0x3eb

    const-string/jumbo v1, "data provider is null"

    invoke-interface {p4, p2, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v6, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    new-instance v0, Lcom/ali/user/open/ucc/UccServiceImpl$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/open/ucc/UccServiceImpl$6;-><init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Ljava/util/Map;Landroid/app/Activity;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-interface {v6, p2, v0}, Lcom/ali/user/open/ucc/UccDataProvider;->getUserToken(Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    goto :goto_0
.end method

.method public trustLogin(Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 286
    const-string/jumbo v0, "UccServiceImpl"

    const-string/jumbo v1, "trustLogin goUccActivity"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sput-object p3, Lcom/ali/user/open/ucc/ui/UccActivity;->mUccCallback:Lcom/ali/user/open/ucc/UccCallback;

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 289
    const-string/jumbo v0, "funcType"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string/jumbo v0, "targetSite"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    if-eqz p2, :cond_0

    .line 292
    const-string/jumbo v0, "needSession"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string/jumbo v2, "needAutoLogin"

    const-string/jumbo v0, "needAutoLogin"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v2, "scene"

    const-string/jumbo v0, "scene"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    :cond_0
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/ali/user/open/ucc/ui/UccActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 297
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public unbind(Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    if-nez v0, :cond_1

    .line 191
    const/16 v0, 0x3eb

    const-string/jumbo v1, "data provider is null"

    invoke-interface {p2, p1, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl;->g:Lcom/ali/user/open/ucc/UccDataProvider;

    new-instance v1, Lcom/ali/user/open/ucc/UccServiceImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/open/ucc/UccServiceImpl$4;-><init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/ali/user/open/ucc/UccDataProvider;->getUserToken(Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    goto :goto_0
.end method
