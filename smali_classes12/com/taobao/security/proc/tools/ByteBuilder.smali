.class public Lcom/taobao/security/proc/tools/ByteBuilder;
.super Ljava/lang/Object;
.source "ByteBuilder.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x400


# instance fields
.field private data:[B

.field private length:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->data:[B

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    .line 14
    iput v1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->size:I

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-gtz p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->data:[B

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    .line 23
    iput p1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->size:I

    .line 24
    return-void
.end method

.method private increase(I)V
    .locals 4
    .param p1, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 48
    iget v1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 49
    .local v0, "dataTemp":[B
    iget-object v1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->data:[B

    iget v2, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput-object v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->data:[B

    .line 51
    iget v1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->size:I

    .line 52
    return-void
.end method


# virtual methods
.method public append([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 35
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/taobao/security/proc/tools/ByteBuilder;->append([BI)V

    .line 36
    return-void
.end method

.method public append([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->size:I

    if-le v0, v1, :cond_0

    .line 40
    invoke-direct {p0, p2}, Lcom/taobao/security/proc/tools/ByteBuilder;->increase(I)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->data:[B

    iget v2, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    .line 45
    return-void
.end method

.method public getByteArray()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->data:[B

    return-object v0
.end method

.method public getlength()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/taobao/security/proc/tools/ByteBuilder;->length:I

    return v0
.end method
