.class public final Lliv;
.super Ljava/lang/Object;
.source "SpscUnboundedAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:I

.field private static final j:Ljava/lang/Object;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field c:I

.field d:J

.field e:I

.field f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lliv;->a:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lliv;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "bufferSize"    # I

    .prologue
    .line 45
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v3, 0x8

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Llje;->a(I)I

    move-result v2

    .line 47
    .local v2, "p2capacity":I
    add-int/lit8 v1, v2, -0x1

    .line 48
    .local v1, "mask":I
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v3, p0, Lliv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v3, p0, Lliv;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 51
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v0, p0, Lliv;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 52
    iput v1, p0, Lliv;->e:I

    .line 1216
    div-int/lit8 v3, v2, 0x4

    sget v4, Lliv;->a:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lliv;->c:I

    .line 54
    iput-object v0, p0, Lliv;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    iput v1, p0, Lliv;->g:I

    .line 56
    add-int/lit8 v3, v1, -0x1

    int-to-long v4, v3

    iput-wide v4, p0, Lliv;->d:J

    .line 57
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lliv;->a(J)V

    .line 58
    return-void
.end method

.method private static a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 8254
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 117
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private a(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 236
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    iget-object v0, p0, Lliv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 237
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .locals 3
    .param p3, "index"    # J
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lliv;->a(J)V

    .line 7250
    invoke-virtual {p1, p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method private b(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 240
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    iget-object v0, p0, Lliv;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 241
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lliv;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lliv;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 264
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final isEmpty()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 212
    .line 17220
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    iget-object v0, p0, Lliv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 17224
    iget-object v2, p0, Lliv;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 212
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v12, 0x1

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 71
    :cond_0
    iget-object v2, p0, Lliv;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1228
    .local v2, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iget-object v1, p0, Lliv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 73
    .local v4, "index":J
    iget v8, p0, Lliv;->e:I

    .line 1244
    .local v8, "mask":I
    long-to-int v1, v4

    and-int v6, v1, v8

    .line 75
    .local v6, "offset":I
    iget-wide v10, p0, Lliv;->d:J

    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    move-object v1, p0

    move-object v3, p1

    .line 76
    invoke-direct/range {v1 .. v6}, Lliv;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 78
    :cond_1
    iget v7, p0, Lliv;->c:I

    .line 80
    .local v7, "lookAheadStep":I
    int-to-long v10, v7

    add-long/2addr v10, v4

    .line 2244
    long-to-int v1, v10

    and-int v0, v1, v8

    .line 2254
    .local v0, "lookAheadElementOffset":I
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    int-to-long v10, v7

    add-long/2addr v10, v4

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lliv;->d:J

    move-object v1, p0

    move-object v3, p1

    .line 83
    invoke-direct/range {v1 .. v6}, Lliv;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v1

    goto :goto_0

    .line 84
    :cond_2
    add-long v10, v4, v12

    .line 3244
    long-to-int v1, v10

    and-int/2addr v1, v8

    .line 3254
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_3

    move-object v1, p0

    move-object v3, p1

    .line 85
    invoke-direct/range {v1 .. v6}, Lliv;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v1

    goto :goto_0

    .line 87
    :cond_3
    int-to-long v10, v8

    .line 4101
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    .line 4102
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 4103
    iput-object v3, p0, Lliv;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4104
    add-long/2addr v10, v4

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lliv;->d:J

    .line 4105
    add-long v10, v4, v12

    invoke-direct {p0, v10, v11}, Lliv;->a(J)V

    .line 4250
    invoke-virtual {v3, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 5113
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5250
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 4108
    sget-object v1, Lliv;->j:Ljava/lang/Object;

    .line 6250
    invoke-virtual {v2, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 88
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    iget-object v0, p0, Lliv;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 13232
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iget-object v6, p0, Lliv;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 169
    .local v2, "index":J
    iget v4, p0, Lliv;->g:I

    .line 13244
    .local v4, "mask":I
    long-to-int v6, v2

    and-int v5, v6, v4

    .line 13254
    .local v5, "offset":I
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 172
    .local v1, "e":Ljava/lang/Object;
    sget-object v6, Lliv;->j:Ljava/lang/Object;

    if-ne v1, v6, :cond_0

    .line 173
    invoke-static {v0}, Lliv;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    .line 14186
    iput-object v6, p0, Lliv;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 14244
    long-to-int v7, v2

    and-int/2addr v7, v4

    .line 14254
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .end local v1    # "e":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public final poll()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    const-wide/16 v10, 0x1

    const/4 v7, 0x0

    .line 128
    iget-object v0, p0, Lliv;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9232
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iget-object v8, p0, Lliv;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 130
    .local v2, "index":J
    iget v5, p0, Lliv;->g:I

    .line 9244
    .local v5, "mask":I
    long-to-int v8, v2

    and-int v6, v8, v5

    .line 9254
    .local v6, "offset":I
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "e":Ljava/lang/Object;
    sget-object v8, Lliv;->j:Ljava/lang/Object;

    if-ne v1, v8, :cond_0

    const/4 v4, 0x1

    .line 134
    .local v4, "isNextBuffer":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 135
    add-long v8, v2, v10

    invoke-direct {p0, v8, v9}, Lliv;->b(J)V

    .line 10250
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 11151
    .end local v1    # "e":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 133
    .end local v4    # "isNextBuffer":Z
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 138
    .restart local v4    # "isNextBuffer":Z
    :cond_1
    if-eqz v4, :cond_3

    .line 139
    invoke-static {v0}, Lliv;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v8

    .line 11147
    iput-object v8, p0, Lliv;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 11244
    long-to-int v9, v2

    and-int/2addr v9, v5

    .line 11254
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 11150
    .end local v1    # "e":Ljava/lang/Object;
    if-nez v1, :cond_2

    move-object v1, v7

    .line 11151
    goto :goto_1

    .line 11153
    :cond_2
    add-long/2addr v10, v2

    invoke-direct {p0, v10, v11}, Lliv;->b(J)V

    .line 12250
    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    goto :goto_1

    .restart local v1    # "e":Ljava/lang/Object;
    :cond_3
    move-object v1, v7

    .line 142
    goto :goto_1
.end method

.method public final remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 279
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 199
    .line 15224
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    iget-object v6, p0, Lliv;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 201
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 16220
    .local v2, "before":J
    iget-object v6, p0, Lliv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 16224
    .local v4, "currentProducerIndex":J
    iget-object v6, p0, Lliv;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 204
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 205
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lliv;, "Lliv<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
