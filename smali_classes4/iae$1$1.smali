.class final Liae$1$1;
.super Ljava/lang/Object;
.source "IMTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liae$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liae$1;


# direct methods
.method constructor <init>(Liae$1;)V
    .locals 0
    .param p1, "this$1"    # Liae$1;

    .prologue
    .line 50
    .local p0, "this":Liae$1$1;, "Liae$1$1;"
    iput-object p1, p0, Liae$1$1;->a:Liae$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    .local p0, "this":Liae$1$1;, "Liae$1$1;"
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2}, Liae;->access$000(Liae;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "trace3":Lhzv;
    :try_start_0
    const-string/jumbo v2, "[TAG] IMTask exp"

    .line 3014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 101
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2}, Liae;->access$300(Liae;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Liae$1$1$3;

    invoke-direct {v3, p0, p1, p2}, Liae$1$1$3;-><init>(Liae$1$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 128
    .end local v1    # "trace3":Lhzv;
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v1    # "trace3":Lhzv;
    :catchall_0
    move-exception v2

    .line 4030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 116
    throw v2

    .line 119
    .end local v1    # "trace3":Lhzv;
    :cond_1
    new-instance v0, Liae$b;

    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-direct {v0, v2}, Liae$b;-><init>(Liae;)V

    .line 120
    .local v0, "result":Liae$b;, "Liae<TV;TT;>.b;"
    const/4 v2, 0x0

    iput-boolean v2, v0, Liae$b;->a:Z

    .line 121
    iput-object p1, v0, Liae$b;->b:Ljava/lang/String;

    .line 122
    iput-object p2, v0, Liae$b;->c:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2}, Liae;->access$100(Liae;)Z

    move-result v2

    iput-boolean v2, v0, Liae$b;->e:Z

    .line 124
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2, v0}, Liae;->access$200(Liae;Liae$b;)V

    .line 125
    const-string/jumbo v2, "408"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Liae;->access$102(Liae;Z)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 85
    .local p0, "this":Liae$1$1;, "Liae$1$1;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Liae;->access$500()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Liae$1$1$2;

    invoke-direct {v1, p0, p1, p2}, Liae$1$1$2;-><init>(Liae$1$1;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
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
    .line 54
    .local p0, "this":Liae$1$1;, "Liae$1$1;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2}, Liae;->access$000(Liae;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "trace2":Lhzv;
    :try_start_0
    const-string/jumbo v2, "[TAG] IMTask suc"

    .line 1014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 58
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2}, Liae;->access$300(Liae;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Liae$1$1$1;

    invoke-direct {v3, p0, p1}, Liae$1$1$1;-><init>(Liae$1$1;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 81
    .end local v1    # "trace2":Lhzv;
    :goto_0
    return-void

    .line 71
    .restart local v1    # "trace2":Lhzv;
    :catchall_0
    move-exception v2

    .line 2030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 71
    throw v2

    .line 74
    .end local v1    # "trace2":Lhzv;
    :cond_0
    new-instance v0, Liae$b;

    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-direct {v0, v2}, Liae$b;-><init>(Liae;)V

    .line 75
    .local v0, "result":Liae$b;, "Liae<TV;TT;>.b;"
    const/4 v2, 0x1

    iput-boolean v2, v0, Liae$b;->a:Z

    .line 76
    const-string/jumbo v2, "200"

    iput-object v2, v0, Liae$b;->b:Ljava/lang/String;

    .line 77
    iput-object p1, v0, Liae$b;->d:Ljava/lang/Object;

    .line 78
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2}, Liae;->access$100(Liae;)Z

    move-result v2

    iput-boolean v2, v0, Liae$b;->e:Z

    .line 79
    iget-object v2, p0, Liae$1$1;->a:Liae$1;

    iget-object v2, v2, Liae$1;->a:Liae;

    invoke-static {v2, v0}, Liae;->access$200(Liae;Liae$b;)V

    goto :goto_0
.end method
