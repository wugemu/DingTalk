.class public Lcom/alipay/mobile/security/bio/service/BioUploadResult;
.super Ljava/lang/Object;
.source "BioUploadResult.java"


# instance fields
.field public extParams:Ljava/util/Map;
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

.field public hasNext:Z

.field public nextProtocol:Ljava/lang/String;

.field public productRetCode:I

.field public validationRetCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xbb9

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 22
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;)V
    .locals 1
    .param p1, "zimValidateGwResponse"    # Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xbb9

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 22
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z

    .line 52
    iget v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->productRetCode:I

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 53
    iget v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 54
    iget-boolean v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->hasNext:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z

    .line 55
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->nextProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->nextProtocol:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BioUploadResult{productRetCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", validationRetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nextProtocol=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->nextProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
