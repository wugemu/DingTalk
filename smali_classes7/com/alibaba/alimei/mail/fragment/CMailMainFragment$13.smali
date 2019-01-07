.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1673
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 1674
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1653
    check-cast p1, Lxv$a;

    .line 2656
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2659
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2660
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;Lxv$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1653
    :cond_0
    return-void
.end method
