.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$1;
.super Ljava/lang/Object;
.source "CSpaceOnlineEditStatisticFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;

    .line 105
    .local v0, "userModel":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1317
    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->a:J

    .line 106
    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 108
    :cond_0
    return-void
.end method
