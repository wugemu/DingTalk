.class public final Lkvn;
.super Lkty;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lkty;-><init>()V

    .line 1000
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    .line 0
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "string "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_0

    const/16 v3, 0x32

    if-gt v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v2

    :goto_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v7, v4, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    move v0, v1

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_0

    .line 0
    :cond_4
    iput-object p1, p0, Lkvn;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 11

    invoke-direct {p0}, Lkty;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v2

    move-wide v2, v4

    move v4, v10

    :goto_0
    array-length v5, p1

    if-eq v4, v5, :cond_3

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    const-wide/high16 v8, 0x80000000000000L

    cmp-long v7, v2, v8

    if-gez v7, :cond_1

    const-wide/16 v8, 0x80

    mul-long/2addr v2, v8

    and-int/lit8 v7, v5, 0x7f

    int-to-long v8, v7

    add-long/2addr v2, v8

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    if-eqz v1, :cond_0

    long-to-int v1, v2

    div-int/lit8 v1, v1, 0x28

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x32

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x50

    sub-long/2addr v2, v8

    :goto_1
    const/4 v1, 0x0

    :cond_0
    const/16 v5, 0x2e

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v2, 0x0

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x30

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x31

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x28

    sub-long/2addr v2, v8

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :cond_2
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    and-int/lit8 v7, v5, 0x7f

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    const/16 v2, 0x2e

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkvn;->a:Ljava/lang/String;

    return-void

    :cond_4
    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Lkvn;
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lkvn;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lkvn;

    :goto_1
    return-object v0

    :cond_1
    instance-of v1, v0, Lktz;

    if-eqz v1, :cond_2

    new-instance v1, Lkvn;

    check-cast v0, Lktz;

    invoke-virtual {v0}, Lktz;->f()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lkvn;-><init>([B)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lkuh;

    if-eqz v1, :cond_3

    check-cast v0, Lkuh;

    invoke-virtual {v0}, Lkuh;->e()Lkvm;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "illegal object in getInstance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/io/OutputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x80

    cmp-long v0, p1, v0

    if-ltz v0, :cond_7

    const-wide/16 v0, 0x4000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_6

    const-wide/32 v0, 0x200000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    const-wide/32 v0, 0x10000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const-wide v0, 0x800000000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x40000000000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x2000000000000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x100000000000000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    const/16 v0, 0x31

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    const/16 v0, 0x2a

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    const/16 v0, 0x23

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    const/16 v0, 0x1c

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_4
    const/16 v0, 0x15

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_5
    const/16 v0, 0xe

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_6
    const/4 v0, 0x7

    shr-long v0, p1, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_7
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static a(Ljava/io/OutputStream;Ljava/math/BigInteger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    new-array v2, v1, [B

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    aget-byte v1, v2, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lkvq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v1, Lkwj;

    iget-object v0, p0, Lkvn;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lkwj;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lkvq;

    invoke-direct {v3, v2}, Lkvq;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lkwj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    invoke-virtual {v1}, Lkwj;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Lkvn;->a(Ljava/io/OutputStream;J)V

    .line 2000
    :goto_0
    iget v0, v1, Lkwj;->a:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    .line 0
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lkwj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-ge v4, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lkvn;->a(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 2000
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 0
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkvn;->a(Ljava/io/OutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lkvq;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lkvq;->a(I[B)V

    return-void
.end method

.method final a(Lkvm;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    instance-of v0, p1, Lkvn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkvn;->a:Ljava/lang/String;

    check-cast p1, Lkvn;

    iget-object v1, p1, Lkvn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkvn;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lkvn;->a:Ljava/lang/String;

    .line 0
    return-object v0
.end method
