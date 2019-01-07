.class final Lcom/uc/webview/export/internal/setup/aj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Landroid/webkit/ValueCallback;

.field final synthetic c:Lcom/uc/webview/export/internal/setup/ae;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ae;Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 779
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aj;->c:Lcom/uc/webview/export/internal/setup/ae;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/aj;->b:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/aj;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 779
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/SetupTask;->getStat()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/SetupTask;->getStat()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/aj;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/SetupTask;->getStat()Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    move v3, v0

    :goto_1
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    iget v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    if-ne v2, v4, :cond_5

    move v2, v0

    :goto_2
    if-eqz v3, :cond_2

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v3

    iget v3, v3, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    if-eq v3, v4, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/SetupTask;->getStat()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "sdk_stp_exc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aj;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/aj;->b:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_6

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statAKV(Landroid/util/Pair;)V

    goto :goto_3

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    iput-object v0, p1, Lcom/uc/webview/export/utility/SetupTask;->mStat:Landroid/util/Pair;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aj;->b:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aj;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aj;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method
