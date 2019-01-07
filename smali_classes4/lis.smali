.class public final Llis;
.super Llip;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Llip",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/Integer;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicLong;

.field d:J

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Llis;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 42
    .local p0, "this":Llis;, "Llis<TE;>;"
    invoke-direct {p0, p1}, Llip;-><init>(I)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Llis;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Llis;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    div-int/lit8 v0, p1, 0x4

    sget-object v1, Llis;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Llis;->f:I

    .line 46
    return-void
.end method


# virtual methods
.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Llis;, "Llis<TE;>;"
    invoke-super {p0}, Llip;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    .line 5127
    .local p0, "this":Llis;, "Llis<TE;>;"
    iget-object v0, p0, Llis;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 6124
    iget-object v2, p0, Llis;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 112
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Llis;, "Llis<TE;>;"
    invoke-super {p0}, Llip;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    .local p0, "this":Llis;, "Llis<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 51
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "Null is not a valid element"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_0
    iget-object v0, p0, Llis;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Llis;->b:I

    .line 56
    .local v1, "mask":I
    iget-object v6, p0, Llis;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 1042
    .local v2, "index":J
    long-to-int v6, v2

    and-int v4, v6, v1

    .line 58
    .local v4, "offset":I
    iget-wide v6, p0, Llis;->d:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    .line 59
    iget v5, p0, Llis;->f:I

    .line 60
    .local v5, "step":I
    int-to-long v6, v5

    add-long/2addr v6, v2

    .line 2042
    long-to-int v6, v6

    and-int/2addr v6, v1

    .line 2048
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 60
    if-nez v6, :cond_2

    .line 61
    int-to-long v6, v5

    add-long/2addr v6, v2

    iput-wide v6, p0, Llis;->d:J

    .line 3063
    .end local v5    # "step":I
    :cond_1
    invoke-virtual {v0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 68
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    .line 3116
    iget-object v8, p0, Llis;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 69
    const/4 v6, 0x1

    :goto_0
    return v6

    .line 3048
    .restart local v5    # "step":I
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    .local p0, "this":Llis;, "Llis<TE;>;"
    iget-object v0, p0, Llis;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llis;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Llis;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llis;, "Llis<TE;>;"
    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Llis;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 75
    .local v2, "index":J
    invoke-virtual {p0, v2, v3}, Llis;->a(J)I

    move-result v4

    .line 77
    .local v4, "offset":I
    iget-object v1, p0, Llis;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4048
    .local v1, "lElementBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v5

    .line 84
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 4063
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 83
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    .line 4120
    iget-object v5, p0, Llis;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    goto :goto_0
.end method

.method public final size()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    .line 4124
    .local p0, "this":Llis;, "Llis<TE;>;"
    iget-object v6, p0, Llis;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 101
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 4127
    .local v2, "before":J
    iget-object v6, p0, Llis;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 5124
    .local v4, "currentProducerIndex":J
    iget-object v6, p0, Llis;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 104
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 105
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
