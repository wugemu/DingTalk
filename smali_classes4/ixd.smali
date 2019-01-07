.class public abstract Lixd;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lixd;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lixd;[B)Lixd;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lixd;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "msg":Lixd;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lixd;->mergeFrom(Lixd;[BII)Lixd;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lixd;[BII)Lixd;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lixd;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 141
    .line 3060
    .local p0, "msg":Lixd;, "TT;"
    :try_start_0
    new-instance v1, Lixa;

    invoke-direct {v1, p1, p2, p3}, Lixa;-><init>([BII)V

    .line 143
    .local v1, "input":Lixa;
    invoke-virtual {p0, v1}, Lixd;->mergeFrom(Lixa;)Lixd;

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lixa;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    return-object p0

    .line 146
    .end local v1    # "input":Lixa;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    throw v0

    .line 149
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final messageNanoEquals(Lixd;Lixd;)Z
    .locals 6
    .param p0, "a"    # Lixd;
    .param p1, "b"    # Lixd;

    .prologue
    const/4 v3, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 160
    const/4 v3, 0x1

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 162
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 168
    invoke-virtual {p0}, Lixd;->getSerializedSize()I

    move-result v2

    .line 169
    .local v2, "serializedSize":I
    invoke-virtual {p1}, Lixd;->getSerializedSize()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 172
    new-array v0, v2, [B

    .line 173
    .local v0, "aByteArray":[B
    new-array v1, v2, [B

    .line 174
    .local v1, "bByteArray":[B
    invoke-static {p0, v0, v3, v2}, Lixd;->toByteArray(Lixd;[BII)V

    .line 175
    invoke-static {p1, v1, v3, v2}, Lixd;->toByteArray(Lixd;[BII)V

    .line 176
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0
.end method

.method public static final toByteArray(Lixd;[BII)V
    .locals 4
    .param p0, "msg"    # Lixd;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 115
    .line 1087
    :try_start_0
    new-instance v1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    .line 117
    .local v1, "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v1}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2895
    iget-object v2, v1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 1906
    if-eqz v2, :cond_0

    .line 1907
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Did not write as much data as expected."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    :cond_0
    return-void
.end method

.method public static final toByteArray(Lixd;)[B
    .locals 3
    .param p0, "msg"    # Lixd;

    .prologue
    .line 100
    invoke-virtual {p0}, Lixd;->getSerializedSize()I

    move-result v1

    new-array v0, v1, [B

    .line 101
    .local v0, "result":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lixd;->toByteArray(Lixd;[BII)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public clone()Lixd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lixd;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lixd;->clone()Lixd;

    move-result-object v0

    return-object v0
.end method

.method public computeSerializedSize()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lixd;->cachedSize:I

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lixd;->getSerializedSize()I

    .line 56
    :cond_0
    iget v0, p0, Lixd;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lixd;->computeSerializedSize()I

    move-result v0

    .line 66
    .local v0, "size":I
    iput v0, p0, Lixd;->cachedSize:I

    .line 67
    return v0
.end method

.method public abstract mergeFrom(Lixa;)Lixd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {p0}, Lixe;->a(Lixd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method
