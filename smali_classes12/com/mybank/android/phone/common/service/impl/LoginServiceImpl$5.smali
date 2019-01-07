.class final Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;
.super Landroid/os/AsyncTask;
.source "LoginServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->logout(Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iput-object p2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->h(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "clientKey":Ljava/lang/String;
    new-instance v1, Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LogoutReq;

    invoke-direct {v1}, Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LogoutReq;-><init>()V

    .line 416
    .local v1, "req":Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LogoutReq;
    iput-object v0, v1, Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LogoutReq;->clientKey:Ljava/lang/String;

    .line 417
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iget-object v2, v2, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a:Ljfh;

    .line 1081
    iget-object v2, v2, Ljfh;->a:Lcom/alipay/fc/custprod/biz/service/gw/api/auth/AuthRpcManager;

    invoke-interface {v2, v1}, Lcom/alipay/fc/custprod/biz/service/gw/api/auth/AuthRpcManager;->logout(Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LogoutReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V

    .line 424
    .end local v0    # "clientKey":Ljava/lang/String;
    .end local v1    # "req":Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LogoutReq;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 422
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v3}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V

    throw v2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    .line 1429
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$5;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    return-void
.end method
