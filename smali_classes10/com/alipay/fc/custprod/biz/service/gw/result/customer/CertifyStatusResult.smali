.class public Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "CertifyStatusResult.java"


# static fields
.field private static final serialVersionUID:J = -0x51038b73e761b75aL


# instance fields
.field private authCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private certifyStatus:Ljava/lang/String;

.field private failReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private finishDay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->authCodes:Ljava/util/List;

    return-object v0
.end method

.method public getCertifyStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->certifyStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getFailReason()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->failReason:Ljava/util/List;

    return-object v0
.end method

.method public getFinishDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->finishDay:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "authCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->authCodes:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setCertifyStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "certifyStatus"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->certifyStatus:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFailReason(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "failReason":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->failReason:Ljava/util/List;

    .line 106
    return-void
.end method

.method public setFinishDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "finishDay"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertifyStatusResult;->finishDay:Ljava/lang/String;

    .line 124
    return-void
.end method
