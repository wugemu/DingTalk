.class public Lcom/ali/user/open/ucc/b;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/open/ucc/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ali/user/open/ucc/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method public static a()Lcom/ali/user/open/ucc/b;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/ali/user/open/ucc/b;->a:Lcom/ali/user/open/ucc/b;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/ali/user/open/ucc/b;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/ali/user/open/ucc/b;->a:Lcom/ali/user/open/ucc/b;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/ali/user/open/ucc/b;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/b;-><init>()V

    sput-object v0, Lcom/ali/user/open/ucc/b;->a:Lcom/ali/user/open/ucc/b;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/ali/user/open/ucc/b;->a:Lcom/ali/user/open/ucc/b;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/core/callback/MemberCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    const-string/jumbo v0, ""

    invoke-interface {p3, v0}, Lcom/ali/user/open/core/callback/MemberCallback;->onSuccess(Ljava/lang/Object;)V

    .line 461
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v0, Lcom/ali/user/open/ucc/b$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ali/user/open/ucc/b$5;-><init>(Lcom/ali/user/open/ucc/b;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 228
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    if-eqz v0, :cond_0

    .line 229
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 231
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 165
    new-instance v0, Lcom/ali/user/open/ucc/b$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/open/ucc/b$3;-><init>(Lcom/ali/user/open/ucc/b;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-static {p3, v0}, Lcom/ali/user/open/ucc/data/a;->a(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/b;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/open/ucc/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p6}, Lcom/ali/user/open/ucc/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/ali/user/open/ucc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 357
    invoke-static {p2}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 358
    const-string/jumbo v1, "authorizationResponse"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    const-string/jumbo v0, "alipay"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Lcom/ali/user/open/ucc/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/a/a;-><init>()V

    .line 370
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 371
    invoke-interface {v0, p1, v1}, Lcom/ali/user/open/ucc/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_1
    return-void

    .line 363
    :cond_0
    const-string/jumbo v0, "taobao"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    new-instance v0, Lcom/ali/user/open/ucc/e/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/e/a;-><init>()V

    goto :goto_0

    .line 365
    :cond_1
    const-string/jumbo v0, "eleme"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    new-instance v0, Lcom/ali/user/open/ucc/c/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/c/a;-><init>()V

    goto :goto_0

    .line 368
    :cond_2
    new-instance v0, Lcom/ali/user/open/ucc/a;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/a;-><init>()V

    goto :goto_0

    .line 373
    :cond_3
    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 133
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;)V

    .line 135
    if-eqz p6, :cond_1

    .line 136
    const/16 v0, 0x3f0

    const-string/jumbo v1, "BIND_CHANGE_BIND_FAIL"

    invoke-interface {p6, p2, v0, v1}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v8, p1

    .line 140
    check-cast v8, Landroid/app/Activity;

    new-instance v0, Lcom/ali/user/open/ucc/b$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p6

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/open/ucc/b$2;-><init>(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 378
    new-instance v0, Lcom/ali/user/open/ucc/b$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/open/ucc/b$4;-><init>(Lcom/ali/user/open/ucc/b;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-static {p3, v0}, Lcom/ali/user/open/ucc/data/a;->b(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 440
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 234
    new-instance v8, Lcom/ali/user/open/ucc/model/BindParams;

    invoke-direct {v8}, Lcom/ali/user/open/ucc/model/BindParams;-><init>()V

    .line 235
    iput-object p2, v8, Lcom/ali/user/open/ucc/model/BindParams;->requestToken:Ljava/lang/String;

    .line 236
    iput-object p4, v8, Lcom/ali/user/open/ucc/model/BindParams;->bindUserToken:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/ali/user/open/ucc/b$a;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/open/ucc/b$a;-><init>(Lcom/ali/user/open/ucc/b;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-static {v8, v0}, Lcom/ali/user/open/ucc/data/a;->d(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 239
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 242
    new-instance v8, Lcom/ali/user/open/ucc/model/BindParams;

    invoke-direct {v8}, Lcom/ali/user/open/ucc/model/BindParams;-><init>()V

    .line 243
    iput-object p2, v8, Lcom/ali/user/open/ucc/model/BindParams;->requestToken:Ljava/lang/String;

    .line 244
    iput-object p5, v8, Lcom/ali/user/open/ucc/model/BindParams;->bindUserToken:Ljava/lang/String;

    .line 245
    iput-object p4, v8, Lcom/ali/user/open/ucc/model/BindParams;->ivToken:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/ali/user/open/ucc/b$a;

    const/4 v3, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/open/ucc/b$a;-><init>(Lcom/ali/user/open/ucc/b;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    invoke-static {v8, v0}, Lcom/ali/user/open/ucc/data/a;->e(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 248
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 53
    new-instance v6, Lcom/ali/user/open/ucc/model/BindParams;

    invoke-direct {v6}, Lcom/ali/user/open/ucc/model/BindParams;-><init>()V

    .line 54
    invoke-static {}, Lcom/ali/user/open/core/AliMemberSDK;->getMasterSite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    .line 55
    iput-object p3, v6, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    .line 56
    iput-object p2, v6, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    .line 57
    iput-object p4, v6, Lcom/ali/user/open/ucc/model/BindParams;->bindUserToken:Ljava/lang/String;

    .line 58
    iput-object p5, v6, Lcom/ali/user/open/ucc/model/BindParams;->bindUserTokenType:Ljava/lang/String;

    .line 59
    if-eqz p6, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v0, "needSession"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/ali/user/open/ucc/model/BindParams;->createBindSiteSession:Z

    .line 65
    :goto_0
    new-instance v0, Lcom/ali/user/open/ucc/b$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/open/ucc/b$1;-><init>(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/ali/user/open/ucc/data/a;->b(Lcom/ali/user/open/ucc/model/BindParams;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    .line 130
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/ali/user/open/ucc/model/BindParams;->createBindSiteSession:Z

    goto :goto_0
.end method
