.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$3;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 602
    return-void
.end method

.method public final onLoadStarted()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 585
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onPreloadSuccess()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 572
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
