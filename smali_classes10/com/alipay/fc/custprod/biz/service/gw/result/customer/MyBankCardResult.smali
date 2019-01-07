.class public Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "MyBankCardResult.java"


# static fields
.field private static final serialVersionUID:J = -0x6cc86b8ab7805ce8L


# instance fields
.field private bankCardLevel:Ljava/lang/String;

.field private cardNo:Ljava/lang/String;

.field private certNo:Ljava/lang/String;

.field private certType:Ljava/lang/String;

.field private contextParams:Ljava/lang/String;

.field private mobileNo:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankCardLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->bankCardLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCertNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->certNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->certType:Ljava/lang/String;

    return-object v0
.end method

.method public getContextParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->contextParams:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setBankCardLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCardLevel"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->bankCardLevel:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNo"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->cardNo:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setCertNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "certNo"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->certNo:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setCertType(Ljava/lang/String;)V
    .locals 0
    .param p1, "certType"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->certType:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setContextParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextParams"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->contextParams:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileNo"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->mobileNo:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->userId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;->userName:Ljava/lang/String;

    .line 92
    return-void
.end method
