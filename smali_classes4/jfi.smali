.class public Ljfi;
.super Ljava/lang/Object;
.source "BaseFacade.java"


# instance fields
.field protected c:Lcom/mybank/android/phone/common/service/api/RpcService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    iput-object v0, p0, Ljfi;->c:Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 16
    return-void
.end method
