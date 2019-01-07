.class public final Lkvp;
.super Ljava/lang/Object;

# interfaces
.implements Lkua;


# instance fields
.field private a:Lkwe;


# direct methods
.method constructor <init>(Lkwe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkvp;->a:Lkwe;

    return-void
.end method


# virtual methods
.method public final c()Lkvm;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    new-instance v0, Lkvo;

    iget-object v1, p0, Lkvp;->a:Lkwe;

    invoke-virtual {v1}, Lkwe;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lkvo;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException converting stream to byte array: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lkvp;->a:Lkwe;

    return-object v0
.end method
