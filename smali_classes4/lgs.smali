.class public Llgs;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llgs$b;,
        Llgs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Llgs$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Llgs$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    .local p1, "f":Llgs$a;, "Llgs$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Llgs;->a:Llgs$a;

    .line 62
    return-void
.end method

.method public static a(Llgs$a;)Llgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs$a",
            "<TT;>;)",
            "Llgs",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    .local p0, "f":Llgs$a;, "Llgs$a<TT;>;"
    new-instance v0, Llgs;

    invoke-static {p0}, Llkm;->a(Llgs$a;)Llgs$a;

    move-result-object v1

    invoke-direct {v0, v1}, Llgs;-><init>(Llgs$a;)V

    return-object v0
.end method

.method public static a(Llgy;Llgs;)Llgz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgy",
            "<-TT;>;",
            "Llgs",
            "<TT;>;)",
            "Llgz;"
        }
    .end annotation

    .prologue
    .line 10324
    .local p0, "subscriber":Llgy;, "Llgy<-TT;>;"
    .local p1, "observable":Llgs;, "Llgs<TT;>;"
    if-nez p0, :cond_0

    .line 10325
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "subscriber can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10327
    :cond_0
    iget-object v4, p1, Llgs;->a:Llgs$a;

    if-nez v4, :cond_1

    .line 10328
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10336
    :cond_1
    invoke-virtual {p0}, Llgy;->a()V

    .line 10343
    instance-of v4, p0, Llkg;

    if-nez v4, :cond_2

    .line 10345
    new-instance v3, Llkg;

    invoke-direct {v3, p0}, Llkg;-><init>(Llgy;)V

    .end local p0    # "subscriber":Llgy;, "Llgy<-TT;>;"
    .local v3, "subscriber":Llgy;, "Llgy<-TT;>;"
    move-object p0, v3

    .line 10352
    .end local v3    # "subscriber":Llgy;, "Llgy<-TT;>;"
    .restart local p0    # "subscriber":Llgy;, "Llgy<-TT;>;"
    :cond_2
    :try_start_0
    iget-object v4, p1, Llgs;->a:Llgs$a;

    invoke-static {p1, v4}, Llkm;->a(Llgs;Llgs$a;)Llgs$a;

    move-result-object v4

    invoke-interface {v4, p0}, Llgs$a;->call(Ljava/lang/Object;)V

    .line 10353
    invoke-static {p0}, Llkm;->a(Llgz;)Llgz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 10375
    :goto_0
    return-object v4

    .line 10354
    :catch_0
    move-exception v0

    .line 10356
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 10358
    invoke-virtual {p0}, Llgy;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10359
    invoke-static {v0}, Llkm;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 10375
    :goto_1
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v4

    goto :goto_0

    .line 10363
    :cond_3
    :try_start_1
    invoke-static {v0}, Llkm;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 10364
    :catch_1
    move-exception v1

    .line 10365
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 10368
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error occurred attempting to subscribe ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10370
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Llkm;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10372
    throw v2
.end method

.method public static b(Llgs$a;)Llgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs$a",
            "<TT;>;)",
            "Llgs",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "f":Llgs$a;, "Llgs$a<TT;>;"
    new-instance v0, Llgs;

    invoke-static {p0}, Llkm;->a(Llgs$a;)Llgs$a;

    move-result-object v1

    invoke-direct {v0, v1}, Llgs;-><init>(Llgs$a;)V

    return-object v0
.end method


# virtual methods
.method public final a(Llgs$b;)Llgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs$b",
            "<+TR;-TT;>;)",
            "Llgs",
            "<TR;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 299
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    .local p1, "operator":Llgs$b;, "Llgs$b<+TR;-TT;>;"
    new-instance v0, Llhp;

    iget-object v1, p0, Llgs;->a:Llgs$a;

    invoke-direct {v0, v1, p1}, Llhp;-><init>(Llgs$a;Llgs$b;)V

    invoke-static {v0}, Llgs;->b(Llgs$a;)Llgs;

    move-result-object v0

    return-object v0
.end method

