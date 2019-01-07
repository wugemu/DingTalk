.class public Lcom/alipay/android/phone/mobilecommon/rpc/AlipayRpcService;
.super Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayRpcService"


# instance fields
.field private mRemoteUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;-><init>()V

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/rpc/AlipayRpcService;->mRemoteUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const-string/jumbo v0, "AlipayRpcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getRpcProxy() : proxy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getInstance()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getRpcService()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const-string/jumbo v0, "AlipayRpcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRemoteUrl("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/rpc/AlipayRpcService;->mRemoteUrl:Ljava/lang/String;

    const-string/jumbo v0, "AlipayRpcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRemoteUrl() : mRemoteUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/rpc/AlipayRpcService;->mRemoteUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getInstance()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getRpcService()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/rpc/AlipayRpcService;->mRemoteUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;->setGW(Ljava/lang/String;)V

    return-void
.end method
