.class public Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;
.super Ljava/lang/Object;
.source "AntDetectResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6eL


# instance fields
.field ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isSuccess:Z

.field result:I

.field resultMessage:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->token:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->resultMessage:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->result:I

    .line 13
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->isSuccess:Z

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->tag:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->ext:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getExt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->ext:Ljava/util/Map;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->result:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->isSuccess:Z

    return v0
.end method

.method public setExt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->ext:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->result:I

    .line 39
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->resultMessage:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->isSuccess:Z

    .line 47
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->tag:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->token:Ljava/lang/String;

    .line 23
    return-void
.end method
