.class final Lrx/subjects/SubjectSubscriptionManager;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/SubjectSubscriptionManager$b;,
        Lrx/subjects/SubjectSubscriptionManager$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$a",
        "<TT;>;>;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53c184d753c8b010L


# instance fields
.field active:Z

.field volatile latest:Ljava/lang/Object;

.field onAdded:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field onStart:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field onTerminated:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$a;->e:Lrx/subjects/SubjectSubscriptionManager$a;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 44
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Llhg;

    .line 46
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Llhg;

    .line 48
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Llhg;

    .line 52
    return-void
.end method


# virtual methods
.method final add(Lrx/subjects/SubjectSubscriptionManager$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    const/4 v2, 0x0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/SubjectSubscriptionManager$a;

    .line 94
    .local v1, "oldState":Lrx/subjects/SubjectSubscriptionManager$a;
    iget-boolean v3, v1, Lrx/subjects/SubjectSubscriptionManager$a;->a:Z

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Llhg;

    invoke-interface {v3, p1}, Llhg;->call(Ljava/lang/Object;)V

    .line 101
    :goto_0
    return v2

    .line 1160
    :cond_1
    iget-object v3, v1, Lrx/subjects/SubjectSubscriptionManager$a;->b:[Lrx/subjects/SubjectSubscriptionManager$b;

    .line 1161
    array-length v3, v3

    .line 1162
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lrx/subjects/SubjectSubscriptionManager$b;

    .line 1163
    iget-object v5, v1, Lrx/subjects/SubjectSubscriptionManager$a;->b:[Lrx/subjects/SubjectSubscriptionManager$b;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    aput-object p1, v4, v3

    .line 1165
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$a;

    iget-boolean v3, v1, Lrx/subjects/SubjectSubscriptionManager$a;->a:Z

    invoke-direct {v0, v3, v4}, Lrx/subjects/SubjectSubscriptionManager$a;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$b;)V

    .line 99
    .local v0, "newState":Lrx/subjects/SubjectSubscriptionManager$a;
    invoke-virtual {p0, v1, v0}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Llhg;

    invoke-interface {v2, p1}, Llhg;->call(Ljava/lang/Object;)V

    .line 101
    const/4 v2, 0x1

    goto :goto_0
.end method

.method final addUnsubscriber(Llgy;Lrx/subjects/SubjectSubscriptionManager$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    .local p2, "bo":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$1;

    invoke-direct {v0, p0, p2}, Lrx/subjects/SubjectSubscriptionManager$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$b;)V

    invoke-static {v0}, Llkz;->a(Llhf;)Llgz;

    move-result-object v0

    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 73
    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->call(Llgy;)V

    return-void
.end method

.method public final call(Llgy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$b;

    invoke-direct {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$b;-><init>(Llgy;)V

    .line 57
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    invoke-virtual {p0, p1, v0}, Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Llgy;Lrx/subjects/SubjectSubscriptionManager$b;)V

    .line 58
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Llhg;

    invoke-interface {v1, v0}, Llhg;->call(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Llgy;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->add(Lrx/subjects/SubjectSubscriptionManager$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Llgy;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lrx/subjects/SubjectSubscriptionManager$b;)V

    .line 64
    :cond_0
    return-void
.end method

.method final getLatest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    return-object v0
.end method

.method final next(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$b;
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$a;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$a;->b:[Lrx/subjects/SubjectSubscriptionManager$b;

    return-object v0
.end method

.method final observers()[Lrx/subjects/SubjectSubscriptionManager$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$a;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$a;->b:[Lrx/subjects/SubjectSubscriptionManager$b;

    return-object v0
.end method

.method final remove(Lrx/subjects/SubjectSubscriptionManager$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$b;, "Lrx/subjects/SubjectSubscriptionManager$b<TT;>;"
    const/4 v6, 0x0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/SubjectSubscriptionManager$a;

    .line 112
    .local v1, "oldState":Lrx/subjects/SubjectSubscriptionManager$a;
    iget-boolean v2, v1, Lrx/subjects/SubjectSubscriptionManager$a;->a:Z

    if-eqz v2, :cond_2

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 1168
    :cond_2
    iget-object v7, v1, Lrx/subjects/SubjectSubscriptionManager$a;->b:[Lrx/subjects/SubjectSubscriptionManager$b;

    .line 1169
    array-length v8, v7

    .line 1170
    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    aget-object v2, v7, v6

    if-ne v2, p1, :cond_3

    .line 1171
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$a;->e:Lrx/subjects/SubjectSubscriptionManager$a;

    .line 116
    .local v0, "newState":Lrx/subjects/SubjectSubscriptionManager$a;
    :goto_1
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1, v0}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1173
    .end local v0    # "newState":Lrx/subjects/SubjectSubscriptionManager$a;
    :cond_3
    if-nez v8, :cond_4

    move-object v0, v1

    .line 1174
    goto :goto_1

    .line 1176
    :cond_4
    add-int/lit8 v2, v8, -0x1

    new-array v4, v2, [Lrx/subjects/SubjectSubscriptionManager$b;

    move v5, v6

    move v3, v6

    .line 1178
    :goto_2
    if-ge v5, v8, :cond_6

    .line 1179
    aget-object v9, v7, v5

    .line 1180
    if-eq v9, p1, :cond_9

    .line 1181
    add-int/lit8 v2, v8, -0x1

    if-ne v3, v2, :cond_5

    move-object v0, v1

    .line 1182
    goto :goto_1

    .line 1184
    :cond_5
    add-int/lit8 v2, v3, 0x1

    aput-object v9, v4, v3

    .line 1178
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_2

    .line 1187
    :cond_6
    if-nez v3, :cond_7

    .line 1188
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$a;->e:Lrx/subjects/SubjectSubscriptionManager$a;

    goto :goto_1

    .line 1190
    :cond_7
    add-int/lit8 v2, v8, -0x1

    if-ge v3, v2, :cond_8

    .line 1191
    new-array v2, v3, [Lrx/subjects/SubjectSubscriptionManager$b;

    .line 1192
    invoke-static {v4, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1195
    :goto_4
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$a;

    iget-boolean v3, v1, Lrx/subjects/SubjectSubscriptionManager$a;->a:Z

    invoke-direct {v0, v3, v2}, Lrx/subjects/SubjectSubscriptionManager$a;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$b;)V

    goto :goto_1

    :cond_8
    move-object v2, v4

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_3
.end method

.method final setLatest(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method final terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$b;
    .locals 2
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$b",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 137
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 140
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$a;

    .line 141
    .local v0, "oldState":Lrx/subjects/SubjectSubscriptionManager$a;, "Lrx/subjects/SubjectSubscriptionManager$a<TT;>;"
    iget-boolean v1, v0, Lrx/subjects/SubjectSubscriptionManager$a;->a:Z

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$a;->c:[Lrx/subjects/SubjectSubscriptionManager$b;

    .line 144
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$a;->d:Lrx/subjects/SubjectSubscriptionManager$a;

    invoke-virtual {p0, v1}, Lrx/subjects/SubjectSubscriptionManager;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/SubjectSubscriptionManager$a;

    iget-object v1, v1, Lrx/subjects/SubjectSubscriptionManager$a;->b:[Lrx/subjects/SubjectSubscriptionManager$b;

    goto :goto_0
.end method
