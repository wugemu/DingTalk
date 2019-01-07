.class final Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;
.source "OrgContactNewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;->b:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-static {}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScrollChanged"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;->b:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;->b:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;->b:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->b(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;ZZ)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;->b:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->c(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcne;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 216
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;->b:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->c(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lcne;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcne;->onScroll(Landroid/widget/AbsListView;III)V

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 223
    return-void
.end method
