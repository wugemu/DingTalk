.class public Lkuw;
.super Lkty;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(ILktv;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Lkty;-><init>()V

    iput p1, p0, Lkuw;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkuw;->a:Z

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1000
    :goto_0
    iget-object v0, p2, Lkvb;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 0
    if-eq v1, v0, :cond_0

    :try_start_0
    invoke-virtual {p2, v1}, Lktv;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lktu;

    invoke-virtual {v0}, Lktu;->a()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "malformed object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lkuw;->c:[B

    return-void
.end method

.method constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0}, Lkty;-><init>()V

    iput-boolean p1, p0, Lkuw;->a:Z

    iput p2, p0, Lkuw;->b:I

    iput-object p3, p0, Lkuw;->c:[B

    return-void
.end method


# virtual methods
.method final a(Lkvq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x40

    iget-boolean v1, p0, Lkuw;->a:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x60

    :cond_0
    iget v1, p0, Lkuw;->b:I

    iget-object v2, p0, Lkuw;->c:[B

    invoke-virtual {p1, v0, v1, v2}, Lkvq;->a(II[B)V

    return-void
.end method

.method final a(Lkvm;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    instance-of v1, p1, Lkuw;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lkuw;

    iget-boolean v1, p0, Lkuw;->a:Z

    iget-boolean v2, p1, Lkuw;->a:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lkuw;->b:I

    iget v2, p1, Lkuw;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkuw;->c:[B

    iget-object v2, p1, Lkuw;->c:[B

    invoke-static {v1, v2}, Llbb;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-boolean v0, p0, Lkuw;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lkuw;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lkuw;->c:[B

    invoke-static {v1}, Llbb;->a([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
