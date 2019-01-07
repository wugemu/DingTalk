.class final Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iput p2, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    if-eqz v0, :cond_0

    .line 573
    iget v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->a:I

    if-nez v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$9;->b:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->x:Lcom/alibaba/android/search/widget/LoadingStatView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    goto :goto_0
.end method