.method public final a(Llgv;)Llgs;
    .locals 3
    .param p1, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgv;",
            ")",
            "Llgs",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 7733
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    sget v0, Llin;->b:I

    .line 10838
    instance-of v1, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_0

    .line 10839
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Llgs;, "Llgs<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->b(Llgv;)Llgs;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10841
    .restart local p0    # "this":Llgs;, "Llgs<TT;>;"
    :cond_0
    new-instance v1, Llhu;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Llhu;-><init>(Llgv;ZI)V

    invoke-virtual {p0, v1}, Llgs;->a(Llgs$b;)Llgs;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Llhf;)Llgs;
    .locals 4
    .param p1, "onTerminate"    # Llhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhf;",
            ")",
            "Llgs",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 5976
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v2

    .line 5977
    .local v2, "onNext":Llhg;, "Llhg<TT;>;"
    invoke-static {p1}, Lrx/functions/Actions;->a(Llhf;)Llhg;

    move-result-object v1

    .line 5979
    .local v1, "onError":Llhg;, "Llhg<Ljava/lang/Throwable;>;"
    new-instance v0, Llii;

    invoke-direct {v0, v2, v1, p1}, Llii;-><init>(Llhg;Llhg;Llhf;)V

    .line 5981
    .local v0, "observer":Llgt;, "Llgt<TT;>;"
    new-instance v3, Llho;

    invoke-direct {v3, p0, v0}, Llho;-><init>(Llgs;Llgt;)V

    invoke-static {v3}, Llgs;->b(Llgs$a;)Llgs;

    move-result-object v3

    return-object v3
.end method

.method public final a(Llhk;)Llgs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Llhk",
            "<-TT;+TR;>;)",
            "Llgs",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7650
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    .local p1, "func":Llhk;, "Llhk<-TT;+TR;>;"
    new-instance v0, Llhq;

    invoke-direct {v0, p0, p1}, Llhq;-><init>(Llgs;Llhk;)V

    invoke-static {v0}, Llgs;->b(Llgs$a;)Llgs;

    move-result-object v0

    return-object v0
.end method

.method public final a(Llgy;)Llgz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)",
            "Llgz;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 10254
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    .local p1, "subscriber":Llgy;, "Llgy<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Llgy;->a()V

    .line 10256
    iget-object v3, p0, Llgs;->a:Llgs$a;

    invoke-static {p0, v3}, Llkm;->a(Llgs;Llgs$a;)Llgs$a;

    move-result-object v3

    invoke-interface {v3, p1}, Llgs$a;->call(Ljava/lang/Object;)V

    .line 10257
    invoke-static {p1}, Llkm;->a(Llgz;)Llgz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 10274
    :goto_0
    return-object v3

    .line 10258
    :catch_0
    move-exception v0

    .line 10260
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 10263
    :try_start_1
    invoke-static {v0}, Llkm;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10274
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v3

    goto :goto_0

    .line 10264
    :catch_1
    move-exception v1

    .line 10265
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 10268
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10270
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Llkm;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10272
    throw v2
.end method

.method public final a(Llhg;Llhg;)Llgz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhg",
            "<-TT;>;",
            "Llhg",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Llgz;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 10158
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    .local p1, "onNext":Llhg;, "Llhg<-TT;>;"
    .local p2, "onError":Llhg;, "Llhg<Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v0

    .line 10159
    .local v0, "onCompleted":Llhf;
    new-instance v1, Llij;

    invoke-direct {v1, p1, p2, v0}, Llij;-><init>(Llhg;Llhg;Llhf;)V

    .line 11319
    invoke-static {v1, p0}, Llgs;->a(Llgy;Llgs;)Llgz;

    move-result-object v1

    .line 10159
    return-object v1
.end method

.method public final b(Llhf;)Llgs;
    .locals 1
    .param p1, "action"    # Llhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhf;",
            ")",
            "Llgs",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6592
    .local p0, "this":Llgs;, "Llgs<TT;>;"
    new-instance v0, Llhs;

    invoke-direct {v0, p1}, Llhs;-><init>(Llhf;)V

    invoke-virtual {p0, v0}, Llgs;->a(Llgs$b;)Llgs;

    move-result-object v0

    return-object v0
.end method
