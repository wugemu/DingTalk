.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->K()V
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
    .line 1406
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    sget v0, Laxo$i;->dt_cmail_network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1414
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->l(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$9;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->u(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 1419
    :cond_2
    return-void
.end method
