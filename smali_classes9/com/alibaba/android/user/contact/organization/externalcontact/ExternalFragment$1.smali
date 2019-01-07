.class final Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$1;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;
.source "ExternalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$1;->b:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

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

    .line 115
    invoke-static {}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScrollChanged"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$1;->b:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->a(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$1;->b:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$1;->b:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->b(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->a(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;ZZ)V

    .line 118
    return-void
.end method
