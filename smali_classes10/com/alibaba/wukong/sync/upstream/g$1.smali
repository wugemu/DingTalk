.class final Lcom/alibaba/wukong/sync/upstream/g$1;
.super Ljava/lang/Object;
.source "SyncTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/upstream/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/upstream/g;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/upstream/g;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/wukong/sync/upstream/g$1;->a:Lcom/alibaba/wukong/sync/upstream/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x64

    .line 143
    sget-object v4, Lcom/alibaba/wukong/sync/upstream/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/sync/upstream/g$c;

    .line 144
    .local v3, "next":Lcom/alibaba/wukong/sync/upstream/g$c;
    if-nez v3, :cond_5

    .line 146
    const/16 v4, 0x64

    invoke-static {v4}, Lifs;->a(I)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "dbList":Ljava/util/List;, "Ljava/util/List<Lift;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$1;->a:Lcom/alibaba/wukong/sync/upstream/g;

    invoke-virtual {v4}, Lcom/alibaba/wukong/sync/upstream/g;->c()V

    .line 168
    .end local v0    # "dbList":Ljava/util/List;, "Ljava/util/List<Lift;>;"
    :goto_0
    return-void

    .line 153
    .restart local v0    # "dbList":Ljava/util/List;, "Ljava/util/List<Lift;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lift;

    .line 154
    .local v2, "info":Lift;
    if-eqz v2, :cond_2

    .line 156
    sget-object v4, Lcom/alibaba/wukong/sync/upstream/g;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v5, Lcom/alibaba/wukong/sync/upstream/g$c;

    invoke-direct {v5, v2}, Lcom/alibaba/wukong/sync/upstream/g$c;-><init>(Lift;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v2    # "info":Lift;
    :cond_3
    sget-object v4, Lcom/alibaba/wukong/sync/upstream/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "next":Lcom/alibaba/wukong/sync/upstream/g$c;
    check-cast v3, Lcom/alibaba/wukong/sync/upstream/g$c;

    .line 159
    .restart local v3    # "next":Lcom/alibaba/wukong/sync/upstream/g$c;
    if-nez v3, :cond_4

    .line 161
    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$1;->a:Lcom/alibaba/wukong/sync/upstream/g;

    invoke-virtual {v4}, Lcom/alibaba/wukong/sync/upstream/g;->c()V

    goto :goto_0

    .line 163
    :cond_4
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->e()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 166
    .end local v0    # "dbList":Ljava/util/List;, "Ljava/util/List<Lift;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->e()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
