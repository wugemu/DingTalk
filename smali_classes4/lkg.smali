.class public final Llkg;
.super Llgy;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Llkg;, "Llkg<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0, p1}, Llgy;-><init>(Llgy;)V

    .line 66
    iput-object p1, p0, Llkg;->b:Llgy;

    .line 67
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    .local p0, "this":Llkg;, "Llkg<TT;>;"
    iget-boolean v1, p0, Llkg;->a:Z

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Llkg;->a:Z

    .line 79
    :try_start_0
    iget-object v1, p0, Llkg;->b:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Llkg;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 90
    :try_start_3
    invoke-virtual {p0}, Llkg;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    throw v1

    .line 91
    :catch_2
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llkg;, "Llkg<TT;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 112
    invoke-static {p1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 113
    iget-boolean v0, p0, Llkg;->a:Z

    if-nez v0, :cond_0

    .line 114
    iput-boolean v6, p0, Llkg;->a:Z

    .line 1151
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->b()Llkl;

    .line 1153
    :try_start_0
    iget-object v0, p0, Llkg;->b:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1191
    :try_start_1
    invoke-virtual {p0}, Llkg;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 1195
    :cond_0
    return-void

    .line 1154
    :catch_0
    move-exception v0

    .line 1167
    :try_start_2
    invoke-virtual {p0}, Llkg;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1172
    throw v0

    .line 1168
    :catch_1
    move-exception v0

    .line 1169
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 1170
    new-instance v1, Lrx/exceptions/OnErrorNotImplementedException;

    const-string/jumbo v2, "Observer.onError not implemented and error while unsubscribing."

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v7

    aput-object v0, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1173
    :catch_2
    move-exception v0

    .line 1179
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 1181
    :try_start_3
    invoke-virtual {p0}, Llkg;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1187
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    const-string/jumbo v2, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v7

    aput-object v0, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1182
    :catch_3
    move-exception v1

    .line 1183
    invoke-static {v1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 1184
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string/jumbo v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v7

    aput-object v0, v5, v6

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1192
    :catch_4
    move-exception v0

    .line 1193
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 1194
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    .local p0, "this":Llkg;, "Llkg<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-boolean v1, p0, Llkg;->a:Z

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Llkg;->b:Llgy;

    invoke-virtual {v1, p1}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    goto :goto_0
.end method
