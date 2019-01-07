.class public Lorg/bouncycastle/openssl/PEMException;
.super Ljava/io/IOException;


# instance fields
.field underlying:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMException;->underlying:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMException;->underlying:Ljava/lang/Exception;

    return-object v0
.end method

.method public getUnderlyingException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMException;->underlying:Ljava/lang/Exception;

    return-object v0
.end method
