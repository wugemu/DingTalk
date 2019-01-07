.class public final Ljfh;
.super Ljfi;
.source "AccountLoginFacade.java"


# instance fields
.field public a:Lcom/alipay/fc/custprod/biz/service/gw/api/auth/AuthRpcManager;

.field public b:Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljfi;-><init>()V

    .line 31
    iget-object v0, p0, Ljfh;->c:Lcom/mybank/android/phone/common/service/api/RpcService;

    const-class v1, Lcom/alipay/fc/custprod/biz/service/gw/api/auth/AuthRpcManager;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/api/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/api/auth/AuthRpcManager;

    iput-object v0, p0, Ljfh;->a:Lcom/alipay/fc/custprod/biz/service/gw/api/auth/AuthRpcManager;

    .line 32
    iget-object v0, p0, Ljfh;->c:Lcom/mybank/android/phone/common/service/api/RpcService;

    const-class v1, Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/api/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;

    iput-object v0, p0, Ljfh;->b:Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;

    .line 33
    return-void
.end method
