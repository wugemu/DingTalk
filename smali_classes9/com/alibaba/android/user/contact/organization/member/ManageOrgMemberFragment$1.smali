.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;
.source "ManageOrgMemberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;->b:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;->b:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;->b:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;->b:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcne;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 222
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;->b:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcne;->onScroll(Landroid/widget/AbsListView;III)V

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 229
    return-void
.end method
