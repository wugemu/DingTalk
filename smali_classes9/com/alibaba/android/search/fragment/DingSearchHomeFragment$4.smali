.class final Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$4;
.super Ljava/lang/Object;
.source "DingSearchHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$4;->b:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$4;->b:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/activity/DingSearchActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$4;->a:Ljava/lang/String;

    .line 1113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    if-nez v2, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
