.class final Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;
.source "CustomerFollowerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;->b:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;->b:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;->b:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;->b:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->b(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;ZZ)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;->b:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->c(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcne;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 144
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;->b:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->c(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcne;->onScroll(Landroid/widget/AbsListView;III)V

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 151
    return-void
.end method
