.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1$1;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;->run()V
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
        "Lhhd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    check-cast p1, Ljava/util/List;

    .line 1083
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    :cond_0
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "start empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    :goto_0
    return-void

    .line 1087
    :cond_1
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1088
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->realStart(Ljava/util/List;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 100
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 95
    return-void
.end method
