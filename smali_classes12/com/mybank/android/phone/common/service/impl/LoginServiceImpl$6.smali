.class final Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;
.super Landroid/os/AsyncTask;
.source "LoginServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->fakeLogin(Ljava/lang/String;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iput-object p2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 485
    :try_start_0
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;

    invoke-direct {v0}, Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;-><init>()V

    .line 486
    .local v0, "request":Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;->token:Ljava/lang/String;

    .line 488
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v1

    .line 489
    .local v1, "tokenResult":Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    if-eqz v1, :cond_0

    .line 490
    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;->clientKey:Ljava/lang/String;

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iget-object v2, v2, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a:Ljfh;

    .line 1074
    iget-object v2, v2, Ljfh;->b:Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;

    invoke-interface {v2, v0}, Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;->fakeLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 498
    .end local v0    # "request":Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;
    .end local v1    # "tokenResult":Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    move-object v0, p1

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    .line 504
    .local v0, "loginResult":Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$6;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ljfu;->a(Landroid/content/Context;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;)V

    .line 505
    return-void
.end method
