.class final Libp$1;
.super Ljava/lang/Object;
.source "AsyncCallbackTaskQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libp;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Libp$a;

.field final synthetic b:Libp;


# direct methods
.method constructor <init>(Libp;Libp$a;)V
    .locals 0
    .param p1, "this$0"    # Libp;

    .prologue
    .line 115
    iput-object p1, p0, Libp$1;->b:Libp;

    iput-object p2, p0, Libp$1;->a:Libp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 121
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "execute queue task timeout msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Libp$1;->a:Libp$a;

    .line 1060
    iget-wide v2, v2, Libp$a;->b:J

    .line 122
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Libp$1;->b:Libp;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    iget-object v1, p0, Libp$1;->a:Libp$a;

    iget-boolean v1, v1, Libp$a;->c:Z

    if-eqz v1, :cond_0

    .line 126
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_2
    iget-object v1, p0, Libp$1;->a:Libp$a;

    const/4 v3, 0x1

    iput-boolean v3, v1, Libp$a;->c:Z

    .line 129
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :try_start_3
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v1

    new-instance v2, Libp$1$1;

    invoke-direct {v2, p0}, Libp$1$1;-><init>(Libp$1;)V

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    :catchall_1
    move-exception v1

    .line 4030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 141
    throw v1
.end method
