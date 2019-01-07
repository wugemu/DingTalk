.class public Lorg/bouncycastle/jce/provider/JCEPBEKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field algorithm:Ljava/lang/String;

.field digest:I

.field ivSize:I

.field keySize:I

.field oid:Lkvn;

.field param:Lkyp;

.field pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field tryWrong:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkvn;IIIILjavax/crypto/spec/PBEKeySpec;Lkyp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->oid:Lkvn;

    iput p3, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->type:I

    iput p4, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    iput p5, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    iput p6, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    iput-object p7, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    iput-object p8, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lkyp;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getDigest()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    return v0
.end method

.method public getEncoded()[B
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lkyp;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lkyp;

    instance-of v0, v0, Lkzi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lkyp;

    check-cast v0, Lkzi;

    move-object v0, v1

    check-cast v0, Lkzh;

    .line 3000
    :cond_0
    :goto_0
    return-object v1

    .line 0
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lkyp;

    check-cast v0, Lkzh;

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v2

    .line 3000
    array-length v1, v2

    if-lez v1, :cond_3

    array-length v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_1
    array-length v3, v2

    if-eq v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x2

    aget-char v4, v2, v0

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v2, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-array v1, v0, [B

    goto :goto_0

    .line 0
    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v2

    .line 4000
    array-length v1, v2

    new-array v1, v1, [B

    :goto_2
    array-length v3, v1

    if-eq v0, v3, :cond_0

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method getIvSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    return v0
.end method

.method getKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    return v0
.end method

.method public getOID()Lkvn;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->oid:Lkvn;

    return-object v0
.end method

.method getParam()Lkyp;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lkyp;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->type:I

    return v0
.end method

.method setTryWrongPKCS12Zero(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    return-void
.end method

.method shouldTryWrongPKCS12()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    return v0
.end method
