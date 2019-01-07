.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;
.super Landroid/os/Handler;
.source "CSpaceRenameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .line 1051
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 215
    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Lgdg;

    .line 226
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Lgdg;

    .line 227
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Lgdg;

    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Lgdg;

    .line 222
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
