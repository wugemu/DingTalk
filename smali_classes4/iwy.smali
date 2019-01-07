.class public abstract Liwy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Liwx;)Liwy;
.end method

.method public final a([B)Liwy;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Liwy;->b([BII)Liwy;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/google/protobuf/micro/c;)V
.end method

.method public final a([BII)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 1000
    :try_start_0
    new-instance v0, Lcom/google/protobuf/micro/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/protobuf/micro/c;-><init>([BII)V

    .line 0
    invoke-virtual {p0, v0}, Liwy;->a(Lcom/google/protobuf/micro/c;)V

    .line 3000
    iget-object v1, v0, Lcom/google/protobuf/micro/c;->c:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    iget v1, v0, Lcom/google/protobuf/micro/c;->a:I

    iget v0, v0, Lcom/google/protobuf/micro/c;->b:I

    sub-int v0, v1, v0

    .line 2000
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3000
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 0
    :cond_1
    return-void
.end method

.method public abstract b()I
.end method

.method public final b([BII)Liwy;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 4000
    :try_start_0
    new-instance v0, Liwx;

    invoke-direct {v0, p1, p2, p3}, Liwx;-><init>([BII)V

    .line 0
    invoke-virtual {p0, v0}, Liwy;->a(Liwx;)Liwy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liwx;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()[B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Liwy;->b()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Liwy;->a([BII)V

    return-object v0
.end method
