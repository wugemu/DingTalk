.class final Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;
.super Ljava/lang/Object;
.source "MyCustomerFragment.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

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
    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;Z)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;Ljava/util/List;Z)V

    goto :goto_0
.end method
