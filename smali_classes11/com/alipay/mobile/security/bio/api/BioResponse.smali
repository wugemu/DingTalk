.class public Lcom/alipay/mobile/security/bio/api/BioResponse;
.super Ljava/lang/Object;
.source "BioResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6eL


# instance fields
.field private ext:Ljava/util/Map;
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

.field private isSuccess:Z

.field private result:I

.field private resultMessage:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->token:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->resultMessage:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->result:I

    .line 12
    iput-boolean v1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess:Z

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->tag:Ljava/lang/String;

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
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->ext:Ljava/util/Map;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->result:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess:Z

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
    .line 60
    .local p1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->ext:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->result:I

    .line 37
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->resultMessage:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess:Z

    .line 45
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->tag:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioResponse;->token:Ljava/lang/String;

    .line 21
    return-void
.end method
