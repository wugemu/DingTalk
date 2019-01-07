.class Lcom/laiwang/protocol/android/af$b;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field protected a:Lcom/laiwang/protocol/android/af$b;

.field protected b:Ljava/nio/ByteBuffer;

.field protected c:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 326
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "v"    # [B

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    .line 330
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    array-length v0, v0

    .line 339
    :goto_0
    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public b()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    .line 361
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    .line 357
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 358
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 359
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$b;->c:[B

    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
