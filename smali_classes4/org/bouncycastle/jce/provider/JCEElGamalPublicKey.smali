.class public Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;


# static fields
.field static final serialVersionUID:J = 0x78e9d455552c6634L


# instance fields
.field private elSpec:Llam;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;Llam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Llam;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Llam;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    return-void
.end method

.method public constructor <init>(Lkxs;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lkwx;

    .line 11000
    iget-object v0, p1, Lkxs;->a:Lkxn;

    .line 12000
    iget-object v0, v0, Lkxn;->b:Lkva;

    .line 0
    check-cast v0, Lkuc;

    invoke-direct {v1, v0}, Lkwx;-><init>(Lkuc;)V

    :try_start_0
    invoke-virtual {p1}, Lkxs;->e()Lkvm;

    move-result-object v0

    check-cast v0, Lkvj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Llam;

    .line 13000
    iget-object v2, v1, Lkwx;->a:Lkvj;

    invoke-virtual {v2}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v2

    .line 14000
    iget-object v1, v1, Lkwx;->b:Lkvj;

    invoke-virtual {v1}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v1

    .line 0
    invoke-direct {v0, v2, v1}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid info structure in DSA public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkzd;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Llam;

    invoke-direct {v0, v1, v1}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Llao;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Llam;

    .line 3000
    iget-object v1, v2, Llam;->a:Ljava/math/BigInteger;

    .line 5000
    iget-object v2, v2, Llam;->b:Ljava/math/BigInteger;

    .line 0
    invoke-direct {v0, v1, v2}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getParameters()Llam;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

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

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v2, Llam;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v0, v1}, Llam;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

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
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    .line 19000
    iget-object v0, v0, Llam;->a:Ljava/math/BigInteger;

    .line 0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    .line 20000
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

.method public getEncoded()[B
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v0, Lkxs;

    new-instance v1, Lkxn;

    sget-object v2, Lkwy;->l:Lkvn;

    new-instance v3, Lkwx;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    .line 15000
    iget-object v4, v4, Llam;->a:Ljava/math/BigInteger;

    .line 0
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    .line 16000
    iget-object v5, v5, Llam;->b:Ljava/math/BigInteger;

    .line 0
    invoke-direct {v3, v4, v5}, Lkwx;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lkwx;->c()Lkvm;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkxn;-><init>(Lkvn;Lkva;)V

    new-instance v2, Lkvj;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lkxs;-><init>(Lkxn;Lkva;)V

    invoke-virtual {v0}, Lkxs;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method public getParameters()Llam;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

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

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    .line 17000
    iget-object v1, v1, Llam;->a:Ljava/math/BigInteger;

    .line 0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Llam;

    .line 18000
    iget-object v2, v2, Llam;->b:Ljava/math/BigInteger;

    .line 0
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method
