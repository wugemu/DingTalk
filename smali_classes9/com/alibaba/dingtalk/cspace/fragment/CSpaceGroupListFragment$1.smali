.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;
.super Ljava/lang/Object;
.source "CSpaceGroupListFragment.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 2
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    const-string/jumbo v1, "cspace_dentry_chooser_cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget v0, p1, Lyc;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 126
    :cond_1
    return-void
.end method
