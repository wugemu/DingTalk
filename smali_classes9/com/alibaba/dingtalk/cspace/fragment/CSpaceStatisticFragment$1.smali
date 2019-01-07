.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;
.super Ljava/lang/Object;
.source "CSpaceStatisticFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

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
    .line 132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;

    .line 137
    .local v0, "model":Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;->getUid()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    goto :goto_0
.end method
