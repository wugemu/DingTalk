.class final Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
.super Llgy;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;",
        "Llhf;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-",
            "Llgs",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Llgz;

.field f:I

.field g:Llkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llkv",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;II)V
    .locals 2
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Llgs",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-Llgs<TT;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 187
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a:Llgy;

    .line 188
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->b:I

    .line 189
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->c:I

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    invoke-static {p0}, Llkz;->a(Llhf;)Llgz;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->e:Llgz;

    .line 192
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->e:Llgz;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a(Llgz;)V

    .line 193
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a(J)V

    .line 194
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a(J)V

    return-void
.end method

.method static synthetic b(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a(J)V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->unsubscribe()V

    .line 259
    :cond_0
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 241
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->g:Llkv;

    .line 243
    .local v0, "w":Llkv;, "Llkv<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->g:Llkv;

    .line 245
    invoke-virtual {v0}, Llkv;->onCompleted()V

    .line 247
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 248
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->g:Llkv;

    .line 232
    .local v0, "w":Llkv;, "Llkv<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->g:Llkv;

    .line 234
    invoke-virtual {v0, p1}, Llkv;->onError(Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a:Llgy;

    invoke-virtual {v1, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 237
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 198
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->f:I

    .line 200
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->g:Llkv;

    .line 201
    .local v1, "w":Llkv;, "Llkv<TT;TT;>;"
    if-nez v0, :cond_0

    .line 202
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 204
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->b:I

    invoke-static {v2, p0}, Lrx/subjects/UnicastSubject;->a(ILlhf;)Lrx/subjects/UnicastSubject;

    move-result-object v1

    .line 205
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->g:Llkv;

    .line 207
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->a:Llgy;

    invoke-virtual {v2, v1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1, p1}, Llkv;->onNext(Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->b:I

    if-ne v0, v2, :cond_2

    .line 216
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->f:I

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->g:Llkv;

    .line 218
    invoke-virtual {v1}, Llkv;->onCompleted()V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_2
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->c:I

    if-ne v0, v2, :cond_3

    .line 221
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->f:I

    goto :goto_0

    .line 223
    :cond_3
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->f:I

    goto :goto_0
.end method
