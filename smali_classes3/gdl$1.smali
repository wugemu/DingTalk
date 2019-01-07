.class final Lgdl$1;
.super Ljava/lang/Object;
.source "SpaceAclPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdl;->a()V
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
    .line 83
    iput-object p1, p0, Lgdl$1;->a:Lgdl;

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
    .line 83
    check-cast p1, Lgnv;

    .line 2086
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 3055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2086
    invoke-interface {v0}, Lgdj$b;->H_()V

    .line 2088
    if-nez p1, :cond_0

    .line 2089
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 4055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2089
    iget-object v1, p0, Lgdl$1;->a:Lgdl;

    .line 5055
    iget-object v1, v1, Lgdl;->a:Ljava/util/List;

    .line 2089
    invoke-interface {v0, v1}, Lgdj$b;->d(Ljava/util/List;)V

    .line 2090
    :goto_0
    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 5095
    iget-wide v2, p1, Lgnv;->a:J

    .line 6055
    iput-wide v2, v0, Lgdl;->d:J

    .line 2095
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 7055
    iget-object v1, v0, Lgdl;->c:Ljava/lang/Object;

    .line 2095
    monitor-enter v1

    .line 2096
    :try_start_0
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 7119
    iget-object v2, p1, Lgnv;->d:Ljava/util/List;

    .line 8055
    iput-object v2, v0, Lgdl;->a:Ljava/util/List;

    .line 2097
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2099
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 9055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 2099
    iget-object v1, p0, Lgdl$1;->a:Lgdl;

    .line 10055
    iget-object v1, v1, Lgdl;->a:Ljava/util/List;

    .line 2099
    invoke-interface {v0, v1}, Lgdj$b;->d(Ljava/util/List;)V

    .line 2101
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    invoke-static {v0}, Lgdl;->a(Lgdl;)V

    goto :goto_0

    .line 2097
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
    .line 111
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 1055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 111
    invoke-interface {v0}, Lgdj$b;->H_()V

    .line 112
    iget-object v0, p0, Lgdl$1;->a:Lgdl;

    .line 2055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 112
    invoke-interface {v0, p1, p2}, Lgdj$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 107
    return-void
.end method
