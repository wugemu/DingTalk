.class Lcom/laiwang/protocol/android/ak$a;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/laiwang/protocol/android/af;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/nio/ByteBuffer;

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    .line 44
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;II)Lcom/laiwang/protocol/android/ak$a;
    .locals 7
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .param p1, "attsCount"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, p2, :cond_1

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[pack] load body err remain "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    move-object v3, v4

    .line 69
    :cond_0
    :goto_0
    return-object v3

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v2, v5, p2

    .line 52
    .local v2, "limit":I
    new-instance v3, Lcom/laiwang/protocol/android/ak$a;

    invoke-direct {v3}, Lcom/laiwang/protocol/android/ak$a;-><init>()V

    .line 53
    .local v3, "packBody":Lcom/laiwang/protocol/android/ak$a;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 54
    invoke-static {p0}, Lcom/laiwang/protocol/android/af;->b(Ljava/nio/ByteBuffer;)Lcom/laiwang/protocol/android/af;

    move-result-object v0

    .line 55
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    if-nez v0, :cond_2

    move-object v3, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {v3, v0}, Lcom/laiwang/protocol/android/ak$a;->a(Lcom/laiwang/protocol/android/af;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "attr":Lcom/laiwang/protocol/android/af;
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    .line 67
    iget-object v4, v3, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private a(Lcom/laiwang/protocol/android/af;)V
    .locals 2
    .param p1, "attribute"    # Lcom/laiwang/protocol/android/af;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/af;->c()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    iget v0, p0, Lcom/laiwang/protocol/android/ak$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/laiwang/protocol/android/ak$a;->c:I

    .line 167
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    iget-object v1, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/af;

    .line 136
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    if-nez v0, :cond_0

    .line 137
    const-wide/16 v2, -0x1

    .line 139
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af;->a()J

    move-result-wide v2

    goto :goto_0
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public a(IB)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    new-instance v0, Lcom/laiwang/protocol/android/af;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-direct {v0, p1, v1}, Lcom/laiwang/protocol/android/af;-><init>(I[B)V

    .line 117
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/ak$a;->a(Lcom/laiwang/protocol/android/af;)V

    .line 118
    return-void
.end method

.method public a(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "unsignedShort"    # I

    .prologue
    .line 109
    if-gez p2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/android/af;

    invoke-direct {v0, p1, p2}, Lcom/laiwang/protocol/android/af;-><init>(II)V

    .line 112
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/ak$a;->a(Lcom/laiwang/protocol/android/af;)V

    goto :goto_0
.end method

.method public a(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "unsignedInt"    # J

    .prologue
    .line 121
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/android/af;

    invoke-direct {v0, p1, p2, p3}, Lcom/laiwang/protocol/android/af;-><init>(IJ)V

    .line 124
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/ak$a;->a(Lcom/laiwang/protocol/android/af;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/android/af;

    invoke-direct {v0, p1, p2}, Lcom/laiwang/protocol/android/af;-><init>(ILjava/lang/String;)V

    .line 105
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/ak$a;->a(Lcom/laiwang/protocol/android/af;)V

    goto :goto_0
.end method

.method public a(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "byteArray"    # [B

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/android/af;

    invoke-direct {v0, p1, p2}, Lcom/laiwang/protocol/android/af;-><init>(I[B)V

    .line 131
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/ak$a;->a(Lcom/laiwang/protocol/android/af;)V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/af;

    .line 75
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/af;->a(Ljava/nio/ByteBuffer;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "attr":Lcom/laiwang/protocol/android/af;
    :cond_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 80
    :cond_1
    return-void
.end method

.method public b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/ak$a;->c()I

    move-result v0

    .line 172
    .local v0, "len":I
    iget-object v1, p0, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_0
    return v0
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/laiwang/protocol/android/ak$a;->b:Ljava/nio/ByteBuffer;

    .line 99
    return-void
.end method

.method public b(I)[B
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v1, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/af;

    .line 152
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    if-nez v0, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af;->b()[B

    move-result-object v1

    goto :goto_0
.end method

.method public c()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/laiwang/protocol/android/ak$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/af;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/af;->d()I

    move-result v2

    add-int/2addr v1, v2

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return v1
.end method
