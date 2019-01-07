.class final Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;
.super Ljava/lang/Object;
.source "LocalContactSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 125
    const-string/jumbo v0, "search_more_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "mobilecontact"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->a(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lenx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->b(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;-><init>(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;)V

    .line 1108
    invoke-static {v4, v4, v0, v1}, Lenr;->a(IILjava/lang/String;Lcca;)V

    .line 144
    :cond_0
    return-void
.end method
