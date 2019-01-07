.class public Lcom/laiwang/protocol/android/av;
.super Ljava/lang/Object;
.source "CodecHandler.java"

# interfaces
.implements Lcom/laiwang/protocol/core/Constants;


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/laiwang/protocol/android/bc;

.field private f:Lcom/laiwang/protocol/android/bb;

.field private g:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "zipThreshold"    # I
    .param p2, "pendingInitialBufferSize"    # I
    .param p3, "compactThreshod"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/laiwang/protocol/android/av;->b:I

    .line 27
    iput p2, p0, Lcom/laiwang/protocol/android/av;->c:I

    .line 28
    iput p3, p0, Lcom/laiwang/protocol/android/av;->d:I

    .line 29
    invoke-static {}, Lcom/laiwang/protocol/android/bb;->a()Lcom/laiwang/protocol/android/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/av;->f:Lcom/laiwang/protocol/android/bb;

    .line 30
    invoke-static {}, Lcom/laiwang/protocol/android/bc;->a()Lcom/laiwang/protocol/android/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/av;->e:Lcom/laiwang/protocol/android/bc;

    .line 31
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    .line 32
    return-void
.end method

.method static a(Lcom/laiwang/protocol/android/bd;I)Lcom/laiwang/protocol/android/bd;
    .locals 4
    .param p0, "bundle"    # Lcom/laiwang/protocol/android/bd;
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->payload()[B

    move-result-object v0

    .line 94
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->payload()[B

    move-result-object v1

    .line 96
    .local v1, "payload":[B
    array-length v2, v0

    if-lt v2, p1, :cond_0

    .line 97
    const-string/jumbo v2, "zip"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 98
    invoke-static {v0}, Lcom/laiwang/protocol/util/IOUtils;->zip([B)[B

    move-result-object v1

    .line 100
    :cond_0
    const-string/jumbo v2, "len"

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 101
    invoke-virtual {p0, v1}, Lcom/laiwang/protocol/android/bd;->payload([B)V

    .line 103
    .end local v1    # "payload":[B
    :cond_1
    return-object p0
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bd;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    new-instance v0, Lcom/laiwang/protocol/android/az;

    iget-object v2, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v2}, Lcom/laiwang/protocol/android/az;-><init>(Ljava/nio/ByteBuffer;)V

    .line 59
    .local v0, "input":Lcom/laiwang/protocol/android/bb$d;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/av;->f:Lcom/laiwang/protocol/android/bb;

    invoke-virtual {v2, v0, v1}, Lcom/laiwang/protocol/android/bb;->a(Lcom/laiwang/protocol/android/bb$d;Ljava/util/List;)Lcom/laiwang/protocol/android/bb;

    move-result-object v2

    iput-object v2, p0, Lcom/laiwang/protocol/android/av;->f:Lcom/laiwang/protocol/android/bb;
    :try_end_0
    .catch Lcom/laiwang/protocol/android/bb$e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 65
    return-object v1
.end method

.method private a(I)V
    .locals 1
    .param p1, "remaining"    # I

    .prologue
    .line 69
    :goto_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/av;->b(I)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    .local v0, "newbuf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 78
    iput-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/bd;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    new-instance v0, Lcom/laiwang/protocol/android/ba;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/ba;-><init>()V

    .line 83
    .local v0, "output":Lcom/laiwang/protocol/android/ba;
    const-string/jumbo v1, "mid"

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getMessageID()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/MessageID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/laiwang/protocol/android/bd;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 84
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->ENCODE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/android/bd;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget v1, p0, Lcom/laiwang/protocol/android/av;->b:I

    invoke-static {p1, v1}, Lcom/laiwang/protocol/android/av;->a(Lcom/laiwang/protocol/android/bd;I)Lcom/laiwang/protocol/android/bd;

    move-result-object p1

    .line 86
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->ENCODE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/av;->e:Lcom/laiwang/protocol/android/bc;

    invoke-virtual {v1, p1, v0}, Lcom/laiwang/protocol/android/bc;->a(Lcom/laiwang/protocol/android/bd;Lcom/laiwang/protocol/android/bc$a;)V

    .line 89
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ba;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bd;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/av;->a(I)V

    .line 38
    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 39
    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/laiwang/protocol/android/av;->c:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/laiwang/protocol/android/av;->c:I

    if-ge v0, v1, :cond_1

    .line 42
    iget v0, p0, Lcom/laiwang/protocol/android/av;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/laiwang/protocol/android/av;->g:I

    .line 47
    :goto_0
    iget v0, p0, Lcom/laiwang/protocol/android/av;->g:I

    iget v1, p0, Lcom/laiwang/protocol/android/av;->d:I

    if-ne v0, v1, :cond_0

    .line 48
    iget v0, p0, Lcom/laiwang/protocol/android/av;->c:I

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/av;->b(I)V

    .line 49
    iget-object v0, p0, Lcom/laiwang/protocol/android/av;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/laiwang/protocol/android/av;->a()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/laiwang/protocol/android/av;->g:I

    goto :goto_0
.end method
