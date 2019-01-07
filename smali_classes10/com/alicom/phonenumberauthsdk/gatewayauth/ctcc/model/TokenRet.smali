.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;
.super Ljava/lang/Object;
.source "TokenRet.java"


# instance fields
.field private data:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->result:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->data:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->msg:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResult(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->result:I

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x27

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TokenRet{result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
