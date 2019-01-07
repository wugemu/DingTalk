.class public Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
.super Lcom/mybank/android/phone/common/service/login/LoginService;
.source "LoginServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;
    }
.end annotation


# instance fields
.field a:Ljfh;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mybank/android/phone/common/service/login/LoginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mybank/android/phone/common/service/login/LoginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/login/LoginService;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->c:Ljava/util/List;

    .line 57
    iput-boolean v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e:Z

    .line 62
    iput-boolean v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->f:Z

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->i:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljfh;

    invoke-direct {v0}, Ljfh;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a:Ljfh;

    .line 80
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->restore(Landroid/content/Context;)Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Ljez;->b()Ljey;

    move-result-object v0

    invoke-interface {v0}, Ljey;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;)V
    .locals 3
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
    .param p1, "x1"    # Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    .prologue
    .line 37
    .line 2347
    iget-boolean v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->success:Z

    if-eqz v0, :cond_0

    .line 2351
    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->sessionId:Ljava/lang/String;

    .line 2352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2353
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v1, v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setSessionId(Ljava/lang/String;)V

    .line 2354
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 2355
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.mybank.login.ACTION_LOGIN_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2356
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 37
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "verifyId"    # Ljava/lang/String;
    .param p2, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getClientKey()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "clientKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "roleId":Ljava/lang/String;
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getSitId()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "sitId":Ljava/lang/String;
    new-instance v0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    .local v0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
    .param p1, "x1"    # Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    .param p2, "x2"    # Z

    .prologue
    .line 37
    .line 3323
    const-string/jumbo v0, "425"

    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Ljfr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3324
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->preVerifyMYBank(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    .line 3326
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->ctuVerifyId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "fccustprod_mybankOpenAccount_reapply_register_mobileClient"

    new-instance v5, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;

    invoke-direct {v5, p0, p2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$3;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    .line 3340
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 3343
    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_0
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->c:Ljava/util/List;

    return-object v0
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    const/4 v1, 0x1

    .line 214
    .local v1, "preCheck":Z
    iget-object v3, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v3}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "uid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    const/4 v1, 0x0

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v3}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "clientKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const/4 v1, 0x0

    .line 224
    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V
    .locals 2
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 3451
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setSessionId(Ljava/lang/String;)V

    .line 3452
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setClientKey(Ljava/lang/String;)V

    .line 3453
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setAlipayUserId(Ljava/lang/String;)V

    .line 3454
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setRoleId(Ljava/lang/String;)V

    .line 3455
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->save(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic f(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Lcom/mybank/android/phone/common/service/login/AccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    return-object v0
.end method


# virtual methods
.method public authLogin(Landroid/content/Context;Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extra"    # Landroid/os/Bundle;
    .param p3, "loginCallBack"    # Lcom/mybank/android/phone/common/service/login/LoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    if-eqz p3, :cond_0

    .line 100
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    if-eqz p2, :cond_1

    .line 104
    sget-object v4, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "corpId":Ljava/lang/String;
    sget-object v4, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "code":Ljava/lang/String;
    sget-object v4, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "qrCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v4, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCorpId(Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v4, v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCode(Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v4, v3}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setQrCode(Ljava/lang/String;)V

    .line 117
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "qrCode":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    const-class v4, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void

    .line 112
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCorpId(Ljava/lang/String;)V

    .line 113
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCode(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setQrCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public autoLogin(Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    .locals 6
    .param p1, "extra"    # Landroid/os/Bundle;
    .param p2, "loginCallBack"    # Lcom/mybank/android/phone/common/service/login/LoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 228
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    iput-boolean v5, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e:Z

    .line 230
    if-eqz p2, :cond_0

    .line 231
    invoke-interface {p2, v5}, Lcom/mybank/android/phone/common/service/login/LoginCallback;->callback(Z)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    if-eqz p2, :cond_2

    .line 237
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->c:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    iget-boolean v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e:Z

    if-nez v4, :cond_0

    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, "show":Z
    if-eqz p1, :cond_3

    .line 245
    sget-object v4, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "corpId":Ljava/lang/String;
    sget-object v4, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "code":Ljava/lang/String;
    sget-object v4, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "qrCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v4, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCorpId(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v4, v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCode(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-virtual {v4, v2}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setQrCode(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v4, "show"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 261
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v2    # "qrCode":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e:Z

    .line 263
    const-string/jumbo v4, ""

    invoke-direct {p0, v4, v3}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCorpId(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setCode(Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setQrCode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public clearSession()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setSessionId(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public doCallback(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    const-string/jumbo v6, "sessionId"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "sessionId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 180
    new-instance v0, Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-direct {v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;-><init>()V

    .line 181
    .local v0, "accountInfo":Lcom/mybank/android/phone/common/service/login/AccountInfo;
    invoke-virtual {v0, v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setSessionId(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v6, "roleId"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setRoleId(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v6, "alipayUserId"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setAlipayUserId(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v6, "AccountInfo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setAlipayName(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v6, "clientKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setClientKey(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setUid(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v6, "siteId"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setSitId(Ljava/lang/String;)V

    .line 1470
    iget-object v6, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->save(Landroid/content/Context;)V

    .line 1471
    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    .line 190
    iget-object v6, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 191
    .local v1, "localBroadcastManager":Ldq;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.mybank.login.ACTION_LOGIN_SUCCESS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v4, "loginSuccessIntent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 200
    .end local v0    # "accountInfo":Lcom/mybank/android/phone/common/service/login/AccountInfo;
    .end local v4    # "loginSuccessIntent":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/login/LoginCallback;

    .line 201
    .local v2, "loginCallBack":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 202
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lcom/mybank/android/phone/common/service/login/LoginCallback;->callback(Z)V

    goto :goto_1

    .line 194
    .end local v1    # "localBroadcastManager":Ldq;
    .end local v2    # "loginCallBack":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    :cond_0
    iget-object v6, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 195
    .restart local v1    # "localBroadcastManager":Ldq;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.mybank.login.ACTION_LOGIN_FAILED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, "loginFailedIntent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 204
    .end local v3    # "loginFailedIntent":Landroid/content/Intent;
    .restart local v2    # "loginCallBack":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/mybank/android/phone/common/service/login/LoginCallback;->callback(Z)V

    goto :goto_1

    .line 208
    .end local v2    # "loginCallBack":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    :cond_2
    iget-object v6, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 209
    return-void
.end method

.method public fakeLogin(Ljava/lang/String;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "loginCallBack"    # Lcom/mybank/android/phone/common/service/login/LoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 475
    if-eqz p2, :cond_0

    .line 476
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_0
    new-instance v0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/String;)V

    .line 507
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Object;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 508
    return-void
.end method

.method public getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->restore(Landroid/content/Context;)Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d:Lcom/mybank/android/phone/common/service/login/AccountInfo;

    return-object v0
.end method

.method public login(Landroid/content/Context;Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extra"    # Landroid/os/Bundle;
    .param p3, "loginCallBack"    # Lcom/mybank/android/phone/common/service/login/LoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "show"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    invoke-virtual {p0, p2, p3}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->autoLogin(Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->authLogin(Landroid/content/Context;Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V

    goto :goto_0
.end method

.method public logout(Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;)V
    .locals 6
    .param p1, "loginOutCallBack"    # Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    iget-boolean v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->f:Z

    if-eqz v2, :cond_1

    .line 434
    :goto_0
    return-void

    .line 377
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->f:Z

    .line 378
    new-instance v0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V

    .line 409
    .local v0, "loginOutRunnable":Ljava/lang/Runnable;
    new-instance v1, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;

    invoke-direct {v1, p0, v0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/Runnable;)V

    .line 432
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 433
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->i:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public declared-synchronized syncAutoLogin(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 143
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    :goto_0
    monitor-exit p0

    return v1

    .line 147
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;B)V

    .line 149
    .local v0, "syncCallBack":Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->i:Landroid/os/Handler;

    new-instance v2, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$1;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    iget-object v1, v0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :goto_1
    :try_start_3
    iget-boolean v1, v0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "syncCallBack":Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "syncCallBack":Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
