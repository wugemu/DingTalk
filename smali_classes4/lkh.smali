.class public final Llkh;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Llgt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llkh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Llgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgt",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private volatile c:Z

.field private d:Llkh$a;


# direct methods
.method public constructor <init>(Llgt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgt",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Llkh;, "Llkh<TT;>;"
    .local p1, "s":Llgt;, "Llgt<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Llkh;->a:Llgt;

    .line 68
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 157
    .local p0, "this":Llkh;, "Llkh<TT;>;"
    iget-boolean v1, p0, Llkh;->c:Z

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    monitor-enter p0

    .line 161
    :try_start_0
    iget-boolean v1, p0, Llkh;->c:Z

    if-eqz v1, :cond_1

    .line 162
    monitor-exit p0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Llkh;->c:Z

    .line 165
    iget-boolean v1, p0, Llkh;->b:Z

    if-eqz v1, :cond_3

    .line 166
    iget-object v0, p0, Llkh;->d:Llkh$a;

    .line 167
    .local v0, "list":Llkh$a;
    if-nez v0, :cond_2

    .line 168
    new-instance v0, Llkh$a;

    .end local v0    # "list":Llkh$a;
    invoke-direct {v0}, Llkh$a;-><init>()V

    .line 169
    .restart local v0    # "list":Llkh$a;
    iput-object v0, p0, Llkh;->d:Llkh$a;

    .line 171
    :cond_2
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Llkh$a;->a(Ljava/lang/Object;)V

    .line 172
    monitor-exit p0

    goto :goto_0

    .line 174
    .end local v0    # "list":Llkh$a;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Llkh;->b:Z

    .line 175
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    iget-object v1, p0, Llkh;->a:Llgt;

    invoke-interface {v1}, Llgt;->onCompleted()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    .local p0, "this":Llkh;, "Llkh<TT;>;"
    invoke-static {p1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 129
    iget-boolean v1, p0, Llkh;->c:Z

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 132
    :cond_0
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v1, p0, Llkh;->c:Z

    if-eqz v1, :cond_1

    .line 134
    monitor-exit p0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Llkh;->c:Z

    .line 137
    iget-boolean v1, p0, Llkh;->b:Z

    if-eqz v1, :cond_3

    .line 142
    iget-object v0, p0, Llkh;->d:Llkh$a;

    .line 143
    .local v0, "list":Llkh$a;
    if-nez v0, :cond_2

    .line 144
    new-instance v0, Llkh$a;

    .end local v0    # "list":Llkh$a;
    invoke-direct {v0}, Llkh$a;-><init>()V

    .line 145
    .restart local v0    # "list":Llkh$a;
    iput-object v0, p0, Llkh;->d:Llkh$a;

    .line 147
    :cond_2
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Llkh$a;->a(Ljava/lang/Object;)V

    .line 148
    monitor-exit p0

    goto :goto_0

    .line 150
    .end local v0    # "list":Llkh$a;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Llkh;->b:Z

    .line 151
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v1, p0, Llkh;->a:Llgt;

    invoke-interface {v1, p1}, Llgt;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llkh;, "Llkh<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 72
    iget-boolean v3, p0, Llkh;->c:Z

    if-eqz v3, :cond_0

    .line 120
    :goto_0
    return-void

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v3, p0, Llkh;->c:Z

    if-eqz v3, :cond_1

    .line 77
    monitor-exit p0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 79
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Llkh;->b:Z

    if-eqz v3, :cond_3

    .line 80
    iget-object v1, p0, Llkh;->d:Llkh$a;

    .line 81
    .local v1, "list":Llkh$a;
    if-nez v1, :cond_2

    .line 82
    new-instance v1, Llkh$a;

    .end local v1    # "list":Llkh$a;
    invoke-direct {v1}, Llkh$a;-><init>()V

    .line 83
    .restart local v1    # "list":Llkh$a;
    iput-object v1, p0, Llkh;->d:Llkh$a;

    .line 85
    :cond_2
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Llkh$a;->a(Ljava/lang/Object;)V

    .line 86
    monitor-exit p0

    goto :goto_0

    .line 88
    .end local v1    # "list":Llkh$a;
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Llkh;->b:Z

    .line 89
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    iget-object v3, p0, Llkh;->a:Llgt;

    invoke-interface {v3, p1}, Llgt;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :cond_4
    monitor-enter p0

    .line 100
    :try_start_3
    iget-object v1, p0, Llkh;->d:Llkh$a;

    .line 101
    .restart local v1    # "list":Llkh$a;
    if-nez v1, :cond_5

    .line 102
    const/4 v3, 0x0

    iput-boolean v3, p0, Llkh;->b:Z

    .line 103
    monitor-exit p0

    goto :goto_0

    .line 106
    .end local v1    # "list":Llkh$a;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v8, p0, Llkh;->c:Z

    .line 94
    iget-object v3, p0, Llkh;->a:Llgt;

    invoke-static {v0, v3, p1}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "list":Llkh$a;
    :cond_5
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Llkh;->d:Llkh$a;

    .line 106
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    iget-object v5, v1, Llkh$a;->a:[Ljava/lang/Object;

    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    .line 108
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 112
    :try_start_5
    iget-object v7, p0, Llkh;->a:Llgt;

    invoke-static {v7, v2}, Lrx/internal/operators/NotificationLite;->a(Llgt;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 113
    const/4 v3, 0x1

    iput-boolean v3, p0, Llkh;->c:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/lang/Throwable;
    iput-boolean v8, p0, Llkh;->c:Z

    .line 118
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 119
    iget-object v3, p0, Llkh;->a:Llgt;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface {v3, v4}, Llgt;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
