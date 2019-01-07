.class final Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;
.source "CrmContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;->b:Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;->b:Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->c(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)Lfja;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;->b:Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;->b:Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->a(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;->b:Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->b(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lfja;->a(Landroid/app/Activity;JLjava/lang/String;Z)V

    .line 95
    return-void
.end method
