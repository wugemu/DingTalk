.class final Lrx/subjects/PublishSubject$PublishSubjectState;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "PublishSubject.java"

# interfaces
.implements Llgs$a;
.implements Llgt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubjectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<[",
        "Lrx/subjects/PublishSubject$PublishSubjectProducer",
        "<TT;>;>;",
        "Llgs$a",
        "<TT;>;",
        "Llgt",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

.field static final TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

.field private static final serialVersionUID:J = -0x690a478d773d9c84L


# instance fields
.field error:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    new-array v0, v1, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    sput-object v0, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 130
    new-array v0, v1, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    sput-object v0, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 136
    sget-object v0, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->lazySet(Ljava/lang/Object;)V

    .line 137
    return-void
.end method


# virtual methods
.method final add(Lrx/subjects/PublishSubject$PublishSubjectProducer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectProducer",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "inner":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const/4 v3, 0x0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 163
    .local v0, "curr":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    sget-object v4, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v4, :cond_1

    .line 175
    :goto_0
    return v3

    .line 167
    :cond_1
    array-length v1, v0

    .line 170
    .local v1, "n":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 171
    .local v2, "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    aput-object p1, v2, v1

    .line 174
    invoke-virtual {p0, v0, v2}, Lrx/subjects/PublishSubject$PublishSubjectState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/subjects/PublishSubject$PublishSubjectState;->call(Llgy;)V

    return-void
.end method

.method public final call(Llgy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "t":Llgy;, "Llgy<-TT;>;"
    new-instance v1, Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-direct {v1, p0, p1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;-><init>(Lrx/subjects/PublishSubject$PublishSubjectState;Llgy;)V

    .line 142
    .local v1, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 143
    invoke-virtual {p1, v1}, Llgy;->a(Llgu;)V

    .line 145
    invoke-virtual {p0, v1}, Lrx/subjects/PublishSubject$PublishSubjectState;->add(Lrx/subjects/PublishSubject$PublishSubjectProducer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lrx/subjects/PublishSubject$PublishSubjectState;->remove(Lrx/subjects/PublishSubject$PublishSubjectProducer;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    .line 151
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Llgy;->onCompleted()V

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 245
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    sget-object v1, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v1}, Lrx/subjects/PublishSubject$PublishSubjectState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 246
    .local v0, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {v0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->onCompleted()V

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 226
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    iput-object p1, p0, Lrx/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v3, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v3}, Lrx/subjects/PublishSubject$PublishSubjectState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 230
    .local v2, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :try_start_0
    invoke-virtual {v2, p1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .restart local v0    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_1
    invoke-static {v0}, Llhe;->a(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 218
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 219
    .local v0, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {v0, p1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->onNext(Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_0
    return-void
.end method

.method final remove(Lrx/subjects/PublishSubject$PublishSubjectProducer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectProducer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "inner":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const/4 v7, 0x0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 184
    .local v0, "curr":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    sget-object v5, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v5, :cond_2

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    array-length v3, v0

    .line 189
    .local v3, "n":I
    const/4 v2, -0x1

    .line 190
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 191
    aget-object v5, v0, v1

    if-ne v5, p1, :cond_4

    .line 192
    move v2, v1

    .line 197
    :cond_3
    if-ltz v2, :cond_1

    .line 202
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 203
    sget-object v4, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 210
    .local v4, "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :goto_2
    invoke-virtual {p0, v0, v4}, Lrx/subjects/PublishSubject$PublishSubjectState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 190
    .end local v4    # "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 206
    .restart local v4    # "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
