.class final Lgoz$1$1;
.super Ljava/lang/Object;
.source "CSpaceTaskController.java"

# interfaces
.implements Lgpf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoz$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgoz$1;


# direct methods
.method constructor <init>(Lgoz$1;)V
    .locals 0
    .param p1, "this$1"    # Lgoz$1;

    .prologue
    .line 257
    iput-object p1, p0, Lgoz$1$1;->a:Lgoz$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgpf;)V
    .locals 3
    .param p1, "task"    # Lgpf;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Lgoz$1$1;->a:Lgoz$1;

    iget-object v0, v0, Lgoz$1;->d:Lgoz;

    .line 1332
    if-eqz p1, :cond_0

    .line 1335
    invoke-static {}, Lgoz;->c()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lgoz$3;

    invoke-direct {v2, v0, p1}, Lgoz$3;-><init>(Lgoz;Lgpf;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 261
    :cond_0
    return-void
.end method
