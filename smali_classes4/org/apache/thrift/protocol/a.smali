.class public Lorg/apache/thrift/protocol/a;
.super Lktk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/thrift/protocol/a$a;
    }
.end annotation


# static fields
.field private static final f:Lktn;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field protected d:Z

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lktn;

    invoke-direct {v0}, Lktn;-><init>()V

    sput-object v0, Lorg/apache/thrift/protocol/a;->f:Lktn;

    return-void
.end method

.method public constructor <init>(Lktr;ZZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lktk;-><init>(Lktr;)V

    iput-boolean v0, p0, Lorg/apache/thrift/protocol/a;->a:Z

    iput-boolean v1, p0, Lorg/apache/thrift/protocol/a;->b:Z

    iput-boolean v0, p0, Lorg/apache/thrift/protocol/a;->d:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->g:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->h:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->i:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->k:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->l:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->m:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/a;->n:[B

    iput-boolean p2, p0, Lorg/apache/thrift/protocol/a;->a:Z

    iput-boolean p3, p0, Lorg/apache/thrift/protocol/a;->b:Z

    return-void
.end method

.method private a([BII)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0, p3}, Lorg/apache/thrift/protocol/a;->d(I)V

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lktr;->c([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(B)V

    return-void
.end method

.method public final a(B)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->g:[B

    aput-byte p1, v0, v3

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->g:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lktr;->b([BII)V

    return-void
.end method

.method public final a(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/thrift/protocol/a;->a(J)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->i:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->i:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->i:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->i:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->i:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lktr;->b([BII)V

    return-void
.end method

.method public final a(J)V
    .locals 9

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->j:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->j:[B

    invoke-virtual {v0, v1, v6, v7}, Lktr;->b([BII)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/a;->a(I)V

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lktr;->b([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/thrift/f;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(I)V

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lktr;->b([BII)V

    return-void
.end method

.method public final a(Lkth;)V
    .locals 1

    iget-byte v0, p1, Lkth;->b:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(B)V

    iget-short v0, p1, Lkth;->c:S

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(S)V

    return-void
.end method

.method public final a(Lkti;)V
    .locals 1

    iget-byte v0, p1, Lkti;->a:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(B)V

    iget v0, p1, Lkti;->b:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(I)V

    return-void
.end method

.method public final a(Lktj;)V
    .locals 1

    iget-byte v0, p1, Lktj;->a:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(B)V

    iget-byte v0, p1, Lktj;->b:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(B)V

    iget v0, p1, Lktj;->c:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(I)V

    return-void
.end method

.method public final a(Lktm;)V
    .locals 1

    iget-byte v0, p1, Lktm;->a:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(B)V

    iget v0, p1, Lktm;->b:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(I)V

    return-void
.end method

.method public final a(S)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->h:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->h:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->h:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lktr;->b([BII)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/a;->a(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/thrift/protocol/a;->d(I)V

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lktr;->c([BII)I

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/thrift/f;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lkth;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->g()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lkth;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3, v1, v0}, Lkth;-><init>(Ljava/lang/String;BS)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->h()S

    move-result v0

    goto :goto_0
.end method

.method public c()Lktj;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktj;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->g()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->g()B

    move-result v2

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->i()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lktj;-><init>(BBI)V

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    iput p1, p0, Lorg/apache/thrift/protocol/a;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/thrift/protocol/a;->d:Z

    return-void
.end method

.method public d()Lkti;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lkti;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->g()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkti;-><init>(BI)V

    return-object v0
.end method

.method protected final d(I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    if-gez p1, :cond_0

    new-instance v0, Lorg/apache/thrift/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Negative length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/thrift/protocol/a;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/thrift/protocol/a;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/thrift/protocol/a;->c:I

    iget v0, p0, Lorg/apache/thrift/protocol/a;->c:I

    if-gez v0, :cond_1

    new-instance v0, Lorg/apache/thrift/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Message length exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public e()Lktm;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktm;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->g()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lktm;-><init>(BI)V

    return-object v0
.end method

.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->g()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->c()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->a()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v1}, Lktr;->b()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v1, v2}, Lktr;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->k:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/thrift/protocol/a;->a([BII)I

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->k:[B

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public final h()S
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    const/4 v3, 0x2

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->l:[B

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2}, Lktr;->c()I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->a()[B

    move-result-object v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->b()I

    move-result v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2, v3}, Lktr;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->l:[B

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/thrift/protocol/a;->a([BII)I

    goto :goto_0
.end method

.method public final i()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    const/4 v3, 0x4

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->m:[B

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2}, Lktr;->c()I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->a()[B

    move-result-object v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->b()I

    move-result v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2, v3}, Lktr;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->m:[B

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/thrift/protocol/a;->a([BII)I

    goto :goto_0
.end method

.method public final j()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    const/16 v7, 0x8

    iget-object v1, p0, Lorg/apache/thrift/protocol/a;->n:[B

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2}, Lktr;->c()I

    move-result v2

    if-lt v2, v7, :cond_0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->a()[B

    move-result-object v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->b()I

    move-result v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2, v7}, Lktr;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->n:[B

    invoke-direct {p0, v2, v0, v7}, Lorg/apache/thrift/protocol/a;->a([BII)I

    goto :goto_0
.end method

.method public final k()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->i()I

    move-result v1

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->c()I

    move-result v0

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2}, Lktr;->a()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v3}, Lktr;->b()I

    move-result v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2, v1}, Lktr;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/thrift/f;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/a;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/a;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/a;->d(I)V

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->c()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v0}, Lktr;->a()[B

    move-result-object v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2}, Lktr;->b()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    invoke-virtual {v2, v1}, Lktr;->a(I)V

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [B

    iget-object v2, p0, Lorg/apache/thrift/protocol/a;->e:Lktr;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lktr;->c([BII)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
