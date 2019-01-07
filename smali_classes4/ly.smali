.class public final Lly;
.super Llp$a;
.source "ParcelableInputStreamImpl.java"


# static fields
.field private static final g:Lik;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field final e:Ljava/util/concurrent/locks/ReentrantLock;

.field final f:Ljava/util/concurrent/locks/Condition;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lik;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Lik;->a(I)Lik;

    move-result-object v0

    sput-object v0, Lly;->g:Lik;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Llp$a;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lly;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lly;->i:Ljava/util/LinkedList;

    .line 28
    iput v1, p0, Lly;->l:I

    .line 30
    const/16 v0, 0x2710

    iput v0, p0, Lly;->b:I

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lly;->c:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lly;->d:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iget-object v0, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lly;->f:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v1, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    iget-object v1, p0, Lly;->i:Ljava/util/LinkedList;

    iget v2, p0, Lly;->j:I

    sget-object v3, Lly;->g:Lik;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 65
    .local v0, "byteArray":Lik;
    invoke-virtual {v0}, Lik;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v1, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    return-void

    .line 67
    .end local v0    # "byteArray":Lik;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public final a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    iget-object v2, p0, Lly;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 79
    :try_start_0
    iget v2, p0, Lly;->j:I

    iget-object v3, p0, Lly;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v2, v3, :cond_1

    .line 88
    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x0

    .line 90
    :goto_0
    return v2

    .line 82
    :cond_1
    :try_start_1
    iget-object v2, p0, Lly;->i:Ljava/util/LinkedList;

    iget v3, p0, Lly;->j:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 83
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lik;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lik;

    .line 2050
    iget v2, v2, Lik;->c:I

    .line 84
    add-int/2addr v0, v2

    goto :goto_1

    .line 86
    :cond_2
    iget v2, p0, Lly;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v2

    .line 88
    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v0

    .line 90
    goto :goto_0

    .line 88
    .end local v1    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lik;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public final a([B)I
    .locals 8
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    iget-object v4, p0, Lly;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Stream is closed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_0
    const/4 v2, 0x0

    .line 160
    .local v2, "destOffset":I
    iget-object v4, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 163
    iget v4, p0, Lly;->j:I

    iget-object v5, p0, Lly;->i:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 164
    iget-object v4, p0, Lly;->f:Ljava/util/concurrent/locks/Condition;

    iget v5, p0, Lly;->b:I

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    invoke-virtual {p0}, Lly;->b()V

    .line 166
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "await timeout."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {p0}, Lly;->b()V

    .line 191
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "await interrupt"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 170
    :cond_1
    :try_start_2
    iget-object v4, p0, Lly;->i:Ljava/util/LinkedList;

    iget v5, p0, Lly;->j:I

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 171
    .local v0, "byteArray":Lik;
    sget-object v4, Lly;->g:Lik;

    if-eq v0, v4, :cond_3

    .line 4050
    iget v4, v0, Lik;->c:I

    .line 175
    iget v5, p0, Lly;->k:I

    sub-int v3, v4, v5

    .line 176
    .local v3, "srcLength":I
    array-length v4, p1

    sub-int v1, v4, v2

    .line 177
    .local v1, "destLength":I
    if-gt v3, v1, :cond_2

    .line 5042
    iget-object v4, v0, Lik;->a:[B

    .line 178
    iget v5, p0, Lly;->k:I

    invoke-static {v4, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    add-int/2addr v2, v3

    .line 180
    invoke-direct {p0}, Lly;->f()V

    .line 181
    iget v4, p0, Lly;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lly;->j:I

    .line 182
    const/4 v4, 0x0

    iput v4, p0, Lly;->k:I

    goto :goto_0

    .line 6042
    :cond_2
    iget-object v4, v0, Lik;->a:[B

    .line 184
    iget v5, p0, Lly;->k:I

    invoke-static {v4, v5, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget v4, p0, Lly;->k:I

    add-int/2addr v4, v1

    iput v4, p0, Lly;->k:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    add-int/2addr v2, v1

    .line 188
    goto :goto_0

    .line 193
    .end local v0    # "byteArray":Lik;
    .end local v1    # "destLength":I
    .end local v3    # "srcLength":I
    :cond_3
    iget-object v4, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    if-lez v2, :cond_4

    .end local v2    # "destOffset":I
    :goto_1
    return v2

    .restart local v2    # "destOffset":I
    :cond_4
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final a(I)J
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "skip":I
    iget-object v3, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 203
    :goto_0
    if-ge v2, p1, :cond_0

    .line 204
    :try_start_0
    iget v3, p0, Lly;->j:I

    iget-object v4, p0, Lly;->i:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 208
    iget-object v3, p0, Lly;->i:Ljava/util/LinkedList;

    iget v4, p0, Lly;->j:I

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 209
    .local v0, "byteArray":Lik;
    sget-object v3, Lly;->g:Lik;

    if-eq v0, v3, :cond_0

    .line 6050
    iget v1, v0, Lik;->c:I

    .line 214
    .local v1, "length":I
    iget v3, p0, Lly;->k:I

    sub-int v3, v1, v3

    sub-int v4, p1, v2

    if-ge v3, v4, :cond_1

    .line 215
    iget v3, p0, Lly;->k:I

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    .line 216
    invoke-direct {p0}, Lly;->f()V

    .line 217
    iget v3, p0, Lly;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lly;->j:I

    .line 218
    const/4 v3, 0x0

    iput v3, p0, Lly;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v0    # "byteArray":Lik;
    .end local v1    # "length":I
    :cond_0
    iget-object v3, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 228
    int-to-long v4, v2

    return-wide v4

    .line 221
    .restart local v0    # "byteArray":Lik;
    .restart local v1    # "length":I
    :cond_1
    move v2, p1

    .line 222
    :try_start_1
    iget v3, p0, Lly;->k:I

    sub-int v4, p1, v2

    add-int/2addr v3, v4

    iput v3, p0, Lly;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    .end local v0    # "byteArray":Lik;
    .end local v1    # "length":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public final a(Lik;)V
    .locals 2
    .param p1, "b"    # Lik;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lly;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 43
    :try_start_0
    iget-object v0, p0, Lly;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, Lly;->l:I

    .line 1050
    iget v1, p1, Lik;->c:I

    .line 44
    add-int/2addr v0, v1

    iput v0, p0, Lly;->l:I

    .line 45
    iget-object v0, p0, Lly;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v2, p0, Lly;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 98
    :try_start_0
    iget-object v2, p0, Lly;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 99
    .local v0, "byteArray":Lik;
    sget-object v2, Lly;->g:Lik;

    if-eq v0, v2, :cond_0

    .line 100
    invoke-virtual {v0}, Lik;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "byteArray":Lik;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 103
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lly;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lly;->i:Ljava/util/LinkedList;

    .line 105
    const/4 v2, -0x1

    iput v2, p0, Lly;->j:I

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lly;->k:I

    .line 107
    const/4 v2, 0x0

    iput v2, p0, Lly;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public final c()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    iget-object v2, p0, Lly;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 123
    :goto_0
    :try_start_0
    iget v2, p0, Lly;->j:I

    iget-object v3, p0, Lly;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 124
    iget-object v2, p0, Lly;->f:Ljava/util/concurrent/locks/Condition;

    iget v3, p0, Lly;->b:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-virtual {p0}, Lly;->b()V

    .line 126
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "await timeout."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {p0}, Lly;->b()V

    .line 147
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "await interrupt"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 129
    :cond_1
    :try_start_2
    iget-object v2, p0, Lly;->i:Ljava/util/LinkedList;

    iget v3, p0, Lly;->j:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 130
    .local v0, "byteArray":Lik;
    sget-object v2, Lly;->g:Lik;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v2, :cond_2

    .line 131
    const/4 v1, -0x1

    .line 149
    .local v1, "ret":I
    :goto_1
    iget-object v2, p0, Lly;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    return v1

    .line 135
    .end local v1    # "ret":I
    :cond_2
    :try_start_3
    iget v2, p0, Lly;->k:I

    .line 3050
    iget v3, v0, Lik;->c:I

    .line 135
    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 136
    iget v2, p0, Lly;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lly;->k:I

    .line 4042
    iget-object v2, v0, Lik;->a:[B

    .line 137
    iget v3, p0, Lly;->k:I

    aget-byte v1, v2, v3

    .line 138
    .restart local v1    # "ret":I
    goto :goto_1

    .line 140
    .end local v1    # "ret":I
    :cond_3
    invoke-direct {p0}, Lly;->f()V

    .line 141
    iget v2, p0, Lly;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lly;->j:I

    .line 142
    const/4 v2, 0x0

    iput v2, p0, Lly;->k:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    iget v0, p0, Lly;->a:I

    return v0
.end method

.method public final e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    sget-object v0, Lly;->g:Lik;

    invoke-virtual {p0, v0}, Lly;->a(Lik;)V

    .line 53
    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "anet.ParcelableInputStreamImpl"

    const-string/jumbo v1, "set EOS flag to stream"

    iget-object v2, p0, Lly;->d:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget v0, p0, Lly;->a:I

    if-eqz v0, :cond_1

    iget v0, p0, Lly;->a:I

    iget v1, p0, Lly;->l:I

    if-eq v0, v1, :cond_1

    .line 57
    const-string/jumbo v0, "anet.ParcelableInputStreamImpl"

    const-string/jumbo v1, "data length no match!"

    iget-object v2, p0, Lly;->d:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ContentLength"

    aput-object v4, v3, v5

    iget v4, p0, Lly;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "Received"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lly;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lly;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_1
    return-void
.end method
