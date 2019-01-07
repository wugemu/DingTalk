.class final Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;
.super Landroid/os/AsyncTask;
.source "LoginServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Ljava/lang/String;Z)V
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
        "Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iput-object p2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->e:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iget-object v2, v1, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a:Ljfh;

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->d:Ljava/lang/String;

    .line 1037
    new-instance v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;

    invoke-direct {v7}, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;-><init>()V

    .line 1038
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->keepOnline:Z

    .line 1039
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->extendMap:Ljava/util/Map;

    .line 1040
    const-string/jumbo v8, "DINGTALK_AUTO_LOGIN"

    iput-object v8, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->loginScene:Ljava/lang/String;

    .line 1041
    iput-object v5, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->ctuVerifyId:Ljava/lang/String;

    .line 1042
    iput-object v1, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->roleId:Ljava/lang/String;

    .line 1043
    const-string/jumbo v1, "7"

    iput-object v1, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->site:Ljava/lang/String;

    .line 1044
    iput-object v6, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->siteId:Ljava/lang/String;

    .line 1046
    const-class v1, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 1048
    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getCorpId()Ljava/lang/String;

    move-result-object v5

    .line 1049
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1050
    iget-object v6, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->extendMap:Ljava/util/Map;

    sget-object v8, Ljfb;->b:Ljava/lang/String;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    :cond_0
    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getCode()Ljava/lang/String;

    move-result-object v5

    .line 1054
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1055
    iget-object v6, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->extendMap:Ljava/util/Map;

    sget-object v8, Ljfb;->a:Ljava/lang/String;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    :cond_1
    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getQrCode()Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1060
    iget-object v5, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->extendMap:Ljava/util/Map;

    sget-object v6, Ljfb;->c:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    :cond_2
    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getBioInfo()Ljava/lang/String;

    move-result-object v1

    .line 1064
    iget-object v3, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->extendMap:Ljava/util/Map;

    sget-object v5, Ljfb;->d:Ljava/lang/String;

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    iput-object v4, v7, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;->clientKey:Ljava/lang/String;

    .line 1068
    iget-object v1, v2, Ljfh;->b:Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;

    invoke-interface {v1, v7}, Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;->autoLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->a()Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 271
    check-cast p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    .line 1288
    if-eqz p1, :cond_0

    .line 1289
    iget-boolean v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->success:Z

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v0, p1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;)V

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/login/LoginCallback;

    .line 1298
    if-eqz p1, :cond_2

    iget-boolean v2, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->success:Z

    if-eqz v2, :cond_2

    .line 1299
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/mybank/android/phone/common/service/login/LoginCallback;->callback(Z)V

    goto :goto_0

    .line 1292
    :cond_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iget-boolean v1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->e:Z

    invoke-static {v0, p1, v1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_1
    return-void

    .line 1301
    :cond_2
    iget-boolean v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->e:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 1302
    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultView:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Ljfr;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1304
    :cond_3
    invoke-interface {v0, v4}, Lcom/mybank/android/phone/common/service/login/LoginCallback;->callback(Z)V

    goto :goto_0

    .line 1308
    :cond_4
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1309
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$2;->f:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v0, v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Z)Z

    goto :goto_1
.end method
