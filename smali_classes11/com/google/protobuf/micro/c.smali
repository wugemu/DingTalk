.class public final Lcom/google/protobuf/micro/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/micro/c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public final c:Ljava/io/OutputStream;

.field private final d:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/micro/c;->c:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/protobuf/micro/c;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/c;->b:I

    array-length v0, p2

    iput v0, p0, Lcom/google/protobuf/micro/c;->a:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/micro/c;->c:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/google/protobuf/micro/c;->d:[B

    iput p2, p0, Lcom/google/protobuf/micro/c;->b:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/micro/c;->a:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Liwz;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/c;->d(I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/protobuf/micro/c;->d(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([B)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 0
    array-length v0, p1

    .line 17000
    iget v1, p0, Lcom/google/protobuf/micro/c;->a:I

    iget v2, p0, Lcom/google/protobuf/micro/c;->b:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/micro/c;->d:[B

    iget v2, p0, Lcom/google/protobuf/micro/c;->b:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/protobuf/micro/c;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/c;->b:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/protobuf/micro/c;->a:I

    iget v2, p0, Lcom/google/protobuf/micro/c;->b:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/protobuf/micro/c;->d:[B

    iget v3, p0, Lcom/google/protobuf/micro/c;->b:I

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/micro/c;->a:I

    iput v1, p0, Lcom/google/protobuf/micro/c;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/micro/c;->a()V

    iget v1, p0, Lcom/google/protobuf/micro/c;->a:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/micro/c;->d:[B

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/protobuf/micro/c;->b:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/micro/c;->c:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static b(IJ)I
    .locals 3

    .prologue
    .line 0
    invoke-static {p0}, Lcom/google/protobuf/micro/c;->a(I)I

    move-result v0

    .line 9000
    invoke-static {p1, p2}, Lcom/google/protobuf/micro/c;->b(J)I

    move-result v1

    .line 0
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILiww;)I
    .locals 3

    .prologue
    .line 0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/micro/c;->a(I)I

    move-result v0

    .line 13000
    iget-object v1, p1, Liww;->a:[B

    array-length v1, v1

    .line 12000
    invoke-static {v1}, Lcom/google/protobuf/micro/c;->d(I)I

    move-result v1

    .line 14000
    iget-object v2, p1, Liww;->a:[B

    array-length v2, v2

    .line 12000
    add-int/2addr v1, v2

    .line 0
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILiwy;)I
    .locals 3

    .prologue
    .line 0
    invoke-static {p0}, Lcom/google/protobuf/micro/c;->a(I)I

    move-result v0

    .line 11000
    invoke-virtual {p1}, Liwy;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/micro/c;->d(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 0
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/c;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/c;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    int-to-byte v0, p1

    .line 16000
    iget v1, p0, Lcom/google/protobuf/micro/c;->b:I

    iget v2, p0, Lcom/google/protobuf/micro/c;->a:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/micro/c;->a()V

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/micro/c;->d:[B

    iget v2, p0, Lcom/google/protobuf/micro/c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/micro/c;->b:I

    aput-byte v0, v1, v2

    .line 0
    return-void
.end method

.method public static c(II)I
    .locals 2

    .prologue
    .line 0
    invoke-static {p0}, Lcom/google/protobuf/micro/c;->a(I)I

    move-result v1

    .line 10000
    if-ltz p1, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/micro/c;->d(I)I

    move-result v0

    .line 0
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 10000
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private c(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/micro/c;->b(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->b(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method private static d(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static d(II)I
    .locals 2

    .prologue
    .line 0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/micro/c;->a(I)I

    move-result v0

    .line 15000
    invoke-static {p1}, Lcom/google/protobuf/micro/c;->d(I)I

    move-result v1

    .line 0
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/protobuf/micro/c;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/micro/c$a;

    invoke-direct {v0}, Lcom/google/protobuf/micro/c$a;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/c;->c:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/micro/c;->d:[B

    iget v2, p0, Lcom/google/protobuf/micro/c;->b:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/protobuf/micro/c;->b:I

    return-void
.end method

.method public final a(II)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/c;->e(II)V

    .line 2000
    if-ltz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/c;->c(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/micro/c;->a(J)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/c;->e(II)V

    .line 1000
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/c;->a(J)V

    .line 0
    return-void
.end method

.method public final a(ILiww;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/micro/c;->e(II)V

    .line 7000
    iget-object v0, p2, Liww;->a:[B

    array-length v0, v0

    new-array v1, v0, [B

    iget-object v2, p2, Liww;->a:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6000
    array-length v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->c(I)V

    invoke-direct {p0, v1}, Lcom/google/protobuf/micro/c;->a([B)V

    .line 0
    return-void
.end method

.method public final a(ILiwy;)V
    .locals 1

    .prologue
    .line 0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/c;->e(II)V

    .line 5000
    invoke-virtual {p2}, Liwy;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->c(I)V

    invoke-virtual {p2, p0}, Liwy;->a(Lcom/google/protobuf/micro/c;)V

    .line 0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/c;->e(II)V

    .line 4000
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/google/protobuf/micro/c;->c(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->a([B)V

    .line 0
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/c;->e(II)V

    .line 3000
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->b(I)V

    .line 0
    return-void
.end method

.method public final a(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->b(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->b(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final b(II)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/micro/c;->e(II)V

    .line 8000
    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/c;->c(I)V

    .line 0
    return-void
.end method

.method public final e(II)V
    .locals 1

    invoke-static {p1, p2}, Liwz;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/c;->c(I)V

    return-void
.end method
