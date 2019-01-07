.class final Ljeq$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljeq;->a(Landroid/content/Context;Ljej;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljej;

.field final synthetic c:Z

.field final synthetic d:Ljeq;


# direct methods
.method constructor <init>(Ljeq;Landroid/content/Context;Ljej;Z)V
    .locals 0

    iput-object p1, p0, Ljeq$1;->d:Ljeq;

    iput-object p2, p0, Ljeq$1;->a:Landroid/content/Context;

    iput-object p3, p0, Ljeq$1;->b:Ljej;

    iput-boolean p4, p0, Ljeq$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Ljbn;

    iget-object v0, p0, Ljeq$1;->a:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljbn;-><init>(Landroid/content/Context;Z)V

    iget-object v5, p0, Ljeq$1;->b:Ljej;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    if-eqz v5, :cond_2

    :try_start_2
    iget-object v0, v4, Ljbn;->a:Ljbg;

    if-nez v0, :cond_0

    iget-object v0, v4, Ljbn;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljbn;->a(Landroid/content/Context;Z)Ljbg;

    move-result-object v0

    iput-object v0, v4, Ljbn;->a:Ljbg;

    :cond_0
    invoke-virtual {v5}, Ljej;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljej;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v4, Ljbn;->a:Ljbg;

    const-class v7, Ljej;

    .line 2000
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Ljbg;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    iget-object v0, v4, Ljbn;->a:Ljbg;

    .line 3000
    invoke-virtual {v0, v5}, Ljbg;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, p0, Ljeq$1;->c:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v0, Lcom/loc/aq;

    iget-object v2, p0, Ljeq$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/aq;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljbo;

    invoke-direct {v2}, Ljbo;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljbo;->c(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljbo;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljbo;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/aq;->a(Ljbo;)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Ljeq$1;->d:Ljeq;

    invoke-static {v0}, Ljeq;->a(Ljeq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljeo;->a(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_1
    return-void

    .line 1000
    :cond_4
    :try_start_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljej;

    invoke-virtual {v0, v5}, Ljej;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, v4, Ljbn;->a:Ljbg;

    .line 4000
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v5, v1}, Ljbg;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "sd"

    const-string/jumbo v2, "it"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v3

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 1000
    goto :goto_2

    .line 0
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
.end method
