.class public Lcom/laiwang/protocol/android/ba;
.super Ljava/lang/Object;
.source "ByteBufferOutput.java"

# interfaces
.implements Lcom/laiwang/protocol/android/bc$a;


# instance fields
.field final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ba;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/android/ba;->a(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 13
    :try_start_0
    const-string/jumbo v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/laiwang/protocol/android/ba;->a([B)V

    .line 14
    iget-object v1, p0, Lcom/laiwang/protocol/android/ba;->a:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a([B)V
    .locals 2
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/ba;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/laiwang/protocol/android/ba;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laiwang/protocol/android/ba;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
