.class public Lcom/laiwang/protocol/android/az;
.super Ljava/lang/Object;
.source "ByteBufferInput.java"

# interfaces
.implements Lcom/laiwang/protocol/android/bb$d;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/az;->b()I

    move-result v2

    .line 16
    .local v2, "i":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    .line 20
    :goto_0
    return-object v3

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 18
    .local v0, "data":[B
    iget-object v3, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public a(I)[B
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v1, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, p1, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-array v0, p1, [B

    .line 31
    .local v0, "data":[B
    iget-object v1, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method b()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v1, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/laiwang/protocol/android/az;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 39
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 36
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
