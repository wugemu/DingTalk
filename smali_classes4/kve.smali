.class public final Lkve;
.super Ljava/lang/Object;

# interfaces
.implements Lkva;


# instance fields
.field private a:Lkug;


# direct methods
.method public constructor <init>(Lkug;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkve;->a:Lkug;

    return-void
.end method


# virtual methods
.method public final c()Lkvm;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    new-instance v0, Lkvd;

    iget-object v1, p0, Lkve;->a:Lkug;

    invoke-virtual {v1}, Lkug;->b()Lktv;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvd;-><init>(Lktv;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    const-string/jumbo v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    const-string/jumbo v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
