.class final Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$1;
.super Ljava/lang/Object;
.source "SearchCustomerFragment.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;Ljava/lang/String;Z)V

    .line 108
    :cond_0
    return-void
.end method
