.class final Libp$2;
.super Ljava/lang/Object;
.source "AsyncCallbackTaskQueue.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libp;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Libp$a;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Libp;


# direct methods
.method constructor <init>(Libp;Libp$a;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Libp;

    .prologue
    .line 148
    iput-object p1, p0, Libp$2;->c:Libp;

    iput-object p2, p0, Libp$2;->a:Libp$a;

    iput-object p3, p0, Libp$2;->b:Ljava/lang/Runnable;

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
    .line 179
    const/4 v0, 0x0

    .line 182
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] Msg"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "execute queue task error msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Libp$2;->a:Libp$a;

    .line 1060
    iget-wide v2, v2, Libp$a;->b:J

    .line 183
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

    .line 185
    iget-object v1, p0, Libp$2;->a:Libp$a;

    .line 2060
    iget-object v1, v1, Libp$a;->a:Lcom/alibaba/wukong/Callback;

    .line 185
    invoke-interface {v1, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Libp$2;->c:Libp;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object v1, p0, Libp$2;->a:Libp$a;

    iget-boolean v1, v1, Libp$a;->c:Z

    if-eqz v1, :cond_0

    .line 189
    const-string/jumbo v1, "queue task has been completed"

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 190
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 202
    :goto_0
    return-void

    .line 192
    :cond_0
    :try_start_2
    iget-object v1, p0, Libp$2;->a:Libp$a;

    const/4 v3, 0x1

    iput-boolean v3, v1, Libp$a;->c:Z

    .line 193
    invoke-static {}, Libp;->c()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Libp$2;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :try_start_3
    iget-object v2, p0, Libp$2;->c:Libp;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    :try_start_4
    iget-object v1, p0, Libp$2;->c:Libp;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Libp;->a(Libp;Z)Z

    .line 198
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 199
    :try_start_5
    iget-object v1, p0, Libp$2;->c:Libp;

    invoke-static {v1}, Libp;->a(Libp;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 201
    :catchall_1
    move-exception v1

    .line 5030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 201
    throw v1

    .line 198
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 148
    check-cast p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 5207
    iget-object v0, p0, Libp$2;->a:Libp$a;

    .line 6060
    iget-object v0, v0, Libp$a;->a:Lcom/alibaba/wukong/Callback;

    .line 5207
    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 148
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 6151
    const/4 v1, 0x0

    .line 6154
    :try_start_0
    const-string/jumbo v0, "[TAG] Msg"

    .line 7014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 6155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "execute queue task success msg:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Libp$2;->a:Libp$a;

    .line 7060
    iget-wide v2, v2, Libp$a;->b:J

    .line 6155
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 6157
    iget-object v0, p0, Libp$2;->a:Libp$a;

    .line 8060
    iget-object v0, v0, Libp$a;->a:Lcom/alibaba/wukong/Callback;

    .line 6157
    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 6159
    iget-object v2, p0, Libp$2;->c:Libp;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6160
    :try_start_1
    iget-object v0, p0, Libp$2;->a:Libp$a;

    iget-boolean v0, v0, Libp$a;->c:Z

    if-eqz v0, :cond_0

    .line 6161
    const-string/jumbo v0, "queue task has been completed"

    invoke-virtual {v1, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 6162
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 6174
    :goto_0
    return-void

    .line 6164
    :cond_0
    :try_start_2
    iget-object v0, p0, Libp$2;->a:Libp$a;

    const/4 v3, 0x1

    iput-boolean v3, v0, Libp$a;->c:Z

    .line 6165
    invoke-static {}, Libp;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Libp$2;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6166
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6168
    :try_start_3
    iget-object v2, p0, Libp$2;->c:Libp;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6169
    :try_start_4
    iget-object v0, p0, Libp$2;->c:Libp;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Libp;->a(Libp;Z)Z

    .line 6170
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6171
    :try_start_5
    iget-object v0, p0, Libp$2;->c:Libp;

    invoke-static {v0}, Libp;->a(Libp;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 6166
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 6173
    :catchall_1
    move-exception v0

    .line 11030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 6173
    throw v0

    .line 6170
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method
