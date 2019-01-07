.class final Lgoz$4;
.super Ljava/lang/Object;
.source "CSpaceTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoz;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lgoz;


# direct methods
.method constructor <init>(Lgoz;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lgoz;

    .prologue
    .line 356
    iput-object p1, p0, Lgoz$4;->b:Lgoz;

    iput-object p2, p0, Lgoz$4;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 361
    .local v1, "msg":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "CSpaceTaskController.cancelTask"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 362
    iget-object v3, p0, Lgoz$4;->b:Lgoz;

    invoke-static {v3, v1}, Lgoz;->a(Lgoz;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V

    .line 365
    iget-object v3, p0, Lgoz$4;->b:Lgoz;

    iget-object v4, p0, Lgoz$4;->a:Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lgoz;->a(Lgoz;Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/Object;)V

    .line 368
    iget-object v3, p0, Lgoz$4;->b:Lgoz;

    .line 1050
    iget-object v3, v3, Lgoz;->d:Lgpf$b;

    .line 368
    iget-object v4, p0, Lgoz$4;->a:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lgpf$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const-string/jumbo v3, ", null key. ERROR!"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 371
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "CSpaceTaskController"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :cond_0
    :try_start_1
    const-string/jumbo v3, ", key: "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 377
    iget-object v3, p0, Lgoz$4;->b:Lgoz;

    invoke-static {v3, v0}, Lgoz;->a(Lgoz;Ljava/lang/String;)Lgpf;

    move-result-object v2

    .line 378
    .local v2, "tempTask":Lgpf;
    if-nez v2, :cond_1

    .line 379
    const-string/jumbo v3, ", task not found, return"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 380
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "CSpaceTaskController"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "msg":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "tempTask":Lgpf;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 385
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "msg":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v2    # "tempTask":Lgpf;
    :cond_1
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v2, v3}, Lgpf;->a(Z)V

    .line 386
    const-string/jumbo v3, ", set task canceled"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 389
    iget-boolean v3, v2, Lgpf;->e:Z

    if-nez v3, :cond_3

    .line 390
    iget-object v3, p0, Lgoz$4;->b:Lgoz;

    .line 2106
    if-eqz v2, :cond_2

    .line 2109
    iget-object v4, v3, Lgoz;->a:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2110
    :try_start_3
    iget-object v3, v3, Lgoz;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2111
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 391
    :cond_2
    :try_start_4
    const-string/jumbo v3, ", task is waiting, remove it"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 396
    :goto_1
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "CSpaceTaskController"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2111
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 393
    :cond_3
    const-string/jumbo v3, ", task is running"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
