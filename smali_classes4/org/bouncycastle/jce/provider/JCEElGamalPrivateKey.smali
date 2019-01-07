.class public Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lkzw;
.implements Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;


# static fields
.field static final serialVersionUID:J = 0x42e1c55fb6bcc04eL


# instance fields
.field private attrCarrier:Lkzy;

.field elSpec:Llam;

.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkzy;

    invoke-direct {v0}, Lkzy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkzy;

    invoke-direct {v0}, Lkzy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Llam;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkzy;

    invoke-direct {v0}, Lkzy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Llam;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Lkxe;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkzy;

    invoke-direct {v0}, Lkzy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    new-instance v1, Lkwx;

    .line 6000
    iget-object v0, p1, Lkxe;->b:Lkxn;

    .line 7000
    iget-object v0, v0, Lkxn;->b:Lkva;

    .line 0
    check-cast v0, Lkuc;

    invoke-direct {v1, v0}, Lkwx;-><init>(Lkuc;)V

    .line 8000
    iget-object v0, p1, Lkxe;->a:Lkvm;

    .line 0
    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Llam;

    .line 9000
    iget-object v2, v1, Lkwx;->a:Lkvj;

    invoke-virtual {v2}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v2

    .line 10000
    iget-object v1, v1, Lkwx;->b:Lkvj;

    invoke-virtual {v1}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v1

    .line 0
    invoke-direct {v0, v2, v1}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Lkzc;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkzy;

    invoke-direct {v0}, Lkzy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Llam;

    invoke-direct {v0, v1, v1}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Llan;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkzy;

    invoke-direct {v0}, Lkzy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Llam;

    .line 3000
    iget-object v1, v2, Llam;->a:Ljava/math/BigInteger;

    .line 5000
    iget-object v2, v2, Llam;->b:Ljava/math/BigInteger;

    .line 0
    invoke-direct {v0, v1, v2}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkzy;

    invoke-direct {v0}, Lkzy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getParameters()Llam;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Llam;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v0, v1}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    .line 20000
    iget-object v0, v0, Llam;->a:Ljava/math/BigInteger;

    .line 0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    .line 21000
    iget-object v0, v0, Llam;->b:Ljava/math/BigInteger;

    .line 0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ElGamal"

    return-object v0
.end method

.method public getBagAttribute(Lkvn;)Lkva;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    invoke-virtual {v0, p1}, Lkzy;->getBagAttribute(Lkvn;)Lkva;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    invoke-virtual {v0}, Lkzy;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v0, Lkxe;

    new-instance v1, Lkxn;

    sget-object v2, Lkwy;->l:Lkvn;

    new-instance v3, Lkwx;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    .line 16000
    iget-object v4, v4, Llam;->a:Ljava/math/BigInteger;

    .line 0
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    .line 17000
    iget-object v5, v5, Llam;->b:Ljava/math/BigInteger;

    .line 0
    invoke-direct {v3, v4, v5}, Lkwx;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lkwx;->c()Lkvm;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkxn;-><init>(Lkvn;Lkva;)V

    new-instance v2, Lkvj;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lkxe;-><init>(Lkxn;Lkvm;)V

    invoke-virtual {v0}, Lkxe;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Llam;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    .line 18000
    iget-object v1, v1, Llam;->a:Ljava/math/BigInteger;

    .line 0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Llam;

    .line 19000
    iget-object v2, v2, Llam;->b:Ljava/math/BigInteger;

    .line 0
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setBagAttribute(Lkvn;Lkva;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lkzy;

    invoke-virtual {v0, p1, p2}, Lkzy;->setBagAttribute(Lkvn;Lkva;)V

    return-void
.end method
