.class Lcom/laiwang/protocol/android/ak$b;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "type"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Lcom/laiwang/protocol/android/ak$b;->a:I

    .line 213
    iput p2, p0, Lcom/laiwang/protocol/android/ak$b;->b:I

    .line 214
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "type"    # I
    .param p3, "length"    # I
    .param p4, "attrCount"    # I
    .param p5, "noEncrypt"    # I

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lcom/laiwang/protocol/android/ak$b;->a:I

    .line 205
    iput p2, p0, Lcom/laiwang/protocol/android/ak$b;->b:I

    .line 206
    iput p3, p0, Lcom/laiwang/protocol/android/ak$b;->c:I

    .line 207
    iput p4, p0, Lcom/laiwang/protocol/android/ak$b;->d:I

    .line 208
    iput p5, p0, Lcom/laiwang/protocol/android/ak$b;->e:I

    .line 209
    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;)Lcom/laiwang/protocol/android/ak$b;
    .locals 9
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v8, 0x4

    if-lt v0, v8, :cond_0

    .line 226
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 227
    .local v6, "part1":S
    const v0, 0xf000

    and-int/2addr v0, v6

    shr-int/lit8 v2, v0, 0xc

    .line 228
    .local v2, "type":I
    and-int/lit16 v3, v6, 0xfff

    .line 229
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 230
    .local v7, "part2":S
    const v0, 0xc000

    and-int/2addr v0, v7

    shr-int/lit8 v1, v0, 0xe

    .line 231
    .local v1, "version":I
    and-int/lit16 v0, v7, 0x3f00

    shr-int/lit8 v4, v0, 0x8

    .line 232
    .local v4, "attrCount":I
    and-int/lit16 v0, v7, 0x80

    shr-int/lit8 v5, v0, 0x7

    .line 233
    .local v5, "noEncrypt":I
    new-instance v0, Lcom/laiwang/protocol/android/ak$b;

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/protocol/android/ak$b;-><init>(IIIII)V

    return-object v0

    .line 235
    .end local v1    # "version":I
    .end local v2    # "type":I
    .end local v3    # "length":I
    .end local v4    # "attrCount":I
    .end local v5    # "noEncrypt":I
    .end local v6    # "part1":S
    .end local v7    # "part2":S
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[pack] load header err "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "header byte array mismatched"

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x4

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget v0, p0, Lcom/laiwang/protocol/android/ak$b;->b:I

    shl-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/laiwang/protocol/android/ak$b;->c:I

    or-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 219
    iget v0, p0, Lcom/laiwang/protocol/android/ak$b;->a:I

    if-lez v0, :cond_0

    .line 220
    iget v0, p0, Lcom/laiwang/protocol/android/ak$b;->a:I

    shl-int/lit8 v0, v0, 0xe

    iget v1, p0, Lcom/laiwang/protocol/android/ak$b;->d:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/laiwang/protocol/android/ak$b;->e:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 222
    :cond_0
    return-void
.end method
