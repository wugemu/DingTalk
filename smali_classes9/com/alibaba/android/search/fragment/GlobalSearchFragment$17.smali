.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$17;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$17;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 613
    const-string/jumbo v0, "pref_key_first_show_msg_narrow_guide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 614
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$17;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$17;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->b()V

    .line 616
    return-void
.end method
