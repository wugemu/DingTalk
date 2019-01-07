.class final Lgdl$3;
.super Ljava/lang/Object;
.source "SpaceAclPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdl;->a(Ljava/util/List;I)V
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
    .line 212
    iput-object p1, p0, Lgdl$3;->a:Lgdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 212
    check-cast p1, Ljava/util/List;

    .line 2215
    iget-object v0, p0, Lgdl$3;->a:Lgdl;

    .line 3055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2215
    invoke-interface {v0}, Lgdj$b;->e()V

    .line 2217
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2218
    :cond_0
    :goto_0
    return-void

    .line 2221
    :cond_1
    iget-object v0, p0, Lgdl$3;->a:Lgdl;

    .line 4055
    iget-object v1, v0, Lgdl;->c:Ljava/lang/Object;

    .line 2221
    monitor-enter v1

    .line 2222
    :try_start_0
    iget-object v0, p0, Lgdl$3;->a:Lgdl;

    .line 5055
    iget-object v0, v0, Lgdl;->a:Ljava/util/List;

    .line 2222
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    iget-object v0, p0, Lgdl$3;->a:Lgdl;

    .line 6055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2225
    iget-object v1, p0, Lgdl$3;->a:Lgdl;

    .line 7055
    iget-object v1, v1, Lgdl;->a:Ljava/util/List;

    .line 2225
    invoke-interface {v0, v1}, Lgdj$b;->d(Ljava/util/List;)V

    .line 2226
    iget-object v0, p0, Lgdl$3;->a:Lgdl;

    invoke-static {v0}, Lgdl;->a(Lgdl;)V

    goto :goto_0

    .line 2223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lgdl$3;->a:Lgdl;

    .line 1055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 236
    invoke-interface {v0}, Lgdj$b;->e()V

    .line 237
    iget-object v0, p0, Lgdl$3;->a:Lgdl;

    .line 2055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 237
    invoke-interface {v0, p1, p2}, Lgdj$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 232
    return-void
.end method
