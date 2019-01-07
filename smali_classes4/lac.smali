.class public final Llac;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lktx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkvk;

    invoke-direct {v0}, Lkvk;-><init>()V

    sput-object v0, Llac;->a:Lktx;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkvn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    sget-object v0, Lkxd;->B:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MD5"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lkwy;->i:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SHA1"

    goto :goto_0

    :cond_1
    sget-object v0, Lkwv;->d:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SHA224"

    goto :goto_0

    :cond_2
    sget-object v0, Lkwv;->a:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SHA256"

    goto :goto_0

    :cond_3
    sget-object v0, Lkwv;->b:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SHA384"

    goto :goto_0

    :cond_4
    sget-object v0, Lkwv;->c:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "SHA512"

    goto :goto_0

    :cond_5
    sget-object v0, Lkxm;->b:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "RIPEMD128"

    goto :goto_0

    :cond_6
    sget-object v0, Lkxm;->a:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "RIPEMD160"

    goto :goto_0

    :cond_7
    sget-object v0, Lkxm;->c:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "RIPEMD256"

    goto :goto_0

    :cond_8
    sget-object v0, Lkwm;->a:Lkvn;

    invoke-virtual {v0, p0}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "GOST3411"

    goto :goto_0

    .line 8000
    :cond_9
    iget-object v0, p0, Lkvn;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Lkxn;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lkxn;->b:Lkva;

    .line 0
    if-eqz v0, :cond_1

    sget-object v1, Llac;->a:Lktx;

    invoke-virtual {v1, v0}, Lktx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2000
    iget-object v1, p0, Lkxn;->a:Lkvn;

    .line 0
    sget-object v2, Lkxd;->j:Lkvn;

    invoke-virtual {v1, v2}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkxg;->a(Ljava/lang/Object;)Lkxg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3000
    iget-object v0, v0, Lkxg;->a:Lkxn;

    .line 4000
    iget-object v0, v0, Lkxn;->a:Lkvn;

    .line 0
    invoke-static {v0}, Llac;->a(Lkvn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "withRSAandMGF1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5000
    :cond_0
    iget-object v1, p0, Lkxn;->a:Lkvn;

    .line 0
    sget-object v2, Lkyo;->l:Lkvn;

    invoke-virtual {v1, v2}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lkuc;->a(Ljava/lang/Object;)Lkuc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvn;

    invoke-static {v0}, Llac;->a(Lkvn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "withECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6000
    :cond_1
    iget-object v0, p0, Lkxn;->a:Lkvn;

    .line 7000
    iget-object v0, v0, Lkvn;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/security/Signature;Lkva;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Llac;->a:Lktx;

    invoke-virtual {v0, p1}, Lktx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lkva;->c()Lkvm;

    move-result-object v1

    invoke-virtual {v1}, Lkvm;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MGF1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    const-class v1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException decoding parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception extracting parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
