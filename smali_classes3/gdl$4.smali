.class final Lgdl$4;
.super Ljava/lang/Object;
.source "SpaceAclPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdl;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lgnu;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdl;


# direct methods
.method constructor <init>(Lgdl;)V
    .locals 0
    .param p1, "this$0"    # Lgdl;

    .prologue
    .line 251
    iput-object p1, p0, Lgdl$4;->a:Lgdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 251
    check-cast p1, Ljava/util/List;

    .line 2254
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 3055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2254
    invoke-interface {v0}, Lgdj$b;->e()V

    .line 2256
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 4055
    iget-object v0, v0, Lgdl;->a:Ljava/util/List;

    .line 2256
    if-nez v0, :cond_1

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 2260
    :cond_1
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 5055
    iget-object v2, v0, Lgdl;->c:Ljava/lang/Object;

    .line 2260
    monitor-enter v2

    .line 2261
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2262
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 6055
    iget-object v0, v0, Lgdl;->a:Ljava/util/List;

    .line 2262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 2263
    if-eqz v0, :cond_2

    .line 6235
    iget-boolean v1, v0, Lgnu;->f:Z

    .line 2263
    if-nez v1, :cond_2

    .line 2267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 2268
    if-eqz v1, :cond_3

    .line 7195
    iget-object v1, v1, Lgnu;->a:Ljava/lang/String;

    .line 8195
    iget-object v6, v0, Lgnu;->a:Ljava/lang/String;

    .line 2272
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2273
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2279
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2278
    :cond_4
    :try_start_1
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 9055
    iget-object v0, v0, Lgdl;->a:Ljava/util/List;

    .line 2278
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2279
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2281
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v0

    invoke-virtual {v0}, Lgdm;->a()V

    .line 2282
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 10055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2282
    iget-object v1, p0, Lgdl$4;->a:Lgdl;

    .line 11055
    iget-object v1, v1, Lgdl;->a:Ljava/util/List;

    .line 2282
    invoke-interface {v0, v1}, Lgdj$b;->d(Ljava/util/List;)V

    .line 2283
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    invoke-static {v0}, Lgdl;->a(Lgdl;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 1055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 293
    invoke-interface {v0}, Lgdj$b;->e()V

    .line 294
    iget-object v0, p0, Lgdl$4;->a:Lgdl;

    .line 2055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 294
    invoke-interface {v0, p1, p2}, Lgdj$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 289
    return-void
.end method
