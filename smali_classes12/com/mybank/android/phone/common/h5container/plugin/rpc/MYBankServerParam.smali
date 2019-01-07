.class public Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
.super Lcom/alipay/android/phone/mrpc/core/RpcParams;
.source "MYBankServerParam.java"


# instance fields
.field private checkLogin:Z

.field private operationType:Ljava/lang/String;

.field private requestData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->checkLogin:Z

    return-void
.end method


# virtual methods
.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->requestData:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckLogin()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->checkLogin:Z

    return v0
.end method

.method public setCheckLogin(Z)V
    .locals 0
    .param p1, "checkLogin"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->checkLogin:Z

    .line 38
    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->operationType:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setRequestData(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestData"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->requestData:Ljava/lang/String;

    .line 30
    return-void
.end method
