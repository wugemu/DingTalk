.class final Lgdl$2;
.super Ljava/lang/Object;
.source "SpaceAclPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdl;->b(Ljava/util/List;I)V
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
        "Lgnv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdl;


# direct methods
.method constructor <init>(Lgdl;)V
    .locals 0
    .param p1, "this$0"    # Lgdl;

    .prologue
    .line 126
    iput-object p1, p0, Lgdl$2;->a:Lgdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 126
    check-cast p1, Lgnv;

    .line 2129
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 3055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2129
    invoke-interface {v0}, Lgdj$b;->e()V

    .line 2130
    if-nez p1, :cond_1

    .line 2131
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 4055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2131
    const-string/jumbo v1, "500"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->space_share_add_member_fail:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgdj$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    :cond_0
    :goto_0
    return-void

    .line 4119
    :cond_1
    iget-object v0, p1, Lgnv;->d:Ljava/util/List;

    .line 2135
    if-eqz v0, :cond_0

    .line 5119
    iget-object v0, p1, Lgnv;->d:Ljava/util/List;

    .line 2135
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2139
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 6095
    iget-wide v2, p1, Lgnv;->a:J

    .line 7055
    iput-wide v2, v0, Lgdl;->d:J

    .line 2141
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 8055
    iget-object v1, v0, Lgdl;->c:Ljava/lang/Object;

    .line 2141
    monitor-enter v1

    .line 2142
    :try_start_0
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 9055
    iget-object v0, v0, Lgdl;->a:Ljava/util/List;

    .line 9119
    iget-object v2, p1, Lgnv;->d:Ljava/util/List;

    .line 2142
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2145
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 10055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2145
    iget-object v1, p0, Lgdl$2;->a:Lgdl;

    .line 11055
    iget-object v1, v1, Lgdl;->a:Ljava/util/List;

    .line 2145
    invoke-interface {v0, v1}, Lgdj$b;->d(Ljava/util/List;)V

    .line 2146
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    invoke-static {v0}, Lgdl;->a(Lgdl;)V

    goto :goto_0

    .line 2143
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
    .line 156
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 1055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 156
    invoke-interface {v0}, Lgdj$b;->e()V

    .line 157
    iget-object v0, p0, Lgdl$2;->a:Lgdl;

    .line 2055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 157
    invoke-interface {v0, p1, p2}, Lgdj$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 152
    return-void
.end method
