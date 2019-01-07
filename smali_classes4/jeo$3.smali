.class final Ljeo$3;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljeo;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljeo$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljeo;->d(I)Ljbe;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljeo;->d(I)Ljbe;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    const/4 v3, 0x2

    :try_start_2
    invoke-static {v3}, Ljeo;->d(I)Ljbe;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    :try_start_3
    iget-object v3, p0, Ljeo$3;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljbe;->c(Landroid/content/Context;)V

    iget-object v3, p0, Ljeo$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljbe;->c(Landroid/content/Context;)V

    iget-object v3, p0, Ljeo$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Ljbe;->c(Landroid/content/Context;)V

    iget-object v3, p0, Ljeo$3;->a:Landroid/content/Context;

    invoke-static {v3}, Ljcr;->a(Landroid/content/Context;)V

    iget-object v3, p0, Ljeo$3;->a:Landroid/content/Context;

    invoke-static {v3}, Ljcp;->a(Landroid/content/Context;)V

    invoke-static {}, Ljbe;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljbe;->b()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljbe;->b()V

    :cond_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v0}, Ljbe;->b()V

    :cond_2
    :goto_3
    return-void

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    :try_start_4
    const-string/jumbo v4, "Lg"

    const-string/jumbo v5, "proL"

    invoke-static {v0, v4, v5}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljbe;->b()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljbe;->b()V

    :cond_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljbe;->b()V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljbe;->b()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljbe;->b()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljbe;->b()V

    :cond_7
    throw v0

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljbe;->b()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljbe;->b()V

    :cond_a
    if-eqz v0, :cond_2

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5

    :catchall_2
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_1

    :catch_6
    move-exception v1

    move-object v1, v0

    goto/16 :goto_1
.end method
